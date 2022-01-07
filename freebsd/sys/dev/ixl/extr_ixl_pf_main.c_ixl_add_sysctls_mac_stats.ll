; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_add_sysctls_mac_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_add_sysctls_mac_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }
%struct.i40e_hw_port_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.i40e_eth_stats }
%struct.i40e_eth_stats = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.ixl_sysctl_info = type { i8*, i8*, i64, i32, i32, i32* }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Mac Statistics\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"crc_errors\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"CRC Errors\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"illegal_bytes\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Illegal Byte Errors\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"local_faults\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"MAC Local Faults\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"remote_faults\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"MAC Remote Faults\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"rx_length_errors\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Receive Length Errors\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"rx_frames_64\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"64 byte frames received\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"rx_frames_65_127\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"65-127 byte frames received\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"rx_frames_128_255\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"128-255 byte frames received\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"rx_frames_256_511\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"256-511 byte frames received\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"rx_frames_512_1023\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"512-1023 byte frames received\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"rx_frames_1024_1522\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"1024-1522 byte frames received\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"rx_frames_big\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"1523-9522 byte frames received\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"rx_undersize\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"Undersized packets received\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"rx_fragmented\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"Fragmented packets received\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"rx_oversized\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"Oversized packets received\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"rx_jabber\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"Received Jabber\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"checksum_errors\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"Checksum Errors\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"tx_frames_64\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"64 byte frames transmitted\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"tx_frames_65_127\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"65-127 byte frames transmitted\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"tx_frames_128_255\00", align 1
@.str.41 = private unnamed_addr constant [32 x i8] c"128-255 byte frames transmitted\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"tx_frames_256_511\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"256-511 byte frames transmitted\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"tx_frames_512_1023\00", align 1
@.str.45 = private unnamed_addr constant [33 x i8] c"512-1023 byte frames transmitted\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"tx_frames_1024_1522\00", align 1
@.str.47 = private unnamed_addr constant [34 x i8] c"1024-1522 byte frames transmitted\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"tx_frames_big\00", align 1
@.str.49 = private unnamed_addr constant [34 x i8] c"1523-9522 byte frames transmitted\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"xon_txd\00", align 1
@.str.51 = private unnamed_addr constant [21 x i8] c"Link XON transmitted\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"xon_recvd\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"Link XON received\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"xoff_txd\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"Link XOFF transmitted\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"xoff_recvd\00", align 1
@.str.57 = private unnamed_addr constant [19 x i8] c"Link XOFF received\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_add_sysctls_mac_stats(%struct.sysctl_ctx_list* %0, %struct.sysctl_oid_list* %1, %struct.i40e_hw_port_stats* %2) #0 {
  %4 = alloca %struct.sysctl_ctx_list*, align 8
  %5 = alloca %struct.sysctl_oid_list*, align 8
  %6 = alloca %struct.i40e_hw_port_stats*, align 8
  %7 = alloca %struct.sysctl_oid*, align 8
  %8 = alloca %struct.sysctl_oid_list*, align 8
  %9 = alloca %struct.i40e_eth_stats*, align 8
  %10 = alloca [29 x %struct.ixl_sysctl_info], align 16
  %11 = alloca %struct.ixl_sysctl_info*, align 8
  store %struct.sysctl_ctx_list* %0, %struct.sysctl_ctx_list** %4, align 8
  store %struct.sysctl_oid_list* %1, %struct.sysctl_oid_list** %5, align 8
  store %struct.i40e_hw_port_stats* %2, %struct.i40e_hw_port_stats** %6, align 8
  %12 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %13 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %14 = load i32, i32* @OID_AUTO, align 4
  %15 = load i32, i32* @CTLFLAG_RD, align 4
  %16 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %12, %struct.sysctl_oid_list* %13, i32 %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %15, i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sysctl_oid* %16, %struct.sysctl_oid** %7, align 8
  %17 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %18 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %17)
  store %struct.sysctl_oid_list* %18, %struct.sysctl_oid_list** %8, align 8
  %19 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %6, align 8
  %20 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %19, i32 0, i32 28
  store %struct.i40e_eth_stats* %20, %struct.i40e_eth_stats** %9, align 8
  %21 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %22 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %8, align 8
  %23 = load %struct.i40e_eth_stats*, %struct.i40e_eth_stats** %9, align 8
  %24 = call i32 @ixl_add_sysctls_eth_stats(%struct.sysctl_ctx_list* %21, %struct.sysctl_oid_list* %22, %struct.i40e_eth_stats* %23)
  %25 = getelementptr inbounds [29 x %struct.ixl_sysctl_info], [29 x %struct.ixl_sysctl_info]* %10, i64 0, i64 0
  %26 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %25, i32 0, i32 0
  %27 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %6, align 8
  %28 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %27, i32 0, i32 27
  %29 = bitcast i32* %28 to i8*
  store i8* %29, i8** %26, align 8
  %30 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %25, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %30, align 8
  %31 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %25, i32 0, i32 2
  store i64 ptrtoint ([11 x i8]* @.str.3 to i64), i64* %31, align 8
  %32 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %25, i32 0, i32 3
  store i32 0, i32* %32, align 8
  %33 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %25, i32 0, i32 4
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %25, i32 0, i32 5
  store i32* null, i32** %34, align 8
  %35 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %25, i64 1
  %36 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %35, i32 0, i32 0
  %37 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %6, align 8
  %38 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %37, i32 0, i32 26
  %39 = bitcast i32* %38 to i8*
  store i8* %39, i8** %36, align 8
  %40 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %35, i32 0, i32 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %40, align 8
  %41 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %35, i32 0, i32 2
  store i64 ptrtoint ([20 x i8]* @.str.5 to i64), i64* %41, align 8
  %42 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %35, i32 0, i32 3
  store i32 0, i32* %42, align 8
  %43 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %35, i32 0, i32 4
  store i32 0, i32* %43, align 4
  %44 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %35, i32 0, i32 5
  store i32* null, i32** %44, align 8
  %45 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %35, i64 1
  %46 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %45, i32 0, i32 0
  %47 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %6, align 8
  %48 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %47, i32 0, i32 25
  %49 = bitcast i32* %48 to i8*
  store i8* %49, i8** %46, align 8
  %50 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %45, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8** %50, align 8
  %51 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %45, i32 0, i32 2
  store i64 ptrtoint ([17 x i8]* @.str.7 to i64), i64* %51, align 8
  %52 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %45, i32 0, i32 3
  store i32 0, i32* %52, align 8
  %53 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %45, i32 0, i32 4
  store i32 0, i32* %53, align 4
  %54 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %45, i32 0, i32 5
  store i32* null, i32** %54, align 8
  %55 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %45, i64 1
  %56 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %55, i32 0, i32 0
  %57 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %6, align 8
  %58 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %57, i32 0, i32 24
  %59 = bitcast i32* %58 to i8*
  store i8* %59, i8** %56, align 8
  %60 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %55, i32 0, i32 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8** %60, align 8
  %61 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %55, i32 0, i32 2
  store i64 ptrtoint ([18 x i8]* @.str.9 to i64), i64* %61, align 8
  %62 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %55, i32 0, i32 3
  store i32 0, i32* %62, align 8
  %63 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %55, i32 0, i32 4
  store i32 0, i32* %63, align 4
  %64 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %55, i32 0, i32 5
  store i32* null, i32** %64, align 8
  %65 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %55, i64 1
  %66 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %65, i32 0, i32 0
  %67 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %6, align 8
  %68 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %67, i32 0, i32 23
  %69 = bitcast i32* %68 to i8*
  store i8* %69, i8** %66, align 8
  %70 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %65, i32 0, i32 1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8** %70, align 8
  %71 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %65, i32 0, i32 2
  store i64 ptrtoint ([22 x i8]* @.str.11 to i64), i64* %71, align 8
  %72 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %65, i32 0, i32 3
  store i32 0, i32* %72, align 8
  %73 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %65, i32 0, i32 4
  store i32 0, i32* %73, align 4
  %74 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %65, i32 0, i32 5
  store i32* null, i32** %74, align 8
  %75 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %65, i64 1
  %76 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %75, i32 0, i32 0
  %77 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %6, align 8
  %78 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %77, i32 0, i32 22
  %79 = bitcast i32* %78 to i8*
  store i8* %79, i8** %76, align 8
  %80 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %75, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8** %80, align 8
  %81 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %75, i32 0, i32 2
  store i64 ptrtoint ([24 x i8]* @.str.13 to i64), i64* %81, align 8
  %82 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %75, i32 0, i32 3
  store i32 0, i32* %82, align 8
  %83 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %75, i32 0, i32 4
  store i32 0, i32* %83, align 4
  %84 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %75, i32 0, i32 5
  store i32* null, i32** %84, align 8
  %85 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %75, i64 1
  %86 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %85, i32 0, i32 0
  %87 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %6, align 8
  %88 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %87, i32 0, i32 21
  %89 = bitcast i32* %88 to i8*
  store i8* %89, i8** %86, align 8
  %90 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %85, i32 0, i32 1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8** %90, align 8
  %91 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %85, i32 0, i32 2
  store i64 ptrtoint ([28 x i8]* @.str.15 to i64), i64* %91, align 8
  %92 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %85, i32 0, i32 3
  store i32 0, i32* %92, align 8
  %93 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %85, i32 0, i32 4
  store i32 0, i32* %93, align 4
  %94 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %85, i32 0, i32 5
  store i32* null, i32** %94, align 8
  %95 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %85, i64 1
  %96 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %95, i32 0, i32 0
  %97 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %6, align 8
  %98 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %97, i32 0, i32 20
  %99 = bitcast i32* %98 to i8*
  store i8* %99, i8** %96, align 8
  %100 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %95, i32 0, i32 1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i8** %100, align 8
  %101 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %95, i32 0, i32 2
  store i64 ptrtoint ([29 x i8]* @.str.17 to i64), i64* %101, align 8
  %102 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %95, i32 0, i32 3
  store i32 0, i32* %102, align 8
  %103 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %95, i32 0, i32 4
  store i32 0, i32* %103, align 4
  %104 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %95, i32 0, i32 5
  store i32* null, i32** %104, align 8
  %105 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %95, i64 1
  %106 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %105, i32 0, i32 0
  %107 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %6, align 8
  %108 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %107, i32 0, i32 19
  %109 = bitcast i32* %108 to i8*
  store i8* %109, i8** %106, align 8
  %110 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %105, i32 0, i32 1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i8** %110, align 8
  %111 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %105, i32 0, i32 2
  store i64 ptrtoint ([29 x i8]* @.str.19 to i64), i64* %111, align 8
  %112 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %105, i32 0, i32 3
  store i32 0, i32* %112, align 8
  %113 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %105, i32 0, i32 4
  store i32 0, i32* %113, align 4
  %114 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %105, i32 0, i32 5
  store i32* null, i32** %114, align 8
  %115 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %105, i64 1
  %116 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %115, i32 0, i32 0
  %117 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %6, align 8
  %118 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %117, i32 0, i32 18
  %119 = bitcast i32* %118 to i8*
  store i8* %119, i8** %116, align 8
  %120 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %115, i32 0, i32 1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i8** %120, align 8
  %121 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %115, i32 0, i32 2
  store i64 ptrtoint ([30 x i8]* @.str.21 to i64), i64* %121, align 8
  %122 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %115, i32 0, i32 3
  store i32 0, i32* %122, align 8
  %123 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %115, i32 0, i32 4
  store i32 0, i32* %123, align 4
  %124 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %115, i32 0, i32 5
  store i32* null, i32** %124, align 8
  %125 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %115, i64 1
  %126 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %125, i32 0, i32 0
  %127 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %6, align 8
  %128 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %127, i32 0, i32 17
  %129 = bitcast i32* %128 to i8*
  store i8* %129, i8** %126, align 8
  %130 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %125, i32 0, i32 1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i8** %130, align 8
  %131 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %125, i32 0, i32 2
  store i64 ptrtoint ([31 x i8]* @.str.23 to i64), i64* %131, align 8
  %132 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %125, i32 0, i32 3
  store i32 0, i32* %132, align 8
  %133 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %125, i32 0, i32 4
  store i32 0, i32* %133, align 4
  %134 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %125, i32 0, i32 5
  store i32* null, i32** %134, align 8
  %135 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %125, i64 1
  %136 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %135, i32 0, i32 0
  %137 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %6, align 8
  %138 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %137, i32 0, i32 16
  %139 = bitcast i32* %138 to i8*
  store i8* %139, i8** %136, align 8
  %140 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %135, i32 0, i32 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i8** %140, align 8
  %141 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %135, i32 0, i32 2
  store i64 ptrtoint ([31 x i8]* @.str.25 to i64), i64* %141, align 8
  %142 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %135, i32 0, i32 3
  store i32 0, i32* %142, align 8
  %143 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %135, i32 0, i32 4
  store i32 0, i32* %143, align 4
  %144 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %135, i32 0, i32 5
  store i32* null, i32** %144, align 8
  %145 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %135, i64 1
  %146 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %145, i32 0, i32 0
  %147 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %6, align 8
  %148 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %147, i32 0, i32 15
  %149 = bitcast i32* %148 to i8*
  store i8* %149, i8** %146, align 8
  %150 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %145, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i8** %150, align 8
  %151 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %145, i32 0, i32 2
  store i64 ptrtoint ([28 x i8]* @.str.27 to i64), i64* %151, align 8
  %152 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %145, i32 0, i32 3
  store i32 0, i32* %152, align 8
  %153 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %145, i32 0, i32 4
  store i32 0, i32* %153, align 4
  %154 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %145, i32 0, i32 5
  store i32* null, i32** %154, align 8
  %155 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %145, i64 1
  %156 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %155, i32 0, i32 0
  %157 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %6, align 8
  %158 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %157, i32 0, i32 14
  %159 = bitcast i32* %158 to i8*
  store i8* %159, i8** %156, align 8
  %160 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %155, i32 0, i32 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i8** %160, align 8
  %161 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %155, i32 0, i32 2
  store i64 ptrtoint ([28 x i8]* @.str.29 to i64), i64* %161, align 8
  %162 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %155, i32 0, i32 3
  store i32 0, i32* %162, align 8
  %163 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %155, i32 0, i32 4
  store i32 0, i32* %163, align 4
  %164 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %155, i32 0, i32 5
  store i32* null, i32** %164, align 8
  %165 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %155, i64 1
  %166 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %165, i32 0, i32 0
  %167 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %6, align 8
  %168 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %167, i32 0, i32 13
  %169 = bitcast i32* %168 to i8*
  store i8* %169, i8** %166, align 8
  %170 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %165, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i8** %170, align 8
  %171 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %165, i32 0, i32 2
  store i64 ptrtoint ([27 x i8]* @.str.31 to i64), i64* %171, align 8
  %172 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %165, i32 0, i32 3
  store i32 0, i32* %172, align 8
  %173 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %165, i32 0, i32 4
  store i32 0, i32* %173, align 4
  %174 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %165, i32 0, i32 5
  store i32* null, i32** %174, align 8
  %175 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %165, i64 1
  %176 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %175, i32 0, i32 0
  %177 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %6, align 8
  %178 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %177, i32 0, i32 12
  %179 = bitcast i32* %178 to i8*
  store i8* %179, i8** %176, align 8
  %180 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %175, i32 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0), i8** %180, align 8
  %181 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %175, i32 0, i32 2
  store i64 ptrtoint ([16 x i8]* @.str.33 to i64), i64* %181, align 8
  %182 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %175, i32 0, i32 3
  store i32 0, i32* %182, align 8
  %183 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %175, i32 0, i32 4
  store i32 0, i32* %183, align 4
  %184 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %175, i32 0, i32 5
  store i32* null, i32** %184, align 8
  %185 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %175, i64 1
  %186 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %185, i32 0, i32 0
  %187 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %6, align 8
  %188 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %187, i32 0, i32 11
  %189 = bitcast i32* %188 to i8*
  store i8* %189, i8** %186, align 8
  %190 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %185, i32 0, i32 1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0), i8** %190, align 8
  %191 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %185, i32 0, i32 2
  store i64 ptrtoint ([16 x i8]* @.str.35 to i64), i64* %191, align 8
  %192 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %185, i32 0, i32 3
  store i32 0, i32* %192, align 8
  %193 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %185, i32 0, i32 4
  store i32 0, i32* %193, align 4
  %194 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %185, i32 0, i32 5
  store i32* null, i32** %194, align 8
  %195 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %185, i64 1
  %196 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %195, i32 0, i32 0
  %197 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %6, align 8
  %198 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %197, i32 0, i32 10
  %199 = bitcast i32* %198 to i8*
  store i8* %199, i8** %196, align 8
  %200 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %195, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i64 0, i64 0), i8** %200, align 8
  %201 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %195, i32 0, i32 2
  store i64 ptrtoint ([27 x i8]* @.str.37 to i64), i64* %201, align 8
  %202 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %195, i32 0, i32 3
  store i32 0, i32* %202, align 8
  %203 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %195, i32 0, i32 4
  store i32 0, i32* %203, align 4
  %204 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %195, i32 0, i32 5
  store i32* null, i32** %204, align 8
  %205 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %195, i64 1
  %206 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %205, i32 0, i32 0
  %207 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %6, align 8
  %208 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %207, i32 0, i32 9
  %209 = bitcast i32* %208 to i8*
  store i8* %209, i8** %206, align 8
  %210 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %205, i32 0, i32 1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i8** %210, align 8
  %211 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %205, i32 0, i32 2
  store i64 ptrtoint ([31 x i8]* @.str.39 to i64), i64* %211, align 8
  %212 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %205, i32 0, i32 3
  store i32 0, i32* %212, align 8
  %213 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %205, i32 0, i32 4
  store i32 0, i32* %213, align 4
  %214 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %205, i32 0, i32 5
  store i32* null, i32** %214, align 8
  %215 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %205, i64 1
  %216 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %215, i32 0, i32 0
  %217 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %6, align 8
  %218 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %217, i32 0, i32 8
  %219 = bitcast i32* %218 to i8*
  store i8* %219, i8** %216, align 8
  %220 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %215, i32 0, i32 1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i64 0, i64 0), i8** %220, align 8
  %221 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %215, i32 0, i32 2
  store i64 ptrtoint ([32 x i8]* @.str.41 to i64), i64* %221, align 8
  %222 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %215, i32 0, i32 3
  store i32 0, i32* %222, align 8
  %223 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %215, i32 0, i32 4
  store i32 0, i32* %223, align 4
  %224 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %215, i32 0, i32 5
  store i32* null, i32** %224, align 8
  %225 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %215, i64 1
  %226 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %225, i32 0, i32 0
  %227 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %6, align 8
  %228 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %227, i32 0, i32 7
  %229 = bitcast i32* %228 to i8*
  store i8* %229, i8** %226, align 8
  %230 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %225, i32 0, i32 1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i64 0, i64 0), i8** %230, align 8
  %231 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %225, i32 0, i32 2
  store i64 ptrtoint ([32 x i8]* @.str.43 to i64), i64* %231, align 8
  %232 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %225, i32 0, i32 3
  store i32 0, i32* %232, align 8
  %233 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %225, i32 0, i32 4
  store i32 0, i32* %233, align 4
  %234 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %225, i32 0, i32 5
  store i32* null, i32** %234, align 8
  %235 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %225, i64 1
  %236 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %235, i32 0, i32 0
  %237 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %6, align 8
  %238 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %237, i32 0, i32 6
  %239 = bitcast i32* %238 to i8*
  store i8* %239, i8** %236, align 8
  %240 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %235, i32 0, i32 1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i64 0, i64 0), i8** %240, align 8
  %241 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %235, i32 0, i32 2
  store i64 ptrtoint ([33 x i8]* @.str.45 to i64), i64* %241, align 8
  %242 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %235, i32 0, i32 3
  store i32 0, i32* %242, align 8
  %243 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %235, i32 0, i32 4
  store i32 0, i32* %243, align 4
  %244 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %235, i32 0, i32 5
  store i32* null, i32** %244, align 8
  %245 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %235, i64 1
  %246 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %245, i32 0, i32 0
  %247 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %6, align 8
  %248 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %247, i32 0, i32 5
  %249 = bitcast i32* %248 to i8*
  store i8* %249, i8** %246, align 8
  %250 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %245, i32 0, i32 1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i64 0, i64 0), i8** %250, align 8
  %251 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %245, i32 0, i32 2
  store i64 ptrtoint ([34 x i8]* @.str.47 to i64), i64* %251, align 8
  %252 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %245, i32 0, i32 3
  store i32 0, i32* %252, align 8
  %253 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %245, i32 0, i32 4
  store i32 0, i32* %253, align 4
  %254 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %245, i32 0, i32 5
  store i32* null, i32** %254, align 8
  %255 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %245, i64 1
  %256 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %255, i32 0, i32 0
  %257 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %6, align 8
  %258 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %257, i32 0, i32 4
  %259 = bitcast i32* %258 to i8*
  store i8* %259, i8** %256, align 8
  %260 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %255, i32 0, i32 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i64 0, i64 0), i8** %260, align 8
  %261 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %255, i32 0, i32 2
  store i64 ptrtoint ([34 x i8]* @.str.49 to i64), i64* %261, align 8
  %262 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %255, i32 0, i32 3
  store i32 0, i32* %262, align 8
  %263 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %255, i32 0, i32 4
  store i32 0, i32* %263, align 4
  %264 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %255, i32 0, i32 5
  store i32* null, i32** %264, align 8
  %265 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %255, i64 1
  %266 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %265, i32 0, i32 0
  %267 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %6, align 8
  %268 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %267, i32 0, i32 3
  %269 = bitcast i32* %268 to i8*
  store i8* %269, i8** %266, align 8
  %270 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %265, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i64 0, i64 0), i8** %270, align 8
  %271 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %265, i32 0, i32 2
  store i64 ptrtoint ([21 x i8]* @.str.51 to i64), i64* %271, align 8
  %272 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %265, i32 0, i32 3
  store i32 0, i32* %272, align 8
  %273 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %265, i32 0, i32 4
  store i32 0, i32* %273, align 4
  %274 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %265, i32 0, i32 5
  store i32* null, i32** %274, align 8
  %275 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %265, i64 1
  %276 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %275, i32 0, i32 0
  %277 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %6, align 8
  %278 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %277, i32 0, i32 2
  %279 = bitcast i32* %278 to i8*
  store i8* %279, i8** %276, align 8
  %280 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %275, i32 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i64 0, i64 0), i8** %280, align 8
  %281 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %275, i32 0, i32 2
  store i64 ptrtoint ([18 x i8]* @.str.53 to i64), i64* %281, align 8
  %282 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %275, i32 0, i32 3
  store i32 0, i32* %282, align 8
  %283 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %275, i32 0, i32 4
  store i32 0, i32* %283, align 4
  %284 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %275, i32 0, i32 5
  store i32* null, i32** %284, align 8
  %285 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %275, i64 1
  %286 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %285, i32 0, i32 0
  %287 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %6, align 8
  %288 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %287, i32 0, i32 1
  %289 = bitcast i32* %288 to i8*
  store i8* %289, i8** %286, align 8
  %290 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %285, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i64 0, i64 0), i8** %290, align 8
  %291 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %285, i32 0, i32 2
  store i64 ptrtoint ([22 x i8]* @.str.55 to i64), i64* %291, align 8
  %292 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %285, i32 0, i32 3
  store i32 0, i32* %292, align 8
  %293 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %285, i32 0, i32 4
  store i32 0, i32* %293, align 4
  %294 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %285, i32 0, i32 5
  store i32* null, i32** %294, align 8
  %295 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %285, i64 1
  %296 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %295, i32 0, i32 0
  %297 = load %struct.i40e_hw_port_stats*, %struct.i40e_hw_port_stats** %6, align 8
  %298 = getelementptr inbounds %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats* %297, i32 0, i32 0
  %299 = bitcast i32* %298 to i8*
  store i8* %299, i8** %296, align 8
  %300 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %295, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i64 0, i64 0), i8** %300, align 8
  %301 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %295, i32 0, i32 2
  store i64 ptrtoint ([19 x i8]* @.str.57 to i64), i64* %301, align 8
  %302 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %295, i32 0, i32 3
  store i32 0, i32* %302, align 8
  %303 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %295, i32 0, i32 4
  store i32 0, i32* %303, align 4
  %304 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %295, i32 0, i32 5
  store i32* null, i32** %304, align 8
  %305 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %295, i64 1
  %306 = bitcast %struct.ixl_sysctl_info* %305 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %306, i8 0, i64 40, i1 false)
  %307 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %305, i32 0, i32 2
  store i64 0, i64* %307, align 8
  %308 = getelementptr inbounds [29 x %struct.ixl_sysctl_info], [29 x %struct.ixl_sysctl_info]* %10, i64 0, i64 0
  store %struct.ixl_sysctl_info* %308, %struct.ixl_sysctl_info** %11, align 8
  br label %309

309:                                              ; preds = %314, %3
  %310 = load %struct.ixl_sysctl_info*, %struct.ixl_sysctl_info** %11, align 8
  %311 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %310, i32 0, i32 2
  %312 = load i64, i64* %311, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %331

314:                                              ; preds = %309
  %315 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %316 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %8, align 8
  %317 = load i32, i32* @OID_AUTO, align 4
  %318 = load %struct.ixl_sysctl_info*, %struct.ixl_sysctl_info** %11, align 8
  %319 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %318, i32 0, i32 4
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* @CTLFLAG_RD, align 4
  %322 = load %struct.ixl_sysctl_info*, %struct.ixl_sysctl_info** %11, align 8
  %323 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %322, i32 0, i32 2
  %324 = load i64, i64* %323, align 8
  %325 = load %struct.ixl_sysctl_info*, %struct.ixl_sysctl_info** %11, align 8
  %326 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %325, i32 0, i32 3
  %327 = load i32, i32* %326, align 8
  %328 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %315, %struct.sysctl_oid_list* %316, i32 %317, i32 %320, i32 %321, i64 %324, i32 %327)
  %329 = load %struct.ixl_sysctl_info*, %struct.ixl_sysctl_info** %11, align 8
  %330 = getelementptr inbounds %struct.ixl_sysctl_info, %struct.ixl_sysctl_info* %329, i32 1
  store %struct.ixl_sysctl_info* %330, %struct.ixl_sysctl_info** %11, align 8
  br label %309

331:                                              ; preds = %309
  ret void
}

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @ixl_add_sysctls_eth_stats(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, %struct.i40e_eth_stats*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
