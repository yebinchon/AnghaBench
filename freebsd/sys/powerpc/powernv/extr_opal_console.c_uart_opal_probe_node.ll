; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_console.c_uart_opal_probe_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_console.c_uart_opal_probe_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_opal_softc = type { i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"ibm,opal-console-raw\00", align 1
@OPAL_RAW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"ibm,opal-console-hvsi\00", align 1
@OPAL_HVSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_opal_softc*)* @uart_opal_probe_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_opal_probe_node(%struct.uart_opal_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_opal_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [64 x i8], align 16
  store %struct.uart_opal_softc* %0, %struct.uart_opal_softc** %3, align 8
  %7 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %3, align 8
  %8 = getelementptr inbounds %struct.uart_opal_softc, %struct.uart_opal_softc* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %3, align 8
  %11 = getelementptr inbounds %struct.uart_opal_softc, %struct.uart_opal_softc* %10, i32 0, i32 4
  store i64 0, i64* %11, align 8
  %12 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %3, align 8
  %13 = getelementptr inbounds %struct.uart_opal_softc, %struct.uart_opal_softc* %12, i32 0, i32 3
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* %4, align 4
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %16 = call i64 @OF_getprop(i32 %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %15, i32 64)
  %17 = icmp sle i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %2, align 4
  br label %65

20:                                               ; preds = %1
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %2, align 4
  br label %65

26:                                               ; preds = %20
  store i32 -1, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @OF_getencprop(i32 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %5, i32 4)
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %2, align 4
  br label %65

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %3, align 8
  %36 = getelementptr inbounds %struct.uart_opal_softc, %struct.uart_opal_softc* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %3, align 8
  %39 = getelementptr inbounds %struct.uart_opal_softc, %struct.uart_opal_softc* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %4, align 4
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %42 = call i64 @OF_getprop(i32 %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %41, i32 64)
  %43 = icmp sle i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* @ENXIO, align 4
  store i32 %45, i32* %2, align 4
  br label %65

46:                                               ; preds = %33
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32, i32* @OPAL_RAW, align 4
  %52 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %3, align 8
  %53 = getelementptr inbounds %struct.uart_opal_softc, %struct.uart_opal_softc* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  store i32 0, i32* %2, align 4
  br label %65

54:                                               ; preds = %46
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %56 = call i64 @strcmp(i8* %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i32, i32* @OPAL_HVSI, align 4
  %60 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %3, align 8
  %61 = getelementptr inbounds %struct.uart_opal_softc, %struct.uart_opal_softc* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  store i32 0, i32* %2, align 4
  br label %65

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* @ENXIO, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %58, %50, %44, %31, %24, %18
  %66 = load i32, i32* %2, align 4
  ret i32 %66
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
