; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps.c_mps_setup_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps.c_mps_setup_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.sysctl_oid*, %struct.sysctl_ctx_list, i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_ctx_list = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"MPS controller %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@_hw_mps = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"debug_level\00", align 1
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@CTLFLAG_MPSAFE = common dso_local global i32 0, align 4
@mps_debug_sysctl = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"mps debug level\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"disable_msix\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Disable the use of MSI-X interrupts\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"disable_msi\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Disable the use of MSI interrupts\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"max_msix\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"User-defined maximum number of MSIX queues\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"msix_msgs\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"Negotiated number of MSIX queues\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"max_reqframes\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"Total number of allocated request frames\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"max_prireqframes\00", align 1
@.str.16 = private unnamed_addr constant [55 x i8] c"Total number of allocated high priority request frames\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"max_replyframes\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"Total number of allocated reply frames\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"max_evtframes\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"Total number of event frames allocated\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"firmware_version\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"firmware version\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"driver_version\00", align 1
@MPS_DRIVER_VERSION = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [15 x i8] c"driver version\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"io_cmds_active\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"number of currently active commands\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"io_cmds_highwater\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"maximum active commands seen\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"chain_free\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"number of free chain elements\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"chain_free_lowwater\00", align 1
@.str.32 = private unnamed_addr constant [37 x i8] c"lowest number of free chain elements\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"max_chains\00", align 1
@.str.34 = private unnamed_addr constant [44 x i8] c"maximum chain frames that will be allocated\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"max_io_pages\00", align 1
@.str.36 = private unnamed_addr constant [52 x i8] c"maximum pages to allow per I/O (if <1 use IOCFacts)\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"enable_ssu\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"enable SSU to SATA SSD/HDD at shutdown\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"chain_alloc_fail\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"chain allocation failures\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"spinup_wait_time\00", align 1
@DEFAULT_SPINUP_WAIT = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [47 x i8] c"seconds to wait for spinup after SATA ID error\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"mapping_table_dump\00", align 1
@mps_mapping_dump = common dso_local global i32 0, align 4
@.str.44 = private unnamed_addr constant [19 x i8] c"Mapping Table Dump\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"encl_table_dump\00", align 1
@mps_mapping_encl_dump = common dso_local global i32 0, align 4
@.str.46 = private unnamed_addr constant [21 x i8] c"Enclosure Table Dump\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"dump_reqs\00", align 1
@CTLTYPE_OPAQUE = common dso_local global i32 0, align 4
@CTLFLAG_SKIP = common dso_local global i32 0, align 4
@mps_dump_reqs = common dso_local global i32 0, align 4
@.str.48 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"Dump Active Requests\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"use_phy_num\00", align 1
@.str.51 = private unnamed_addr constant [35 x i8] c"Use the phy number for enumeration\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mps_softc*)* @mps_setup_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mps_setup_sysctl(%struct.mps_softc* %0) #0 {
  %2 = alloca %struct.mps_softc*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid*, align 8
  %5 = alloca [80 x i8], align 16
  %6 = alloca [80 x i8], align 16
  store %struct.mps_softc* %0, %struct.mps_softc** %2, align 8
  store %struct.sysctl_ctx_list* null, %struct.sysctl_ctx_list** %3, align 8
  store %struct.sysctl_oid* null, %struct.sysctl_oid** %4, align 8
  %7 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %8 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %9 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %8, i32 0, i32 21
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @device_get_unit(i32 %10)
  %12 = call i32 @snprintf(i8* %7, i32 80, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %14 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %15 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %14, i32 0, i32 21
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @device_get_unit(i32 %16)
  %18 = call i32 @snprintf(i8* %13, i32 80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %20 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %19, i32 0, i32 21
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %21)
  store %struct.sysctl_ctx_list* %22, %struct.sysctl_ctx_list** %3, align 8
  %23 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %24 = icmp ne %struct.sysctl_ctx_list* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %27 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %26, i32 0, i32 21
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %28)
  store %struct.sysctl_oid* %29, %struct.sysctl_oid** %4, align 8
  br label %30

30:                                               ; preds = %25, %1
  %31 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %32 = icmp eq %struct.sysctl_oid* %31, null
  br i1 %32, label %33, label %59

33:                                               ; preds = %30
  %34 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %35 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %34, i32 0, i32 20
  %36 = call i32 @sysctl_ctx_init(%struct.sysctl_ctx_list* %35)
  %37 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %38 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %37, i32 0, i32 20
  %39 = load i32, i32* @_hw_mps, align 4
  %40 = call i32 @SYSCTL_STATIC_CHILDREN(i32 %39)
  %41 = load i32, i32* @OID_AUTO, align 4
  %42 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %43 = load i32, i32* @CTLFLAG_RD, align 4
  %44 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %45 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %38, i32 %40, i32 %41, i8* %42, i32 %43, i32 0, i8* %44)
  %46 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %47 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %46, i32 0, i32 19
  store %struct.sysctl_oid* %45, %struct.sysctl_oid** %47, align 8
  %48 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %49 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %48, i32 0, i32 19
  %50 = load %struct.sysctl_oid*, %struct.sysctl_oid** %49, align 8
  %51 = icmp eq %struct.sysctl_oid* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %33
  br label %271

53:                                               ; preds = %33
  %54 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %55 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %54, i32 0, i32 20
  store %struct.sysctl_ctx_list* %55, %struct.sysctl_ctx_list** %3, align 8
  %56 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %57 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %56, i32 0, i32 19
  %58 = load %struct.sysctl_oid*, %struct.sysctl_oid** %57, align 8
  store %struct.sysctl_oid* %58, %struct.sysctl_oid** %4, align 8
  br label %59

59:                                               ; preds = %53, %30
  %60 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %61 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %62 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %61)
  %63 = load i32, i32* @OID_AUTO, align 4
  %64 = load i32, i32* @CTLTYPE_STRING, align 4
  %65 = load i32, i32* @CTLFLAG_RW, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %70 = load i32, i32* @mps_debug_sysctl, align 4
  %71 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %60, i32 %62, i32 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %68, %struct.mps_softc* %69, i32 0, i32 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %72 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %73 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %74 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %73)
  %75 = load i32, i32* @OID_AUTO, align 4
  %76 = load i32, i32* @CTLFLAG_RD, align 4
  %77 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %78 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %77, i32 0, i32 18
  %79 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %72, i32 %74, i32 %75, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %76, i32* %78, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %80 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %81 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %82 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %81)
  %83 = load i32, i32* @OID_AUTO, align 4
  %84 = load i32, i32* @CTLFLAG_RD, align 4
  %85 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %86 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %85, i32 0, i32 17
  %87 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %80, i32 %82, i32 %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %84, i32* %86, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %88 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %89 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %90 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %89)
  %91 = load i32, i32* @OID_AUTO, align 4
  %92 = load i32, i32* @CTLFLAG_RD, align 4
  %93 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %94 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %93, i32 0, i32 16
  %95 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %88, i32 %90, i32 %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %92, i32* %94, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0))
  %96 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %97 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %98 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %97)
  %99 = load i32, i32* @OID_AUTO, align 4
  %100 = load i32, i32* @CTLFLAG_RD, align 4
  %101 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %102 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %101, i32 0, i32 15
  %103 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %96, i32 %98, i32 %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %100, i32* %102, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  %104 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %105 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %106 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %105)
  %107 = load i32, i32* @OID_AUTO, align 4
  %108 = load i32, i32* @CTLFLAG_RD, align 4
  %109 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %110 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %109, i32 0, i32 14
  %111 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %104, i32 %106, i32 %107, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %108, i32* %110, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0))
  %112 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %113 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %114 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %113)
  %115 = load i32, i32* @OID_AUTO, align 4
  %116 = load i32, i32* @CTLFLAG_RD, align 4
  %117 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %118 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %117, i32 0, i32 13
  %119 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %112, i32 %114, i32 %115, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 %116, i32* %118, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.16, i64 0, i64 0))
  %120 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %121 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %122 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %121)
  %123 = load i32, i32* @OID_AUTO, align 4
  %124 = load i32, i32* @CTLFLAG_RD, align 4
  %125 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %126 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %125, i32 0, i32 12
  %127 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %120, i32 %122, i32 %123, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 %124, i32* %126, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i64 0, i64 0))
  %128 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %129 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %130 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %129)
  %131 = load i32, i32* @OID_AUTO, align 4
  %132 = load i32, i32* @CTLFLAG_RD, align 4
  %133 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %134 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %133, i32 0, i32 11
  %135 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %128, i32 %130, i32 %131, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i32 %132, i32* %134, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i64 0, i64 0))
  %136 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %137 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %138 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %137)
  %139 = load i32, i32* @OID_AUTO, align 4
  %140 = load i32, i32* @CTLFLAG_RW, align 4
  %141 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %142 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %141, i32 0, i32 10
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %145 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %144, i32 0, i32 10
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @strlen(i32 %146)
  %148 = call i32 @SYSCTL_ADD_STRING(%struct.sysctl_ctx_list* %136, i32 %138, i32 %139, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i32 %140, i32 %143, i32 %147, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0))
  %149 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %150 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %151 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %150)
  %152 = load i32, i32* @OID_AUTO, align 4
  %153 = load i32, i32* @CTLFLAG_RW, align 4
  %154 = load i32, i32* @MPS_DRIVER_VERSION, align 4
  %155 = load i32, i32* @MPS_DRIVER_VERSION, align 4
  %156 = call i32 @strlen(i32 %155)
  %157 = call i32 @SYSCTL_ADD_STRING(%struct.sysctl_ctx_list* %149, i32 %151, i32 %152, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i32 %153, i32 %154, i32 %156, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0))
  %158 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %159 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %160 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %159)
  %161 = load i32, i32* @OID_AUTO, align 4
  %162 = load i32, i32* @CTLFLAG_RD, align 4
  %163 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %164 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %163, i32 0, i32 9
  %165 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %158, i32 %160, i32 %161, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i32 %162, i32* %164, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i64 0, i64 0))
  %166 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %167 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %168 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %167)
  %169 = load i32, i32* @OID_AUTO, align 4
  %170 = load i32, i32* @CTLFLAG_RD, align 4
  %171 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %172 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %171, i32 0, i32 8
  %173 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %166, i32 %168, i32 %169, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0), i32 %170, i32* %172, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0))
  %174 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %175 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %176 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %175)
  %177 = load i32, i32* @OID_AUTO, align 4
  %178 = load i32, i32* @CTLFLAG_RD, align 4
  %179 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %180 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %179, i32 0, i32 7
  %181 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %174, i32 %176, i32 %177, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i32 %178, i32* %180, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i64 0, i64 0))
  %182 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %183 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %184 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %183)
  %185 = load i32, i32* @OID_AUTO, align 4
  %186 = load i32, i32* @CTLFLAG_RD, align 4
  %187 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %188 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %187, i32 0, i32 6
  %189 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %182, i32 %184, i32 %185, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i64 0, i64 0), i32 %186, i32* %188, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.32, i64 0, i64 0))
  %190 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %191 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %192 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %191)
  %193 = load i32, i32* @OID_AUTO, align 4
  %194 = load i32, i32* @CTLFLAG_RD, align 4
  %195 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %196 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %195, i32 0, i32 5
  %197 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %190, i32 %192, i32 %193, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i32 %194, i32* %196, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.34, i64 0, i64 0))
  %198 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %199 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %200 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %199)
  %201 = load i32, i32* @OID_AUTO, align 4
  %202 = load i32, i32* @CTLFLAG_RD, align 4
  %203 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %204 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %203, i32 0, i32 4
  %205 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %198, i32 %200, i32 %201, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0), i32 %202, i32* %204, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.36, i64 0, i64 0))
  %206 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %207 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %208 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %207)
  %209 = load i32, i32* @OID_AUTO, align 4
  %210 = load i32, i32* @CTLFLAG_RW, align 4
  %211 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %212 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %211, i32 0, i32 3
  %213 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %206, i32 %208, i32 %209, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i64 0, i64 0), i32 %210, i32* %212, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i64 0, i64 0))
  %214 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %215 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %216 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %215)
  %217 = load i32, i32* @OID_AUTO, align 4
  %218 = load i32, i32* @CTLFLAG_RD, align 4
  %219 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %220 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %219, i32 0, i32 2
  %221 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %214, i32 %216, i32 %217, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i64 0, i64 0), i32 %218, i32* %220, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.40, i64 0, i64 0))
  %222 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %223 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %224 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %223)
  %225 = load i32, i32* @OID_AUTO, align 4
  %226 = load i32, i32* @CTLFLAG_RD, align 4
  %227 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %228 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %227, i32 0, i32 1
  %229 = load i32, i32* @DEFAULT_SPINUP_WAIT, align 4
  %230 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %222, i32 %224, i32 %225, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i64 0, i64 0), i32 %226, i32* %228, i32 %229, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.42, i64 0, i64 0))
  %231 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %232 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %233 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %232)
  %234 = load i32, i32* @OID_AUTO, align 4
  %235 = load i32, i32* @CTLTYPE_STRING, align 4
  %236 = load i32, i32* @CTLFLAG_RD, align 4
  %237 = or i32 %235, %236
  %238 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %239 = load i32, i32* @mps_mapping_dump, align 4
  %240 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %231, i32 %233, i32 %234, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.43, i64 0, i64 0), i32 %237, %struct.mps_softc* %238, i32 0, i32 %239, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i64 0, i64 0))
  %241 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %242 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %243 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %242)
  %244 = load i32, i32* @OID_AUTO, align 4
  %245 = load i32, i32* @CTLTYPE_STRING, align 4
  %246 = load i32, i32* @CTLFLAG_RD, align 4
  %247 = or i32 %245, %246
  %248 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %249 = load i32, i32* @mps_mapping_encl_dump, align 4
  %250 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %241, i32 %243, i32 %244, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i64 0, i64 0), i32 %247, %struct.mps_softc* %248, i32 0, i32 %249, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.46, i64 0, i64 0))
  %251 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %252 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %253 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %252)
  %254 = load i32, i32* @OID_AUTO, align 4
  %255 = load i32, i32* @CTLTYPE_OPAQUE, align 4
  %256 = load i32, i32* @CTLFLAG_RD, align 4
  %257 = or i32 %255, %256
  %258 = load i32, i32* @CTLFLAG_SKIP, align 4
  %259 = or i32 %257, %258
  %260 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %261 = load i32, i32* @mps_dump_reqs, align 4
  %262 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %251, i32 %253, i32 %254, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i64 0, i64 0), i32 %259, %struct.mps_softc* %260, i32 0, i32 %261, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.49, i64 0, i64 0))
  %263 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %264 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %265 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %264)
  %266 = load i32, i32* @OID_AUTO, align 4
  %267 = load i32, i32* @CTLFLAG_RD, align 4
  %268 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %269 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %268, i32 0, i32 0
  %270 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %263, i32 %265, i32 %266, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i64 0, i64 0), i32 %267, i32* %269, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.51, i64 0, i64 0))
  br label %271

271:                                              ; preds = %59, %52
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @sysctl_ctx_init(%struct.sysctl_ctx_list*) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_STATIC_CHILDREN(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, %struct.mps_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_STRING(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
