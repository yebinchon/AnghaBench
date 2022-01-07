; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nge/extr_if_nge.c_nge_sysctl_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nge/extr_if_nge.c_nge_sysctl_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nge_softc = type { i32, %struct.nge_stats, i32 }
%struct.nge_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"int_holdoff\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@sysctl_hw_nge_int_holdoff = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"NGE interrupt moderation\00", align 1
@NGE_INT_HOLDOFF_DEFAULT = common dso_local global i32 0, align 4
@NGE_INT_HOLDOFF_MIN = common dso_local global i32 0, align 4
@NGE_INT_HOLDOFF_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"int_holdoff value out of range; using default: %d(%d us)\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"NGE statistics\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Rx MAC statistics\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"pkts_errs\00", align 1
@.str.9 = private unnamed_addr constant [59 x i8] c"Packet errors including both wire errors and FIFO overruns\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"crc_errs\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"CRC errors\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"fifo_oflows\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"FIFO overflows\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"align_errs\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"Frame alignment errors\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"sym_errs\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"One or more symbol errors\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"pkts_jumbos\00", align 1
@.str.19 = private unnamed_addr constant [53 x i8] c"Packets received with length greater than 1518 bytes\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"len_errs\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"In Range Length errors\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"unctl_frames\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"Control frames with unsupported opcode\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"pause\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"Pause frames\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"Tx MAC statistics\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"seq_errs\00", align 1
@.str.29 = private unnamed_addr constant [48 x i8] c"Loss of collision heartbeat during transmission\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nge_softc*)* @nge_sysctl_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nge_sysctl_node(%struct.nge_softc* %0) #0 {
  %2 = alloca %struct.nge_softc*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid_list*, align 8
  %5 = alloca %struct.sysctl_oid_list*, align 8
  %6 = alloca %struct.sysctl_oid*, align 8
  %7 = alloca %struct.nge_stats*, align 8
  %8 = alloca i32, align 4
  store %struct.nge_softc* %0, %struct.nge_softc** %2, align 8
  %9 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %10 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %11)
  store %struct.sysctl_ctx_list* %12, %struct.sysctl_ctx_list** %3, align 8
  %13 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %14 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %15)
  %17 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %16)
  store %struct.sysctl_oid_list* %17, %struct.sysctl_oid_list** %4, align 8
  %18 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %19 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %20 = load i32, i32* @OID_AUTO, align 4
  %21 = load i32, i32* @CTLTYPE_INT, align 4
  %22 = load i32, i32* @CTLFLAG_RW, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %25 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %24, i32 0, i32 0
  %26 = load i32, i32* @sysctl_hw_nge_int_holdoff, align 4
  %27 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %18, %struct.sysctl_oid_list* %19, i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %23, i32* %25, i32 0, i32 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32, i32* @NGE_INT_HOLDOFF_DEFAULT, align 4
  %29 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %30 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %32 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @device_get_name(i32 %33)
  %35 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %36 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @device_get_unit(i32 %37)
  %39 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %40 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %39, i32 0, i32 0
  %41 = call i32 @resource_int_value(i32 %34, i32 %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %1
  %45 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %46 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @NGE_INT_HOLDOFF_MIN, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %52 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @NGE_INT_HOLDOFF_MAX, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %50, %44
  %57 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %58 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @NGE_INT_HOLDOFF_DEFAULT, align 4
  %61 = load i32, i32* @NGE_INT_HOLDOFF_DEFAULT, align 4
  %62 = mul nsw i32 %61, 100
  %63 = call i32 @device_printf(i32 %59, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %60, i32 %62)
  %64 = load i32, i32* @NGE_INT_HOLDOFF_DEFAULT, align 4
  %65 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %66 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %56, %50
  br label %68

68:                                               ; preds = %67, %1
  %69 = load %struct.nge_softc*, %struct.nge_softc** %2, align 8
  %70 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %69, i32 0, i32 1
  store %struct.nge_stats* %70, %struct.nge_stats** %7, align 8
  %71 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %72 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %73 = load i32, i32* @OID_AUTO, align 4
  %74 = load i32, i32* @CTLFLAG_RD, align 4
  %75 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %71, %struct.sysctl_oid_list* %72, i32 %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %74, i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store %struct.sysctl_oid* %75, %struct.sysctl_oid** %6, align 8
  %76 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %77 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %76)
  store %struct.sysctl_oid_list* %77, %struct.sysctl_oid_list** %5, align 8
  %78 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %79 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %80 = load i32, i32* @OID_AUTO, align 4
  %81 = load i32, i32* @CTLFLAG_RD, align 4
  %82 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %78, %struct.sysctl_oid_list* %79, i32 %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %81, i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  store %struct.sysctl_oid* %82, %struct.sysctl_oid** %6, align 8
  %83 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %84 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %83)
  store %struct.sysctl_oid_list* %84, %struct.sysctl_oid_list** %4, align 8
  %85 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %86 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %87 = load %struct.nge_stats*, %struct.nge_stats** %7, align 8
  %88 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %87, i32 0, i32 10
  %89 = call i32 @NGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %85, %struct.sysctl_oid_list* %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32* %88, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9, i64 0, i64 0))
  %90 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %91 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %92 = load %struct.nge_stats*, %struct.nge_stats** %7, align 8
  %93 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %92, i32 0, i32 9
  %94 = call i32 @NGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %90, %struct.sysctl_oid_list* %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32* %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %95 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %96 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %97 = load %struct.nge_stats*, %struct.nge_stats** %7, align 8
  %98 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %97, i32 0, i32 8
  %99 = call i32 @NGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %95, %struct.sysctl_oid_list* %96, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32* %98, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  %100 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %101 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %102 = load %struct.nge_stats*, %struct.nge_stats** %7, align 8
  %103 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %102, i32 0, i32 7
  %104 = call i32 @NGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %100, %struct.sysctl_oid_list* %101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32* %103, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0))
  %105 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %106 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %107 = load %struct.nge_stats*, %struct.nge_stats** %7, align 8
  %108 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %107, i32 0, i32 6
  %109 = call i32 @NGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %105, %struct.sysctl_oid_list* %106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32* %108, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0))
  %110 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %111 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %112 = load %struct.nge_stats*, %struct.nge_stats** %7, align 8
  %113 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %112, i32 0, i32 5
  %114 = call i32 @NGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %110, %struct.sysctl_oid_list* %111, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32* %113, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.19, i64 0, i64 0))
  %115 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %116 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %117 = load %struct.nge_stats*, %struct.nge_stats** %7, align 8
  %118 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %117, i32 0, i32 4
  %119 = call i32 @NGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %115, %struct.sysctl_oid_list* %116, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i32* %118, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0))
  %120 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %121 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %122 = load %struct.nge_stats*, %struct.nge_stats** %7, align 8
  %123 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %122, i32 0, i32 3
  %124 = call i32 @NGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %120, %struct.sysctl_oid_list* %121, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i32* %123, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0))
  %125 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %126 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %127 = load %struct.nge_stats*, %struct.nge_stats** %7, align 8
  %128 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %127, i32 0, i32 2
  %129 = call i32 @NGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %125, %struct.sysctl_oid_list* %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i32* %128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0))
  %130 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %131 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %132 = load i32, i32* @OID_AUTO, align 4
  %133 = load i32, i32* @CTLFLAG_RD, align 4
  %134 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %130, %struct.sysctl_oid_list* %131, i32 %132, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i32 %133, i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0))
  store %struct.sysctl_oid* %134, %struct.sysctl_oid** %6, align 8
  %135 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %136 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %135)
  store %struct.sysctl_oid_list* %136, %struct.sysctl_oid_list** %4, align 8
  %137 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %138 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %139 = load %struct.nge_stats*, %struct.nge_stats** %7, align 8
  %140 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %139, i32 0, i32 1
  %141 = call i32 @NGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %137, %struct.sysctl_oid_list* %138, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i32* %140, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0))
  %142 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %143 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %144 = load %struct.nge_stats*, %struct.nge_stats** %7, align 8
  %145 = getelementptr inbounds %struct.nge_stats, %struct.nge_stats* %144, i32 0, i32 0
  %146 = call i32 @NGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %142, %struct.sysctl_oid_list* %143, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), i32* %145, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.29, i64 0, i64 0))
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i32, i8*, i8*) #1

declare dso_local i32 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @NGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i8*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
