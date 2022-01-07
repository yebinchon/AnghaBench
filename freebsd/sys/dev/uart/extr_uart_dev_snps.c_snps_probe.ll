; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_snps.c_snps_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_snps.c_snps_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snps_softc = type { i32, i32*, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.uart_class* }
%struct.uart_class = type { i32 }
%struct.TYPE_6__ = type { i64 }

@ENXIO = common dso_local global i32 0, align 4
@compat_data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"reg-shift\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"reg-io-width\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"could not determine frequency\0A\00", align 1
@UART_F_BUSY_DETECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @snps_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snps_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.snps_softc*, align 8
  %5 = alloca %struct.uart_class*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @ofw_bus_status_okay(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %2, align 4
  br label %76

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @compat_data, align 4
  %20 = call %struct.TYPE_6__* @ofw_bus_search_compatible(i32 %18, i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.uart_class*
  store %struct.uart_class* %23, %struct.uart_class** %5, align 8
  %24 = load %struct.uart_class*, %struct.uart_class** %5, align 8
  %25 = icmp eq %struct.uart_class* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %2, align 4
  br label %76

28:                                               ; preds = %17
  store i64 0, i64* %10, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call %struct.snps_softc* @device_get_softc(i32 %29)
  store %struct.snps_softc* %30, %struct.snps_softc** %4, align 8
  %31 = load %struct.uart_class*, %struct.uart_class** %5, align 8
  %32 = load %struct.snps_softc*, %struct.snps_softc** %4, align 8
  %33 = getelementptr inbounds %struct.snps_softc, %struct.snps_softc* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store %struct.uart_class* %31, %struct.uart_class** %35, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @ofw_bus_get_node(i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @OF_getencprop(i32 %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64* %7, i32 8)
  %40 = icmp sle i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  store i64 0, i64* %7, align 8
  br label %42

42:                                               ; preds = %41, %28
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @OF_getencprop(i32 %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64* %8, i32 8)
  %45 = icmp sle i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i64 1, i64* %8, align 8
  br label %47

47:                                               ; preds = %46, %42
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @OF_getencprop(i32 %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64* %9, i32 8)
  %50 = icmp sle i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i64 0, i64* %9, align 8
  br label %52

52:                                               ; preds = %51, %47
  %53 = load i64, i64* @bootverbose, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i64, i64* %9, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @device_printf(i32 %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %55, %52
  %62 = load i32, i32* %3, align 4
  %63 = load i64, i64* %7, align 8
  %64 = trunc i64 %63 to i32
  %65 = load i64, i64* %8, align 8
  %66 = trunc i64 %65 to i32
  %67 = load i64, i64* %9, align 8
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* @UART_F_BUSY_DETECT, align 4
  %70 = call i32 @uart_bus_probe(i32 %62, i32 %64, i32 %66, i32 %68, i32 0, i32 0, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %61
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %2, align 4
  br label %76

75:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %73, %26, %15
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @ofw_bus_status_okay(i32) #1

declare dso_local %struct.TYPE_6__* @ofw_bus_search_compatible(i32, i32) #1

declare dso_local %struct.snps_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i64*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @uart_bus_probe(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
