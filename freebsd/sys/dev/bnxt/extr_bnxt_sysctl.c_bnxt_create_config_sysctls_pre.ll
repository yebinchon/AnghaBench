; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_sysctl.c_bnxt_create_config_sysctls_pre.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_sysctl.c_bnxt_create_config_sysctls_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }
%struct.TYPE_2__ = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"rss_key\00", align 1
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@CTLFLAG_RWTUN = common dso_local global i32 0, align 4
@bnxt_rss_key_sysctl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"RSS key\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"rss_type\00", align 1
@bnxt_rss_type_sysctl = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"RSS type bits\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"rx_stall\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@bnxt_rx_stall_sysctl = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"buffer rx packets in hardware until the host posts new buffers\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"vlan_strip\00", align 1
@bnxt_vlan_strip_sysctl = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"strip VLAN tag in the RX path\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"if_name\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"interface name\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"intr_coal_rx_usecs\00", align 1
@bnxt_set_coal_rx_usecs = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [30 x i8] c"interrupt coalescing Rx Usecs\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"intr_coal_rx_frames\00", align 1
@bnxt_set_coal_rx_frames = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [31 x i8] c"interrupt coalescing Rx Frames\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"intr_coal_rx_usecs_irq\00", align 1
@bnxt_set_coal_rx_usecs_irq = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [34 x i8] c"interrupt coalescing Rx Usecs IRQ\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"intr_coal_rx_frames_irq\00", align 1
@bnxt_set_coal_rx_frames_irq = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [35 x i8] c"interrupt coalescing Rx Frames IRQ\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"intr_coal_tx_usecs\00", align 1
@bnxt_set_coal_tx_usecs = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [30 x i8] c"interrupt coalescing Tx Usces\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"intr_coal_tx_frames\00", align 1
@bnxt_set_coal_tx_frames = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [31 x i8] c"interrupt coalescing Tx Frames\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"intr_coal_tx_usecs_irq\00", align 1
@bnxt_set_coal_tx_usecs_irq = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [34 x i8] c"interrupt coalescing Tx Usecs IRQ\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"intr_coal_tx_frames_irq\00", align 1
@bnxt_set_coal_tx_frames_irq = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [35 x i8] c"interrupt coalescing Tx Frames IRQ\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_create_config_sysctls_pre(%struct.bnxt_softc* %0) #0 {
  %2 = alloca %struct.bnxt_softc*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid_list*, align 8
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %2, align 8
  %5 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %6 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %7)
  store %struct.sysctl_ctx_list* %8, %struct.sysctl_ctx_list** %3, align 8
  %9 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %10 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @device_get_sysctl_tree(i32 %11)
  %13 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32 %12)
  store %struct.sysctl_oid_list* %13, %struct.sysctl_oid_list** %4, align 8
  %14 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %15 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %16 = load i32, i32* @OID_AUTO, align 4
  %17 = load i32, i32* @CTLTYPE_STRING, align 4
  %18 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %21 = load i32, i32* @bnxt_rss_key_sysctl, align 4
  %22 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %14, %struct.sysctl_oid_list* %15, i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %19, %struct.bnxt_softc* %20, i32 0, i32 %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %23 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %24 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %25 = load i32, i32* @OID_AUTO, align 4
  %26 = load i32, i32* @CTLTYPE_STRING, align 4
  %27 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %30 = load i32, i32* @bnxt_rss_type_sysctl, align 4
  %31 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %23, %struct.sysctl_oid_list* %24, i32 %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %28, %struct.bnxt_softc* %29, i32 0, i32 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %32 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %33 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %34 = load i32, i32* @OID_AUTO, align 4
  %35 = load i32, i32* @CTLTYPE_INT, align 4
  %36 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %39 = load i32, i32* @bnxt_rx_stall_sysctl, align 4
  %40 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %32, %struct.sysctl_oid_list* %33, i32 %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %37, %struct.bnxt_softc* %38, i32 0, i32 %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0))
  %41 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %42 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %43 = load i32, i32* @OID_AUTO, align 4
  %44 = load i32, i32* @CTLTYPE_INT, align 4
  %45 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %48 = load i32, i32* @bnxt_vlan_strip_sysctl, align 4
  %49 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %41, %struct.sysctl_oid_list* %42, i32 %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %46, %struct.bnxt_softc* %47, i32 0, i32 %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  %50 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %51 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %52 = load i32, i32* @OID_AUTO, align 4
  %53 = load i32, i32* @CTLFLAG_RD, align 4
  %54 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %55 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.TYPE_2__* @iflib_get_ifp(i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @SYSCTL_ADD_STRING(%struct.sysctl_ctx_list* %50, %struct.sysctl_oid_list* %51, i32 %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %53, i32 %59, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %61 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %62 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %63 = load i32, i32* @OID_AUTO, align 4
  %64 = load i32, i32* @CTLTYPE_INT, align 4
  %65 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %68 = load i32, i32* @bnxt_set_coal_rx_usecs, align 4
  %69 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %61, %struct.sysctl_oid_list* %62, i32 %63, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 %66, %struct.bnxt_softc* %67, i32 0, i32 %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  %70 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %71 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %72 = load i32, i32* @OID_AUTO, align 4
  %73 = load i32, i32* @CTLTYPE_INT, align 4
  %74 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %77 = load i32, i32* @bnxt_set_coal_rx_frames, align 4
  %78 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %70, %struct.sysctl_oid_list* %71, i32 %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 %75, %struct.bnxt_softc* %76, i32 0, i32 %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0))
  %79 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %80 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %81 = load i32, i32* @OID_AUTO, align 4
  %82 = load i32, i32* @CTLTYPE_INT, align 4
  %83 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %86 = load i32, i32* @bnxt_set_coal_rx_usecs_irq, align 4
  %87 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %79, %struct.sysctl_oid_list* %80, i32 %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 %84, %struct.bnxt_softc* %85, i32 0, i32 %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0))
  %88 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %89 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %90 = load i32, i32* @OID_AUTO, align 4
  %91 = load i32, i32* @CTLTYPE_INT, align 4
  %92 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %95 = load i32, i32* @bnxt_set_coal_rx_frames_irq, align 4
  %96 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %88, %struct.sysctl_oid_list* %89, i32 %90, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), i32 %93, %struct.bnxt_softc* %94, i32 0, i32 %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0))
  %97 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %98 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %99 = load i32, i32* @OID_AUTO, align 4
  %100 = load i32, i32* @CTLTYPE_INT, align 4
  %101 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %104 = load i32, i32* @bnxt_set_coal_tx_usecs, align 4
  %105 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %97, %struct.sysctl_oid_list* %98, i32 %99, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i32 %102, %struct.bnxt_softc* %103, i32 0, i32 %104, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i64 0, i64 0))
  %106 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %107 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %108 = load i32, i32* @OID_AUTO, align 4
  %109 = load i32, i32* @CTLTYPE_INT, align 4
  %110 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %111 = or i32 %109, %110
  %112 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %113 = load i32, i32* @bnxt_set_coal_tx_frames, align 4
  %114 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %106, %struct.sysctl_oid_list* %107, i32 %108, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i32 %111, %struct.bnxt_softc* %112, i32 0, i32 %113, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i64 0, i64 0))
  %115 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %116 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %117 = load i32, i32* @OID_AUTO, align 4
  %118 = load i32, i32* @CTLTYPE_INT, align 4
  %119 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %120 = or i32 %118, %119
  %121 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %122 = load i32, i32* @bnxt_set_coal_tx_usecs_irq, align 4
  %123 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %115, %struct.sysctl_oid_list* %116, i32 %117, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i32 %120, %struct.bnxt_softc* %121, i32 0, i32 %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i64 0, i64 0))
  %124 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %125 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %126 = load i32, i32* @OID_AUTO, align 4
  %127 = load i32, i32* @CTLTYPE_INT, align 4
  %128 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %129 = or i32 %127, %128
  %130 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %131 = load i32, i32* @bnxt_set_coal_tx_frames_irq, align 4
  %132 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %124, %struct.sysctl_oid_list* %125, i32 %126, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 %129, %struct.bnxt_softc* %130, i32 0, i32 %131, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, %struct.bnxt_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_STRING(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_2__* @iflib_get_ifp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
