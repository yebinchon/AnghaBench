; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi.c_ipmi_reset_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi.c_ipmi_reset_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_softc = type { i32 }
%struct.ipmi_request = type { i32 }

@IPMI_APP_REQUEST = common dso_local global i32 0, align 4
@IPMI_RESET_WDOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to reset watchdog\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipmi_softc*)* @ipmi_reset_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmi_reset_watchdog(%struct.ipmi_softc* %0) #0 {
  %2 = alloca %struct.ipmi_softc*, align 8
  %3 = alloca %struct.ipmi_request*, align 8
  %4 = alloca i32, align 4
  store %struct.ipmi_softc* %0, %struct.ipmi_softc** %2, align 8
  %5 = load %struct.ipmi_request*, %struct.ipmi_request** %3, align 8
  %6 = load i32, i32* @IPMI_APP_REQUEST, align 4
  %7 = call i32 @IPMI_ADDR(i32 %6, i32 0)
  %8 = load i32, i32* @IPMI_RESET_WDOG, align 4
  %9 = call i32 @IPMI_ALLOC_DRIVER_REQUEST(%struct.ipmi_request* %5, i32 %7, i32 %8, i32 0, i32 0)
  %10 = load %struct.ipmi_softc*, %struct.ipmi_softc** %2, align 8
  %11 = load %struct.ipmi_request*, %struct.ipmi_request** %3, align 8
  %12 = call i32 @ipmi_submit_driver_request(%struct.ipmi_softc* %10, %struct.ipmi_request* %11, i32 0)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.ipmi_softc*, %struct.ipmi_softc** %2, align 8
  %17 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %15, %1
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

declare dso_local i32 @IPMI_ALLOC_DRIVER_REQUEST(%struct.ipmi_request*, i32, i32, i32, i32) #1

declare dso_local i32 @IPMI_ADDR(i32, i32) #1

declare dso_local i32 @ipmi_submit_driver_request(%struct.ipmi_softc*, %struct.ipmi_request*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
