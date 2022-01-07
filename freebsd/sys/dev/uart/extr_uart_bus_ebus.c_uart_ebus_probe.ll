; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_bus_ebus.c_uart_ebus_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_bus_ebus.c_uart_ebus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32* }
%struct.uart_devinfo = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"lom-console\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"su\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"su_pnp\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"rsc-console\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"rsc-control\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"su16550\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"su16552\00", align 1
@sparc64_model = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"SUNW,UltraAX-MP\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"SUNW,UltraSPARC-IIi-Engine\00", align 1
@UART_DEV_KEYBOARD = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@uart_ns8250_class = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @uart_ebus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_ebus_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.uart_softc*, align 8
  %7 = alloca %struct.uart_devinfo, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.uart_softc* @device_get_softc(i32 %8)
  store %struct.uart_softc* %9, %struct.uart_softc** %6, align 8
  %10 = load %struct.uart_softc*, %struct.uart_softc** %6, align 8
  %11 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %10, i32 0, i32 0
  store i32* null, i32** %11, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i8* @ofw_bus_get_name(i32 %12)
  store i8* %13, i8** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i8* @ofw_bus_get_compat(i32 %14)
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %19

19:                                               ; preds = %18, %1
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %19
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %23
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %27
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %31
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %72, label %51

51:                                               ; preds = %47, %43, %39, %35, %31, %27, %23, %19
  %52 = load i8*, i8** @sparc64_model, align 8
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i8*, i8** @sparc64_model, align 8
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %55, %51
  %60 = load i32, i32* @UART_DEV_KEYBOARD, align 4
  %61 = call i64 @uart_cpu_getdev(i32 %60, %struct.uart_devinfo* %7)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @device_disable(i32 %64)
  %66 = load i32, i32* @ENXIO, align 4
  store i32 %66, i32* %2, align 4
  br label %74

67:                                               ; preds = %59, %55
  %68 = load %struct.uart_softc*, %struct.uart_softc** %6, align 8
  %69 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %68, i32 0, i32 0
  store i32* @uart_ns8250_class, i32** %69, align 8
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @uart_bus_probe(i32 %70, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  store i32 %71, i32* %2, align 4
  br label %74

72:                                               ; preds = %47
  %73 = load i32, i32* @ENXIO, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %72, %67, %63
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.uart_softc* @device_get_softc(i32) #1

declare dso_local i8* @ofw_bus_get_name(i32) #1

declare dso_local i8* @ofw_bus_get_compat(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @uart_cpu_getdev(i32, %struct.uart_devinfo*) #1

declare dso_local i32 @device_disable(i32) #1

declare dso_local i32 @uart_bus_probe(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
