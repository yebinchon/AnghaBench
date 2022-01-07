; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_core.c_uart_pps_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_core.c_uart_pps_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@UART_PPS_DCD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"hw.uart.pps_mode\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"pps_mode\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RWTUN = common dso_local global i32 0, align 4
@uart_pps_mode_sysctl = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.3 = private unnamed_addr constant [78 x i8] c"pulse mode: 0/1/2=disabled/CTS/DCD; add 0x10 to invert, 0x20 for narrow pulse\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"Invalid pps_mode 0x%02x configured; disabling PPS capture\0A\00", align 1
@UART_PPS_DISABLED = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@PPS_CAPTUREBOTH = common dso_local global i32 0, align 4
@PPS_ABI_VERSION = common dso_local global i32 0, align 4
@UART_PPS_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_softc*)* @uart_pps_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_pps_init(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid*, align 8
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %5 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %6 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %7)
  store %struct.sysctl_ctx_list* %8, %struct.sysctl_ctx_list** %3, align 8
  %9 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %10 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %11)
  store %struct.sysctl_oid* %12, %struct.sysctl_oid** %4, align 8
  %13 = load i32, i32* @UART_PPS_DCD, align 4
  %14 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %15 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %17 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %16, i32 0, i32 1
  %18 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %17)
  %19 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %20 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %21 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %20)
  %22 = load i32, i32* @OID_AUTO, align 4
  %23 = load i32, i32* @CTLTYPE_INT, align 4
  %24 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %27 = load i32, i32* @uart_pps_mode_sysctl, align 4
  %28 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %19, i32 %21, i32 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %25, %struct.uart_softc* %26, i32 0, i32 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.3, i64 0, i64 0))
  %29 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %30 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @uart_pps_mode_valid(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %1
  %35 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %36 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %39 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @UART_PPS_DISABLED, align 4
  %43 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %44 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %52

45:                                               ; preds = %1
  %46 = load i64, i64* @bootverbose, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %50 = call i32 @uart_pps_print_mode(%struct.uart_softc* %49)
  br label %51

51:                                               ; preds = %48, %45
  br label %52

52:                                               ; preds = %51, %34
  %53 = load i32, i32* @PPS_CAPTUREBOTH, align 4
  %54 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %55 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  store i32 %53, i32* %56, align 4
  %57 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %58 = call i32 @uart_tty_getlock(%struct.uart_softc* %57)
  %59 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %60 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* @PPS_ABI_VERSION, align 4
  %63 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %64 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  %66 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %67 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %66, i32 0, i32 0
  %68 = call i32 @pps_init_abi(%struct.TYPE_2__* %67)
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, %struct.uart_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @uart_pps_mode_valid(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @uart_pps_print_mode(%struct.uart_softc*) #1

declare dso_local i32 @uart_tty_getlock(%struct.uart_softc*) #1

declare dso_local i32 @pps_init_abi(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
