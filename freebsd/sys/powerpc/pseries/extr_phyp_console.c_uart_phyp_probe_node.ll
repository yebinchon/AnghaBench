; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_console.c_uart_phyp_probe_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_console.c_uart_phyp_probe_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_phyp_softc = type { i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"vty\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"hvterm1\00", align 1
@HVTERM1 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"hvterm-protocol\00", align 1
@HVTERMPROT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_phyp_softc*)* @uart_phyp_probe_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_phyp_probe_node(%struct.uart_phyp_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_phyp_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [64 x i8], align 16
  store %struct.uart_phyp_softc* %0, %struct.uart_phyp_softc** %3, align 8
  %7 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %3, align 8
  %8 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %3, align 8
  %11 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %10, i32 0, i32 4
  store i64 0, i64* %11, align 8
  %12 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %3, align 8
  %13 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %12, i32 0, i32 3
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* %4, align 4
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %16 = call i64 @OF_getprop(i32 %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %15, i32 64)
  %17 = icmp sle i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %2, align 4
  br label %78

20:                                               ; preds = %1
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %2, align 4
  br label %78

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %29 = call i64 @OF_getprop(i32 %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %28, i32 64)
  %30 = icmp sle i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %2, align 4
  br label %78

33:                                               ; preds = %26
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @ENXIO, align 4
  store i32 %38, i32* %2, align 4
  br label %78

39:                                               ; preds = %33
  store i32 -1, i32* %5, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @OF_getencprop(i32 %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* %5, i32 4)
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @ENXIO, align 4
  store i32 %45, i32* %2, align 4
  br label %78

46:                                               ; preds = %39
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %3, align 8
  %49 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %3, align 8
  %52 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %4, align 4
  %54 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %55 = call i64 @OF_getprop(i32 %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %54, i32 64)
  %56 = icmp sle i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = load i32, i32* @ENXIO, align 4
  store i32 %58, i32* %2, align 4
  br label %78

59:                                               ; preds = %46
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %61 = call i64 @strcmp(i8* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i32, i32* @HVTERM1, align 4
  %65 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %3, align 8
  %66 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  store i32 0, i32* %2, align 4
  br label %78

67:                                               ; preds = %59
  %68 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %69 = call i64 @strcmp(i8* %68, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32, i32* @HVTERMPROT, align 4
  %73 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %3, align 8
  %74 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  store i32 0, i32* %2, align 4
  br label %78

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* @ENXIO, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %76, %71, %63, %57, %44, %37, %31, %24, %18
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i64 @OF_getprop(i32, i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
