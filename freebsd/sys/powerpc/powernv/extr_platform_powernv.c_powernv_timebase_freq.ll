; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_platform_powernv.c_powernv_timebase_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_platform_powernv.c_powernv_timebase_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuref = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"cpus\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"timebase-frequency\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Unable to determine timebase frequency!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cpuref*)* @powernv_timebase_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @powernv_timebase_freq(i32 %0, %struct.cpuref* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpuref*, align 8
  %6 = alloca [8 x i8], align 1
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.cpuref* %1, %struct.cpuref** %5, align 8
  store i64 -1, i64* %11, align 8
  %12 = call i64 @OF_peer(i64 0)
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = call i64 @OF_child(i64 %13)
  store i64 %14, i64* %8, align 8
  br label %15

15:                                               ; preds = %29, %2
  %16 = load i64, i64* %8, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %21 = call i32 @OF_getprop(i64 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %20, i32 8)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %32

29:                                               ; preds = %24, %18
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @OF_peer(i64 %30)
  store i64 %31, i64* %8, align 8
  br label %15

32:                                               ; preds = %28, %15
  %33 = load i64, i64* %8, align 8
  %34 = call i64 @OF_child(i64 %33)
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %50, %32
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %41 = call i32 @OF_getprop(i64 %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %40, i32 8)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %53

49:                                               ; preds = %44, %38
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %7, align 8
  %52 = call i64 @OF_peer(i64 %51)
  store i64 %52, i64* %7, align 8
  br label %35

53:                                               ; preds = %48, %35
  %54 = load i64, i64* %7, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 512000000, i32* %3, align 4
  br label %67

57:                                               ; preds = %53
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @OF_getencprop(i64 %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64* %11, i32 8)
  %60 = load i64, i64* %11, align 8
  %61 = icmp sle i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = call i32 @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %57
  %65 = load i64, i64* %11, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %56
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i32 @OF_getprop(i64, i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @OF_getencprop(i64, i8*, i64*, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
