; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_syscalls.c_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_syscalls.c_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlat = type { i8*, i32 }

@lookup.tmp = internal global [16 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"0%o\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Unknown lookup base\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.xlat*, i32, i32)* @lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lookup(%struct.xlat* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.xlat*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xlat* %0, %struct.xlat** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  br label %8

8:                                                ; preds = %24, %3
  %9 = load %struct.xlat*, %struct.xlat** %5, align 8
  %10 = getelementptr inbounds %struct.xlat, %struct.xlat* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %8
  %14 = load %struct.xlat*, %struct.xlat** %5, align 8
  %15 = getelementptr inbounds %struct.xlat, %struct.xlat* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.xlat*, %struct.xlat** %5, align 8
  %21 = getelementptr inbounds %struct.xlat, %struct.xlat* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %4, align 8
  br label %41

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.xlat*, %struct.xlat** %5, align 8
  %26 = getelementptr inbounds %struct.xlat, %struct.xlat* %25, i32 1
  store %struct.xlat* %26, %struct.xlat** %5, align 8
  br label %8

27:                                               ; preds = %8
  %28 = load i32, i32* %7, align 4
  switch i32 %28, label %38 [
    i32 8, label %29
    i32 16, label %32
    i32 10, label %35
  ]

29:                                               ; preds = %27
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @sprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @lookup.tmp, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %40

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @sprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @lookup.tmp, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %40

35:                                               ; preds = %27
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @sprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @lookup.tmp, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  br label %40

38:                                               ; preds = %27
  %39 = call i32 @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %35, %32, %29
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @lookup.tmp, i64 0, i64 0), i8** %4, align 8
  br label %41

41:                                               ; preds = %40, %19
  %42 = load i8*, i8** %4, align 8
  ret i8* %42
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
