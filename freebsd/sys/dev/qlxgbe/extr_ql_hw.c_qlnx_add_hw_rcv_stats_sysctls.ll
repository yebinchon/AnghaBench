; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlxgbe/extr_ql_hw.c_qlnx_add_hw_rcv_stats_sysctls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlxgbe/extr_ql_hw.c_qlnx_add_hw_rcv_stats_sysctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"stats_hw_rcv\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"total_bytes\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"total_pkts\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"lro_pkt_count\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"sw_pkt_count\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"ip_chksum_err\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"pkts_wo_acntxts\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"pkts_dropped_no_sds_card\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"pkts_dropped_no_sds_host\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"oversized_pkts\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"pkts_dropped_no_rds\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"unxpctd_mcast_pkts\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"re1_fbq_error\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"invalid_mac_addr\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"rds_prime_trys\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"rds_prime_success\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"lro_flows_added\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"lro_flows_deleted\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"lro_flows_active\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"pkts_droped_unknown\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"pkts_cnt_oversized\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @qlnx_add_hw_rcv_stats_sysctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnx_add_hw_rcv_stats_sysctls(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid_list*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %8)
  store %struct.sysctl_ctx_list* %9, %struct.sysctl_ctx_list** %3, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %12)
  %14 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %13)
  store %struct.sysctl_oid_list* %14, %struct.sysctl_oid_list** %4, align 8
  %15 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %16 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %17 = load i32, i32* @OID_AUTO, align 4
  %18 = load i32, i32* @CTLFLAG_RD, align 4
  %19 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %15, %struct.sysctl_oid_list* %16, i32 %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %18, i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store %struct.sysctl_oid* %19, %struct.sysctl_oid** %5, align 8
  %20 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %21 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %20)
  store %struct.sysctl_oid_list* %21, %struct.sysctl_oid_list** %4, align 8
  %22 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %23 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %24 = load i32, i32* @OID_AUTO, align 4
  %25 = load i32, i32* @CTLFLAG_RD, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 19
  %30 = call i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list* %22, %struct.sysctl_oid_list* %23, i32 %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %32 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %33 = load i32, i32* @OID_AUTO, align 4
  %34 = load i32, i32* @CTLFLAG_RD, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 18
  %39 = call i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list* %31, %struct.sysctl_oid_list* %32, i32 %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %34, i32* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %41 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %42 = load i32, i32* @OID_AUTO, align 4
  %43 = load i32, i32* @CTLFLAG_RD, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 17
  %48 = call i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list* %40, %struct.sysctl_oid_list* %41, i32 %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %43, i32* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %49 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %50 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %51 = load i32, i32* @OID_AUTO, align 4
  %52 = load i32, i32* @CTLFLAG_RD, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 16
  %57 = call i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list* %49, %struct.sysctl_oid_list* %50, i32 %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %52, i32* %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %58 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %59 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %60 = load i32, i32* @OID_AUTO, align 4
  %61 = load i32, i32* @CTLFLAG_RD, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 15
  %66 = call i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list* %58, %struct.sysctl_oid_list* %59, i32 %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %61, i32* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %67 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %68 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %69 = load i32, i32* @OID_AUTO, align 4
  %70 = load i32, i32* @CTLFLAG_RD, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 14
  %75 = call i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list* %67, %struct.sysctl_oid_list* %68, i32 %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %70, i32* %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %76 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %77 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %78 = load i32, i32* @OID_AUTO, align 4
  %79 = load i32, i32* @CTLFLAG_RD, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 13
  %84 = call i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list* %76, %struct.sysctl_oid_list* %77, i32 %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %79, i32* %83, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %85 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %86 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %87 = load i32, i32* @OID_AUTO, align 4
  %88 = load i32, i32* @CTLFLAG_RD, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 12
  %93 = call i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list* %85, %struct.sysctl_oid_list* %86, i32 %87, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %88, i32* %92, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %94 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %95 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %96 = load i32, i32* @OID_AUTO, align 4
  %97 = load i32, i32* @CTLFLAG_RD, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 11
  %102 = call i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list* %94, %struct.sysctl_oid_list* %95, i32 %96, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %97, i32* %101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %103 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %104 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %105 = load i32, i32* @OID_AUTO, align 4
  %106 = load i32, i32* @CTLFLAG_RD, align 4
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 10
  %111 = call i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list* %103, %struct.sysctl_oid_list* %104, i32 %105, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %106, i32* %110, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %112 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %113 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %114 = load i32, i32* @OID_AUTO, align 4
  %115 = load i32, i32* @CTLFLAG_RD, align 4
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 9
  %120 = call i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list* %112, %struct.sysctl_oid_list* %113, i32 %114, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32 %115, i32* %119, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %121 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %122 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %123 = load i32, i32* @OID_AUTO, align 4
  %124 = load i32, i32* @CTLFLAG_RD, align 4
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 8
  %129 = call i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list* %121, %struct.sysctl_oid_list* %122, i32 %123, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 %124, i32* %128, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %130 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %131 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %132 = load i32, i32* @OID_AUTO, align 4
  %133 = load i32, i32* @CTLFLAG_RD, align 4
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 7
  %138 = call i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list* %130, %struct.sysctl_oid_list* %131, i32 %132, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 %133, i32* %137, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  %139 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %140 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %141 = load i32, i32* @OID_AUTO, align 4
  %142 = load i32, i32* @CTLFLAG_RD, align 4
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 6
  %147 = call i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list* %139, %struct.sysctl_oid_list* %140, i32 %141, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 %142, i32* %146, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  %148 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %149 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %150 = load i32, i32* @OID_AUTO, align 4
  %151 = load i32, i32* @CTLFLAG_RD, align 4
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 5
  %156 = call i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list* %148, %struct.sysctl_oid_list* %149, i32 %150, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32 %151, i32* %155, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  %157 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %158 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %159 = load i32, i32* @OID_AUTO, align 4
  %160 = load i32, i32* @CTLFLAG_RD, align 4
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 4
  %165 = call i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list* %157, %struct.sysctl_oid_list* %158, i32 %159, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 %160, i32* %164, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  %166 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %167 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %168 = load i32, i32* @OID_AUTO, align 4
  %169 = load i32, i32* @CTLFLAG_RD, align 4
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 3
  %174 = call i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list* %166, %struct.sysctl_oid_list* %167, i32 %168, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i32 %169, i32* %173, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0))
  %175 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %176 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %177 = load i32, i32* @OID_AUTO, align 4
  %178 = load i32, i32* @CTLFLAG_RD, align 4
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 2
  %183 = call i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list* %175, %struct.sysctl_oid_list* %176, i32 %177, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i32 %178, i32* %182, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  %184 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %185 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %186 = load i32, i32* @OID_AUTO, align 4
  %187 = load i32, i32* @CTLFLAG_RD, align 4
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 1
  %192 = call i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list* %184, %struct.sysctl_oid_list* %185, i32 %186, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i32 %187, i32* %191, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0))
  %193 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %194 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %195 = load i32, i32* @OID_AUTO, align 4
  %196 = load i32, i32* @CTLFLAG_RD, align 4
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  %201 = call i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list* %193, %struct.sysctl_oid_list* %194, i32 %195, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i32 %196, i32* %200, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0))
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
