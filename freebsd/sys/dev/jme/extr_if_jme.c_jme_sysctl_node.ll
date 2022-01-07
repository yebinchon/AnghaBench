; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_sysctl_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_sysctl_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_softc = type { i64, i64, i64, i64, i64, i32, i32, %struct.jme_hw_stats }
%struct.jme_hw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"tx_coal_to\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@sysctl_hw_jme_tx_coal_to = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"jme tx coalescing timeout\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"tx_coal_pkt\00", align 1
@sysctl_hw_jme_tx_coal_pkt = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"jme tx coalescing packet\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"rx_coal_to\00", align 1
@sysctl_hw_jme_rx_coal_to = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"jme rx coalescing timeout\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"rx_coal_pkt\00", align 1
@sysctl_hw_jme_rx_coal_pkt = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"jme rx coalescing packet\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"process_limit\00", align 1
@sysctl_hw_jme_proc_limit = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"max number of Rx events to process\00", align 1
@JME_PROC_DEFAULT = common dso_local global i8* null, align 8
@JME_PROC_MIN = common dso_local global i64 0, align 8
@JME_PROC_MAX = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [53 x i8] c"process_limit value out of range; using default: %d\0A\00", align 1
@PCCTX_COAL_TO_DEFAULT = common dso_local global i8* null, align 8
@PCCTX_COAL_TO_MIN = common dso_local global i64 0, align 8
@PCCTX_COAL_TO_MAX = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [50 x i8] c"tx_coal_to value out of range; using default: %d\0A\00", align 1
@PCCTX_COAL_PKT_DEFAULT = common dso_local global i8* null, align 8
@PCCTX_COAL_PKT_MIN = common dso_local global i64 0, align 8
@PCCTX_COAL_PKT_MAX = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [51 x i8] c"tx_coal_pkt value out of range; using default: %d\0A\00", align 1
@PCCRX_COAL_TO_DEFAULT = common dso_local global i8* null, align 8
@PCCRX_COAL_TO_MIN = common dso_local global i64 0, align 8
@PCCRX_COAL_TO_MAX = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [50 x i8] c"rx_coal_to value out of range; using default: %d\0A\00", align 1
@PCCRX_COAL_PKT_DEFAULT = common dso_local global i8* null, align 8
@PCCRX_COAL_PKT_MIN = common dso_local global i64 0, align 8
@PCCRX_COAL_PKT_MAX = common dso_local global i64 0, align 8
@JME_FLAG_HWMIB = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [15 x i8] c"JME statistics\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"Rx MAC statistics\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"good_frames\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"Good frames\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"crc_errs\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"CRC errors\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"mii_errs\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"MII errors\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"fifo_oflows\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"FIFO overflows\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"desc_empty\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"Descriptor empty\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"bad_frames\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"Bad frames\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"Tx MAC statistics\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_softc*)* @jme_sysctl_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_sysctl_node(%struct.jme_softc* %0) #0 {
  %2 = alloca %struct.jme_softc*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid_list*, align 8
  %5 = alloca %struct.sysctl_oid_list*, align 8
  %6 = alloca %struct.sysctl_oid*, align 8
  %7 = alloca %struct.jme_hw_stats*, align 8
  %8 = alloca i32, align 4
  store %struct.jme_softc* %0, %struct.jme_softc** %2, align 8
  %9 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %10 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %9, i32 0, i32 7
  store %struct.jme_hw_stats* %10, %struct.jme_hw_stats** %7, align 8
  %11 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %12 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %13)
  store %struct.sysctl_ctx_list* %14, %struct.sysctl_ctx_list** %3, align 8
  %15 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %16 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %17)
  %19 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %18)
  store %struct.sysctl_oid_list* %19, %struct.sysctl_oid_list** %4, align 8
  %20 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %21 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %22 = load i32, i32* @OID_AUTO, align 4
  %23 = load i32, i32* @CTLTYPE_INT, align 4
  %24 = load i32, i32* @CTLFLAG_RW, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %27 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %26, i32 0, i32 0
  %28 = load i32, i32* @sysctl_hw_jme_tx_coal_to, align 4
  %29 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %20, %struct.sysctl_oid_list* %21, i32 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %25, i64* %27, i32 0, i32 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %30 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %31 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %32 = load i32, i32* @OID_AUTO, align 4
  %33 = load i32, i32* @CTLTYPE_INT, align 4
  %34 = load i32, i32* @CTLFLAG_RW, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %37 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %36, i32 0, i32 1
  %38 = load i32, i32* @sysctl_hw_jme_tx_coal_pkt, align 4
  %39 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %30, %struct.sysctl_oid_list* %31, i32 %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %35, i64* %37, i32 0, i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %40 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %41 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %42 = load i32, i32* @OID_AUTO, align 4
  %43 = load i32, i32* @CTLTYPE_INT, align 4
  %44 = load i32, i32* @CTLFLAG_RW, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %47 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %46, i32 0, i32 2
  %48 = load i32, i32* @sysctl_hw_jme_rx_coal_to, align 4
  %49 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %40, %struct.sysctl_oid_list* %41, i32 %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %45, i64* %47, i32 0, i32 %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %50 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %51 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %52 = load i32, i32* @OID_AUTO, align 4
  %53 = load i32, i32* @CTLTYPE_INT, align 4
  %54 = load i32, i32* @CTLFLAG_RW, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %57 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %56, i32 0, i32 3
  %58 = load i32, i32* @sysctl_hw_jme_rx_coal_pkt, align 4
  %59 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %50, %struct.sysctl_oid_list* %51, i32 %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %55, i64* %57, i32 0, i32 %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %60 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %61 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %62 = load i32, i32* @OID_AUTO, align 4
  %63 = load i32, i32* @CTLTYPE_INT, align 4
  %64 = load i32, i32* @CTLFLAG_RW, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %67 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %66, i32 0, i32 4
  %68 = load i32, i32* @sysctl_hw_jme_proc_limit, align 4
  %69 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %60, %struct.sysctl_oid_list* %61, i32 %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %65, i64* %67, i32 0, i32 %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %70 = load i8*, i8** @JME_PROC_DEFAULT, align 8
  %71 = ptrtoint i8* %70 to i64
  %72 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %73 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %72, i32 0, i32 4
  store i64 %71, i64* %73, align 8
  %74 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %75 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @device_get_name(i32 %76)
  %78 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %79 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @device_get_unit(i32 %80)
  %82 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %83 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %82, i32 0, i32 4
  %84 = call i32 @resource_int_value(i32 %77, i32 %81, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i64* %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %110

87:                                               ; preds = %1
  %88 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %89 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @JME_PROC_MIN, align 8
  %92 = icmp slt i64 %90, %91
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %95 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @JME_PROC_MAX, align 8
  %98 = icmp sgt i64 %96, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %93, %87
  %100 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %101 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 4
  %103 = load i8*, i8** @JME_PROC_DEFAULT, align 8
  %104 = call i32 @device_printf(i32 %102, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0), i8* %103)
  %105 = load i8*, i8** @JME_PROC_DEFAULT, align 8
  %106 = ptrtoint i8* %105 to i64
  %107 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %108 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %107, i32 0, i32 4
  store i64 %106, i64* %108, align 8
  br label %109

109:                                              ; preds = %99, %93
  br label %110

110:                                              ; preds = %109, %1
  %111 = load i8*, i8** @PCCTX_COAL_TO_DEFAULT, align 8
  %112 = ptrtoint i8* %111 to i64
  %113 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %114 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  %115 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %116 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @device_get_name(i32 %117)
  %119 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %120 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @device_get_unit(i32 %121)
  %123 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %124 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %123, i32 0, i32 0
  %125 = call i32 @resource_int_value(i32 %118, i32 %122, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64* %124)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %151

128:                                              ; preds = %110
  %129 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %130 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @PCCTX_COAL_TO_MIN, align 8
  %133 = icmp slt i64 %131, %132
  br i1 %133, label %140, label %134

134:                                              ; preds = %128
  %135 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %136 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @PCCTX_COAL_TO_MAX, align 8
  %139 = icmp sgt i64 %137, %138
  br i1 %139, label %140, label %150

140:                                              ; preds = %134, %128
  %141 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %142 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 4
  %144 = load i8*, i8** @PCCTX_COAL_TO_DEFAULT, align 8
  %145 = call i32 @device_printf(i32 %143, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0), i8* %144)
  %146 = load i8*, i8** @PCCTX_COAL_TO_DEFAULT, align 8
  %147 = ptrtoint i8* %146 to i64
  %148 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %149 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %148, i32 0, i32 0
  store i64 %147, i64* %149, align 8
  br label %150

150:                                              ; preds = %140, %134
  br label %151

151:                                              ; preds = %150, %110
  %152 = load i8*, i8** @PCCTX_COAL_PKT_DEFAULT, align 8
  %153 = ptrtoint i8* %152 to i64
  %154 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %155 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %154, i32 0, i32 1
  store i64 %153, i64* %155, align 8
  %156 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %157 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @device_get_name(i32 %158)
  %160 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %161 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @device_get_unit(i32 %162)
  %164 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %165 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %164, i32 0, i32 0
  %166 = call i32 @resource_int_value(i32 %159, i32 %163, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64* %165)
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* %8, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %192

169:                                              ; preds = %151
  %170 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %171 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @PCCTX_COAL_PKT_MIN, align 8
  %174 = icmp slt i64 %172, %173
  br i1 %174, label %181, label %175

175:                                              ; preds = %169
  %176 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %177 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @PCCTX_COAL_PKT_MAX, align 8
  %180 = icmp sgt i64 %178, %179
  br i1 %180, label %181, label %191

181:                                              ; preds = %175, %169
  %182 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %183 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 4
  %185 = load i8*, i8** @PCCTX_COAL_PKT_DEFAULT, align 8
  %186 = call i32 @device_printf(i32 %184, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0), i8* %185)
  %187 = load i8*, i8** @PCCTX_COAL_PKT_DEFAULT, align 8
  %188 = ptrtoint i8* %187 to i64
  %189 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %190 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %189, i32 0, i32 1
  store i64 %188, i64* %190, align 8
  br label %191

191:                                              ; preds = %181, %175
  br label %192

192:                                              ; preds = %191, %151
  %193 = load i8*, i8** @PCCRX_COAL_TO_DEFAULT, align 8
  %194 = ptrtoint i8* %193 to i64
  %195 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %196 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %195, i32 0, i32 2
  store i64 %194, i64* %196, align 8
  %197 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %198 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @device_get_name(i32 %199)
  %201 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %202 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %201, i32 0, i32 6
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @device_get_unit(i32 %203)
  %205 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %206 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %205, i32 0, i32 2
  %207 = call i32 @resource_int_value(i32 %200, i32 %204, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i64* %206)
  store i32 %207, i32* %8, align 4
  %208 = load i32, i32* %8, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %233

210:                                              ; preds = %192
  %211 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %212 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @PCCRX_COAL_TO_MIN, align 8
  %215 = icmp slt i64 %213, %214
  br i1 %215, label %222, label %216

216:                                              ; preds = %210
  %217 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %218 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @PCCRX_COAL_TO_MAX, align 8
  %221 = icmp sgt i64 %219, %220
  br i1 %221, label %222, label %232

222:                                              ; preds = %216, %210
  %223 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %224 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %223, i32 0, i32 6
  %225 = load i32, i32* %224, align 4
  %226 = load i8*, i8** @PCCRX_COAL_TO_DEFAULT, align 8
  %227 = call i32 @device_printf(i32 %225, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.14, i64 0, i64 0), i8* %226)
  %228 = load i8*, i8** @PCCRX_COAL_TO_DEFAULT, align 8
  %229 = ptrtoint i8* %228 to i64
  %230 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %231 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %230, i32 0, i32 2
  store i64 %229, i64* %231, align 8
  br label %232

232:                                              ; preds = %222, %216
  br label %233

233:                                              ; preds = %232, %192
  %234 = load i8*, i8** @PCCRX_COAL_PKT_DEFAULT, align 8
  %235 = ptrtoint i8* %234 to i64
  %236 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %237 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %236, i32 0, i32 3
  store i64 %235, i64* %237, align 8
  %238 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %239 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %238, i32 0, i32 6
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @device_get_name(i32 %240)
  %242 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %243 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %242, i32 0, i32 6
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @device_get_unit(i32 %244)
  %246 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %247 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %246, i32 0, i32 2
  %248 = call i32 @resource_int_value(i32 %241, i32 %245, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i64* %247)
  store i32 %248, i32* %8, align 4
  %249 = load i32, i32* %8, align 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %274

251:                                              ; preds = %233
  %252 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %253 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %252, i32 0, i32 3
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @PCCRX_COAL_PKT_MIN, align 8
  %256 = icmp slt i64 %254, %255
  br i1 %256, label %263, label %257

257:                                              ; preds = %251
  %258 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %259 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %258, i32 0, i32 3
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* @PCCRX_COAL_PKT_MAX, align 8
  %262 = icmp sgt i64 %260, %261
  br i1 %262, label %263, label %273

263:                                              ; preds = %257, %251
  %264 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %265 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %264, i32 0, i32 6
  %266 = load i32, i32* %265, align 4
  %267 = load i8*, i8** @PCCRX_COAL_PKT_DEFAULT, align 8
  %268 = call i32 @device_printf(i32 %266, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0), i8* %267)
  %269 = load i8*, i8** @PCCRX_COAL_PKT_DEFAULT, align 8
  %270 = ptrtoint i8* %269 to i64
  %271 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %272 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %271, i32 0, i32 3
  store i64 %270, i64* %272, align 8
  br label %273

273:                                              ; preds = %263, %257
  br label %274

274:                                              ; preds = %273, %233
  %275 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %276 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %275, i32 0, i32 5
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @JME_FLAG_HWMIB, align 4
  %279 = and i32 %277, %278
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %274
  br label %344

282:                                              ; preds = %274
  %283 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %284 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %285 = load i32, i32* @OID_AUTO, align 4
  %286 = load i32, i32* @CTLFLAG_RD, align 4
  %287 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %283, %struct.sysctl_oid_list* %284, i32 %285, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 %286, i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  store %struct.sysctl_oid* %287, %struct.sysctl_oid** %6, align 8
  %288 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %289 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %288)
  store %struct.sysctl_oid_list* %289, %struct.sysctl_oid_list** %5, align 8
  %290 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %291 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %292 = load i32, i32* @OID_AUTO, align 4
  %293 = load i32, i32* @CTLFLAG_RD, align 4
  %294 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %290, %struct.sysctl_oid_list* %291, i32 %292, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i32 %293, i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0))
  store %struct.sysctl_oid* %294, %struct.sysctl_oid** %6, align 8
  %295 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %296 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %295)
  store %struct.sysctl_oid_list* %296, %struct.sysctl_oid_list** %4, align 8
  %297 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %298 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %299 = load %struct.jme_hw_stats*, %struct.jme_hw_stats** %7, align 8
  %300 = getelementptr inbounds %struct.jme_hw_stats, %struct.jme_hw_stats* %299, i32 0, i32 7
  %301 = call i32 @JME_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %297, %struct.sysctl_oid_list* %298, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32* %300, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  %302 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %303 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %304 = load %struct.jme_hw_stats*, %struct.jme_hw_stats** %7, align 8
  %305 = getelementptr inbounds %struct.jme_hw_stats, %struct.jme_hw_stats* %304, i32 0, i32 6
  %306 = call i32 @JME_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %302, %struct.sysctl_oid_list* %303, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i32* %305, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0))
  %307 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %308 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %309 = load %struct.jme_hw_stats*, %struct.jme_hw_stats** %7, align 8
  %310 = getelementptr inbounds %struct.jme_hw_stats, %struct.jme_hw_stats* %309, i32 0, i32 5
  %311 = call i32 @JME_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %307, %struct.sysctl_oid_list* %308, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i32* %310, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0))
  %312 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %313 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %314 = load %struct.jme_hw_stats*, %struct.jme_hw_stats** %7, align 8
  %315 = getelementptr inbounds %struct.jme_hw_stats, %struct.jme_hw_stats* %314, i32 0, i32 4
  %316 = call i32 @JME_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %312, %struct.sysctl_oid_list* %313, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i32* %315, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0))
  %317 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %318 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %319 = load %struct.jme_hw_stats*, %struct.jme_hw_stats** %7, align 8
  %320 = getelementptr inbounds %struct.jme_hw_stats, %struct.jme_hw_stats* %319, i32 0, i32 3
  %321 = call i32 @JME_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %317, %struct.sysctl_oid_list* %318, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0), i32* %320, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0))
  %322 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %323 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %324 = load %struct.jme_hw_stats*, %struct.jme_hw_stats** %7, align 8
  %325 = getelementptr inbounds %struct.jme_hw_stats, %struct.jme_hw_stats* %324, i32 0, i32 2
  %326 = call i32 @JME_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %322, %struct.sysctl_oid_list* %323, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i32* %325, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0))
  %327 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %328 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %329 = load i32, i32* @OID_AUTO, align 4
  %330 = load i32, i32* @CTLFLAG_RD, align 4
  %331 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %327, %struct.sysctl_oid_list* %328, i32 %329, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0), i32 %330, i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0))
  store %struct.sysctl_oid* %331, %struct.sysctl_oid** %6, align 8
  %332 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %333 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %332)
  store %struct.sysctl_oid_list* %333, %struct.sysctl_oid_list** %4, align 8
  %334 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %335 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %336 = load %struct.jme_hw_stats*, %struct.jme_hw_stats** %7, align 8
  %337 = getelementptr inbounds %struct.jme_hw_stats, %struct.jme_hw_stats* %336, i32 0, i32 1
  %338 = call i32 @JME_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %334, %struct.sysctl_oid_list* %335, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32* %337, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  %339 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %340 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %341 = load %struct.jme_hw_stats*, %struct.jme_hw_stats** %7, align 8
  %342 = getelementptr inbounds %struct.jme_hw_stats, %struct.jme_hw_stats* %341, i32 0, i32 0
  %343 = call i32 @JME_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %339, %struct.sysctl_oid_list* %340, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i32* %342, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0))
  br label %344

344:                                              ; preds = %282, %281
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i64*, i32, i32, i8*, i8*) #1

declare dso_local i32 @resource_int_value(i32, i32, i8*, i64*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i8*) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @JME_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i8*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
