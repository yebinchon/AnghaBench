; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_opal.c_opal_ipmi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_opal.c_opal_ipmi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_ipmi_softc = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"ibm,ipmi-interface-id\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Missing interface id\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@opal_ipmi_startup = common dso_local global i32 0, align 4
@opal_ipmi_driver_request = common dso_local global i32 0, align 4
@ipmi_polled_enqueue_request = common dso_local global i32 0, align 4
@IPMI_MAX_RX = common dso_local global i64 0, align 8
@M_IPMI = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @opal_ipmi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opal_ipmi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.opal_ipmi_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.opal_ipmi_softc* @device_get_softc(i32 %5)
  store %struct.opal_ipmi_softc* %6, %struct.opal_ipmi_softc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @ofw_bus_get_node(i32 %7)
  %9 = load %struct.opal_ipmi_softc*, %struct.opal_ipmi_softc** %4, align 8
  %10 = getelementptr inbounds %struct.opal_ipmi_softc, %struct.opal_ipmi_softc* %9, i32 0, i32 2
  %11 = call i64 @OF_getencprop(i32 %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %10, i32 4)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @device_printf(i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %2, align 4
  br label %48

17:                                               ; preds = %1
  %18 = load i32, i32* @opal_ipmi_startup, align 4
  %19 = load %struct.opal_ipmi_softc*, %struct.opal_ipmi_softc** %4, align 8
  %20 = getelementptr inbounds %struct.opal_ipmi_softc, %struct.opal_ipmi_softc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 4
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @opal_ipmi_driver_request, align 4
  %23 = load %struct.opal_ipmi_softc*, %struct.opal_ipmi_softc** %4, align 8
  %24 = getelementptr inbounds %struct.opal_ipmi_softc, %struct.opal_ipmi_softc* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @ipmi_polled_enqueue_request, align 4
  %27 = load %struct.opal_ipmi_softc*, %struct.opal_ipmi_softc** %4, align 8
  %28 = getelementptr inbounds %struct.opal_ipmi_softc, %struct.opal_ipmi_softc* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 4
  %30 = load %struct.opal_ipmi_softc*, %struct.opal_ipmi_softc** %4, align 8
  %31 = getelementptr inbounds %struct.opal_ipmi_softc, %struct.opal_ipmi_softc* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.opal_ipmi_softc*, %struct.opal_ipmi_softc** %4, align 8
  %35 = getelementptr inbounds %struct.opal_ipmi_softc, %struct.opal_ipmi_softc* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load i64, i64* @IPMI_MAX_RX, align 8
  %38 = add i64 4, %37
  %39 = load i32, i32* @M_IPMI, align 4
  %40 = load i32, i32* @M_WAITOK, align 4
  %41 = load i32, i32* @M_ZERO, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @malloc(i64 %38, i32 %39, i32 %42)
  %44 = load %struct.opal_ipmi_softc*, %struct.opal_ipmi_softc** %4, align 8
  %45 = getelementptr inbounds %struct.opal_ipmi_softc, %struct.opal_ipmi_softc* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @ipmi_attach(i32 %46)
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %17, %13
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.opal_ipmi_softc* @device_get_softc(i32) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @malloc(i64, i32, i32) #1

declare dso_local i32 @ipmi_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
