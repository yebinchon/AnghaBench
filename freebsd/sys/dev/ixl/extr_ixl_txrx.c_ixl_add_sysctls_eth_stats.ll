; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_txrx.c_ixl_add_sysctls_eth_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_txrx.c_ixl_add_sysctls_eth_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }
%struct.i40e_eth_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ixl_sysctl_info = type { i8*, i8*, i64, i32, i32, i32* }

@.str = private unnamed_addr constant [17 x i8] c"good_octets_rcvd\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Good Octets Received\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ucast_pkts_rcvd\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Unicast Packets Received\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"mcast_pkts_rcvd\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Multicast Packets Received\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"bcast_pkts_rcvd\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Broadcast Packets Received\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"rx_discards\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Discarded RX packets\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"good_octets_txd\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Good Octets Transmitted\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"ucast_pkts_txd\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Unicast Packets Transmitted\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"mcast_pkts_txd\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"Multicast Packets Transmitted\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"bcast_pkts_txd\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"Broadcast Packets Transmitted\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_add_sysctls_eth_stats(%struct.sysctl_ctx_list* %0, %struct.sysctl_oid_list* %1, %struct.i40e_eth_stats* %2) #0 {
  %4 = alloca %struct.sysctl_ctx_list*, align 8
  %5 = alloca %struct.sysctl_oid_list*, align 8
  %6 = alloca %struct.i40e_eth_stats*, align 8
  %7 = alloca [10 x %struct.ixl_sysctl_info], align 16
  %8 = alloca %struct.ixl_sysctl_info*, align 8
  store %struct.sysctl_ctx_list* %0, %struct.sysctl_ctx_list** %4, align 8
  store %struct.sysctl_oid_list* %1, %struct.sysctl_oid_list** %5, align 8
  store %struct.i40e_eth_stats* %2, %struct.i40e_eth_stats** %6, align 8
  %9 = getelementptr inbounds [10 x %struct.ixl_sysctl_info], [10 x %struct.ixl_sysctl_info]* %7, i64 0, i64 0
  %10 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %9, i32 0, i32 0
  %11 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %12 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %11, i32 0, i32 8
  %13 = bitcast i32* %12 to i8*
  store i8* %13, i8** %10, align 8
  %14 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %9, i32 0, i32 1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %15 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %9, i32 0, i32 2
  store i64 ptrtoint ([21 x i8]* @.str.1 to i64), i64* %15, align 8
  %16 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %9, i32 0, i32 3
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %9, i32 0, i32 4
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %9, i32 0, i32 5
  store i32* null, i32** %18, align 8
  %19 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %9, i64 1
  %20 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %19, i32 0, i32 0
  %21 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %22 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %21, i32 0, i32 7
  %23 = bitcast i32* %22 to i8*
  store i8* %23, i8** %20, align 8
  %24 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %19, i32 0, i32 1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %24, align 8
  %25 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %19, i32 0, i32 2
  store i64 ptrtoint ([25 x i8]* @.str.3 to i64), i64* %25, align 8
  %26 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %19, i32 0, i32 3
  store i32 0, i32* %26, align 8
  %27 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %19, i32 0, i32 4
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %19, i32 0, i32 5
  store i32* null, i32** %28, align 8
  %29 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %19, i64 1
  %30 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %29, i32 0, i32 0
  %31 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %32 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %31, i32 0, i32 6
  %33 = bitcast i32* %32 to i8*
  store i8* %33, i8** %30, align 8
  %34 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %29, i32 0, i32 1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8** %34, align 8
  %35 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %29, i32 0, i32 2
  store i64 ptrtoint ([27 x i8]* @.str.5 to i64), i64* %35, align 8
  %36 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %29, i32 0, i32 3
  store i32 0, i32* %36, align 8
  %37 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %29, i32 0, i32 4
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %29, i32 0, i32 5
  store i32* null, i32** %38, align 8
  %39 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %29, i64 1
  %40 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %39, i32 0, i32 0
  %41 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %42 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %41, i32 0, i32 5
  %43 = bitcast i32* %42 to i8*
  store i8* %43, i8** %40, align 8
  %44 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %39, i32 0, i32 1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8** %44, align 8
  %45 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %39, i32 0, i32 2
  store i64 ptrtoint ([27 x i8]* @.str.7 to i64), i64* %45, align 8
  %46 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %39, i32 0, i32 3
  store i32 0, i32* %46, align 8
  %47 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %39, i32 0, i32 4
  store i32 0, i32* %47, align 4
  %48 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %39, i32 0, i32 5
  store i32* null, i32** %48, align 8
  %49 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %39, i64 1
  %50 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %49, i32 0, i32 0
  %51 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %52 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %51, i32 0, i32 4
  %53 = bitcast i32* %52 to i8*
  store i8* %53, i8** %50, align 8
  %54 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %49, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %54, align 8
  %55 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %49, i32 0, i32 2
  store i64 ptrtoint ([21 x i8]* @.str.9 to i64), i64* %55, align 8
  %56 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %49, i32 0, i32 3
  store i32 0, i32* %56, align 8
  %57 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %49, i32 0, i32 4
  store i32 0, i32* %57, align 4
  %58 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %49, i32 0, i32 5
  store i32* null, i32** %58, align 8
  %59 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %49, i64 1
  %60 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %59, i32 0, i32 0
  %61 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %62 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %61, i32 0, i32 3
  %63 = bitcast i32* %62 to i8*
  store i8* %63, i8** %60, align 8
  %64 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %59, i32 0, i32 1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8** %64, align 8
  %65 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %59, i32 0, i32 2
  store i64 ptrtoint ([24 x i8]* @.str.11 to i64), i64* %65, align 8
  %66 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %59, i32 0, i32 3
  store i32 0, i32* %66, align 8
  %67 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %59, i32 0, i32 4
  store i32 0, i32* %67, align 4
  %68 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %59, i32 0, i32 5
  store i32* null, i32** %68, align 8
  %69 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %59, i64 1
  %70 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %69, i32 0, i32 0
  %71 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %72 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %71, i32 0, i32 2
  %73 = bitcast i32* %72 to i8*
  store i8* %73, i8** %70, align 8
  %74 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %69, i32 0, i32 1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8** %74, align 8
  %75 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %69, i32 0, i32 2
  store i64 ptrtoint ([28 x i8]* @.str.13 to i64), i64* %75, align 8
  %76 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %69, i32 0, i32 3
  store i32 0, i32* %76, align 8
  %77 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %69, i32 0, i32 4
  store i32 0, i32* %77, align 4
  %78 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %69, i32 0, i32 5
  store i32* null, i32** %78, align 8
  %79 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %69, i64 1
  %80 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %79, i32 0, i32 0
  %81 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %82 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %81, i32 0, i32 1
  %83 = bitcast i32* %82 to i8*
  store i8* %83, i8** %80, align 8
  %84 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %79, i32 0, i32 1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8** %84, align 8
  %85 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %79, i32 0, i32 2
  store i64 ptrtoint ([30 x i8]* @.str.15 to i64), i64* %85, align 8
  %86 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %79, i32 0, i32 3
  store i32 0, i32* %86, align 8
  %87 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %79, i32 0, i32 4
  store i32 0, i32* %87, align 4
  %88 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %79, i32 0, i32 5
  store i32* null, i32** %88, align 8
  %89 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %79, i64 1
  %90 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %89, i32 0, i32 0
  %91 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %6, align 8
  %92 = getelementptr inbounds %struct.i40e_eth_stats, %struct.i40e_eth_stats* %91, i32 0, i32 0
  %93 = bitcast i32* %92 to i8*
  store i8* %93, i8** %90, align 8
  %94 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %89, i32 0, i32 1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i8** %94, align 8
  %95 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %89, i32 0, i32 2
  store i64 ptrtoint ([30 x i8]* @.str.17 to i64), i64* %95, align 8
  %96 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %89, i32 0, i32 3
  store i32 0, i32* %96, align 8
  %97 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %89, i32 0, i32 4
  store i32 0, i32* %97, align 4
  %98 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %89, i32 0, i32 5
  store i32* null, i32** %98, align 8
  %99 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %89, i64 1
  %100 = bitcast %struct.ixl_sysctl_info* %99 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %100, i8 0, i64 40, i1 false)
  %101 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %99, i32 0, i32 2
  store i64 0, i64* %101, align 8
  %102 = getelementptr inbounds [10 x %struct.ixl_sysctl_info], [10 x %struct.ixl_sysctl_info]* %7, i64 0, i64 0
  store %struct.ixl_sysctl_info* %102, %struct.ixl_sysctl_info** %8, align 8
  br label %103

103:                                              ; preds = %108, %3
  %104 = load %struct.ixl_sysctl_info*, %struct.ixl_sysctl_info** %8, align 8
  %105 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %125

108:                                              ; preds = %103
  %109 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %110 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %111 = load i32, i32* @OID_AUTO, align 4
  %112 = load %struct.ixl_sysctl_info*, %struct.ixl_sysctl_info** %8, align 8
  %113 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @CTLFLAG_RD, align 4
  %116 = load %struct.ixl_sysctl_info*, %struct.ixl_sysctl_info** %8, align 8
  %117 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.ixl_sysctl_info*, %struct.ixl_sysctl_info** %8, align 8
  %120 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %109, %struct.sysctl_oid_list* %110, i32 %111, i32 %114, i32 %115, i64 %118, i32 %121)
  %123 = load %struct.ixl_sysctl_info*, %struct.ixl_sysctl_info** %8, align 8
  %124 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %123, i32 1
  store %struct.ixl_sysctl_info* %124, %struct.ixl_sysctl_info** %8, align 8
  br label %103

125:                                              ; preds = %103
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i32, i32, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
