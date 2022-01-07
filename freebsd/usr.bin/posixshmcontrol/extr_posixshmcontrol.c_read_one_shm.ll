; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/posixshmcontrol/extr_posixshmcontrol.c_read_one_shm.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/posixshmcontrol/extr_posixshmcontrol.c_read_one_shm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"open %s\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"short write to stdout\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"read from %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @read_one_shm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_one_shm(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [4096 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 1, i32* %7, align 4
  %8 = load i8*, i8** %2, align 8
  %9 = load i32, i32* @O_RDONLY, align 4
  %10 = call i32 @shm_open(i8* %8, i32 %9, i32 0)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @warn(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %14)
  br label %48

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %37, %16
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %20 = call i64 @read(i32 %18, i8* %19, i32 4096)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %25 = load i64, i64* %4, align 8
  %26 = load i32, i32* @stdout, align 4
  %27 = call i64 @fwrite(i8* %24, i32 1, i64 %25, i32 %26)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = call i32 @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %48

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %17
  %35 = load i64, i64* %4, align 8
  %36 = icmp eq i64 %35, 4096
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %17

38:                                               ; preds = %34
  %39 = load i64, i64* %4, align 8
  %40 = icmp sge i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i64, i64* %4, align 8
  %43 = icmp slt i64 %42, 4096
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  br label %48

45:                                               ; preds = %41, %38
  %46 = load i8*, i8** %2, align 8
  %47 = call i32 @warn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %45, %44, %31, %13
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @close(i32 %49)
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32 @shm_open(i8*, i32, i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i64 @fwrite(i8*, i32, i64, i32) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
