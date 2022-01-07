; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smu_count_fans.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smu_count_fans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_softc = type { i32* }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"rpm-fans\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"pwm-fans\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"fans\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"WARNING: No fans detected!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @smu_count_fans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_count_fans(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.smu_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [32 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @ofw_bus_get_node(i32 %10)
  store i64 %11, i64* %6, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.smu_softc* @device_get_softc(i32 %12)
  store %struct.smu_softc* %13, %struct.smu_softc** %4, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i64 @OF_child(i64 %14)
  store i64 %15, i64* %7, align 8
  br label %16

16:                                               ; preds = %61, %1
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %64

19:                                               ; preds = %16
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %21 = call i32 @memset(i8* %20, i32 0, i32 32)
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %24 = call i32 @OF_getprop(i64 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %23, i32 32)
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %26 = call i64 @strncmp(i8* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 9)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %19
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %30 = call i64 @strncmp(i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 9)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %34 = call i64 @strncmp(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 5)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %32, %28, %19
  %37 = load i64, i64* %7, align 8
  %38 = call i64 @OF_child(i64 %37)
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %56, %36
  %40 = load i64, i64* %5, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  %45 = load %struct.smu_softc*, %struct.smu_softc** %4, align 8
  %46 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load i32, i32* %3, align 4
  %51 = load i64, i64* %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sub nsw i32 %52, 1
  %54 = call i32 @smu_fill_fan_prop(i32 %50, i64 %51, i32 %53)
  br label %55

55:                                               ; preds = %49, %42
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %5, align 8
  %58 = call i64 @OF_peer(i64 %57)
  store i64 %58, i64* %5, align 8
  br label %39

59:                                               ; preds = %39
  br label %60

60:                                               ; preds = %59, %32
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %7, align 8
  %63 = call i64 @OF_peer(i64 %62)
  store i64 %63, i64* %7, align 8
  br label %16

64:                                               ; preds = %16
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @device_printf(i32 %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %72

70:                                               ; preds = %64
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %70, %67
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i64 @ofw_bus_get_node(i32) #1

declare dso_local %struct.smu_softc* @device_get_softc(i32) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @OF_getprop(i64, i8*, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @smu_fill_fan_prop(i32, i64, i32) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
