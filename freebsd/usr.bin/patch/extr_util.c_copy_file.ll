; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_util.c_copy_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_util.c_copy_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"internal error, can't reopen %s\00", align 1
@buf = common dso_local global i32 0, align 4
@buf_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"write to %s failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_file(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* @O_CREAT, align 4
  %11 = load i32, i32* @O_TRUNC, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @O_WRONLY, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @open(i8* %9, i32 %14, i32 438)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %51

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* @O_RDONLY, align 4
  %22 = call i32 @open(i8* %20, i32 %21, i32 0)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @pfatal(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %25, %19
  br label %29

29:                                               ; preds = %45, %28
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @buf, align 4
  %32 = load i32, i32* @buf_size, align 4
  %33 = call i64 @read(i32 %30, i32 %31, i32 %32)
  store i64 %33, i64* %8, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @buf, align 4
  %38 = load i64, i64* %8, align 8
  %39 = call i64 @write(i32 %36, i32 %37, i64 %38)
  %40 = load i64, i64* %8, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @pfatal(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %42, %35
  br label %29

46:                                               ; preds = %29
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @close(i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @close(i32 %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %46, %18
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @pfatal(i8*, i8*) #1

declare dso_local i64 @read(i32, i32, i32) #1

declare dso_local i64 @write(i32, i32, i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
