; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_sysctl_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_sysctl_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uath_softc = type { i32, %struct.uath_stat }
%struct.uath_stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"UATH statistics\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"badchunkseqnum\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Bad chunk sequence numbers\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"invalidlen\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Invalid length\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"multichunk\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Multi chunks\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"toobigrxpkt\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Too big rx packets\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"stopinprogress\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Stop in progress\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"crcerrs\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"CRC errors\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"phyerr\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"PHY errors\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"decrypt_crcerr\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Decryption CRC errors\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"decrypt_micerr\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"Decryption Misc errors\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"decomperr\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"Decomp errors\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"keyerr\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"Key errors\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"err\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"Unknown errors\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"cmd_active\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"Active numbers in Command queue\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"cmd_inactive\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"Inactive numbers in Command queue\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"cmd_pending\00", align 1
@.str.31 = private unnamed_addr constant [33 x i8] c"Pending numbers in Command queue\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"cmd_waiting\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"Waiting numbers in Command queue\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"rx_active\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"Active numbers in RX queue\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"rx_inactive\00", align 1
@.str.37 = private unnamed_addr constant [29 x i8] c"Inactive numbers in RX queue\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"tx_active\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"Active numbers in TX queue\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"tx_inactive\00", align 1
@.str.41 = private unnamed_addr constant [29 x i8] c"Inactive numbers in TX queue\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"tx_pending\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"Pending numbers in TX queue\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uath_softc*)* @uath_sysctl_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uath_sysctl_node(%struct.uath_softc* %0) #0 {
  %2 = alloca %struct.uath_softc*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid_list*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  %6 = alloca %struct.uath_stat*, align 8
  store %struct.uath_softc* %0, %struct.uath_softc** %2, align 8
  %7 = load %struct.uath_softc*, %struct.uath_softc** %2, align 8
  %8 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %7, i32 0, i32 1
  store %struct.uath_stat* %8, %struct.uath_stat** %6, align 8
  %9 = load %struct.uath_softc*, %struct.uath_softc** %2, align 8
  %10 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %11)
  store %struct.sysctl_ctx_list* %12, %struct.sysctl_ctx_list** %3, align 8
  %13 = load %struct.uath_softc*, %struct.uath_softc** %2, align 8
  %14 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %15)
  %17 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %16)
  store %struct.sysctl_oid_list* %17, %struct.sysctl_oid_list** %4, align 8
  %18 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %19 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %20 = load i32, i32* @OID_AUTO, align 4
  %21 = load i32, i32* @CTLFLAG_RD, align 4
  %22 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %18, %struct.sysctl_oid_list* %19, i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %21, i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sysctl_oid* %22, %struct.sysctl_oid** %5, align 8
  %23 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %24 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %23)
  store %struct.sysctl_oid_list* %24, %struct.sysctl_oid_list** %4, align 8
  %25 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %26 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %27 = load %struct.uath_stat*, %struct.uath_stat** %6, align 8
  %28 = getelementptr inbounds %struct.uath_stat, %struct.uath_stat* %27, i32 0, i32 20
  %29 = call i32 @UATH_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %25, %struct.sysctl_oid_list* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %30 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %31 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %32 = load %struct.uath_stat*, %struct.uath_stat** %6, align 8
  %33 = getelementptr inbounds %struct.uath_stat, %struct.uath_stat* %32, i32 0, i32 19
  %34 = call i32 @UATH_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %30, %struct.sysctl_oid_list* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32* %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %35 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %36 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %37 = load %struct.uath_stat*, %struct.uath_stat** %6, align 8
  %38 = getelementptr inbounds %struct.uath_stat, %struct.uath_stat* %37, i32 0, i32 18
  %39 = call i32 @UATH_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %35, %struct.sysctl_oid_list* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32* %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %40 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %41 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %42 = load %struct.uath_stat*, %struct.uath_stat** %6, align 8
  %43 = getelementptr inbounds %struct.uath_stat, %struct.uath_stat* %42, i32 0, i32 17
  %44 = call i32 @UATH_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %40, %struct.sysctl_oid_list* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %45 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %46 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %47 = load %struct.uath_stat*, %struct.uath_stat** %6, align 8
  %48 = getelementptr inbounds %struct.uath_stat, %struct.uath_stat* %47, i32 0, i32 16
  %49 = call i32 @UATH_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %45, %struct.sysctl_oid_list* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32* %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %50 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %51 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %52 = load %struct.uath_stat*, %struct.uath_stat** %6, align 8
  %53 = getelementptr inbounds %struct.uath_stat, %struct.uath_stat* %52, i32 0, i32 15
  %54 = call i32 @UATH_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %50, %struct.sysctl_oid_list* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %55 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %56 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %57 = load %struct.uath_stat*, %struct.uath_stat** %6, align 8
  %58 = getelementptr inbounds %struct.uath_stat, %struct.uath_stat* %57, i32 0, i32 14
  %59 = call i32 @UATH_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %55, %struct.sysctl_oid_list* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %60 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %61 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %62 = load %struct.uath_stat*, %struct.uath_stat** %6, align 8
  %63 = getelementptr inbounds %struct.uath_stat, %struct.uath_stat* %62, i32 0, i32 13
  %64 = call i32 @UATH_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %60, %struct.sysctl_oid_list* %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32* %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0))
  %65 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %66 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %67 = load %struct.uath_stat*, %struct.uath_stat** %6, align 8
  %68 = getelementptr inbounds %struct.uath_stat, %struct.uath_stat* %67, i32 0, i32 12
  %69 = call i32 @UATH_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %65, %struct.sysctl_oid_list* %66, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i32* %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0))
  %70 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %71 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %72 = load %struct.uath_stat*, %struct.uath_stat** %6, align 8
  %73 = getelementptr inbounds %struct.uath_stat, %struct.uath_stat* %72, i32 0, i32 11
  %74 = call i32 @UATH_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %70, %struct.sysctl_oid_list* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i32* %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0))
  %75 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %76 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %77 = load %struct.uath_stat*, %struct.uath_stat** %6, align 8
  %78 = getelementptr inbounds %struct.uath_stat, %struct.uath_stat* %77, i32 0, i32 10
  %79 = call i32 @UATH_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %75, %struct.sysctl_oid_list* %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i32* %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0))
  %80 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %81 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %82 = load %struct.uath_stat*, %struct.uath_stat** %6, align 8
  %83 = getelementptr inbounds %struct.uath_stat, %struct.uath_stat* %82, i32 0, i32 9
  %84 = call i32 @UATH_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %80, %struct.sysctl_oid_list* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i32* %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0))
  %85 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %86 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %87 = load %struct.uath_stat*, %struct.uath_stat** %6, align 8
  %88 = getelementptr inbounds %struct.uath_stat, %struct.uath_stat* %87, i32 0, i32 8
  %89 = call i32 @UATH_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %85, %struct.sysctl_oid_list* %86, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0), i32* %88, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i64 0, i64 0))
  %90 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %91 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %92 = load %struct.uath_stat*, %struct.uath_stat** %6, align 8
  %93 = getelementptr inbounds %struct.uath_stat, %struct.uath_stat* %92, i32 0, i32 7
  %94 = call i32 @UATH_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %90, %struct.sysctl_oid_list* %91, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0), i32* %93, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i64 0, i64 0))
  %95 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %96 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %97 = load %struct.uath_stat*, %struct.uath_stat** %6, align 8
  %98 = getelementptr inbounds %struct.uath_stat, %struct.uath_stat* %97, i32 0, i32 6
  %99 = call i32 @UATH_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %95, %struct.sysctl_oid_list* %96, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i32* %98, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.31, i64 0, i64 0))
  %100 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %101 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %102 = load %struct.uath_stat*, %struct.uath_stat** %6, align 8
  %103 = getelementptr inbounds %struct.uath_stat, %struct.uath_stat* %102, i32 0, i32 5
  %104 = call i32 @UATH_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %100, %struct.sysctl_oid_list* %101, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i32* %103, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.33, i64 0, i64 0))
  %105 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %106 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %107 = load %struct.uath_stat*, %struct.uath_stat** %6, align 8
  %108 = getelementptr inbounds %struct.uath_stat, %struct.uath_stat* %107, i32 0, i32 4
  %109 = call i32 @UATH_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %105, %struct.sysctl_oid_list* %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0), i32* %108, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.35, i64 0, i64 0))
  %110 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %111 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %112 = load %struct.uath_stat*, %struct.uath_stat** %6, align 8
  %113 = getelementptr inbounds %struct.uath_stat, %struct.uath_stat* %112, i32 0, i32 3
  %114 = call i32 @UATH_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %110, %struct.sysctl_oid_list* %111, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i32* %113, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.37, i64 0, i64 0))
  %115 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %116 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %117 = load %struct.uath_stat*, %struct.uath_stat** %6, align 8
  %118 = getelementptr inbounds %struct.uath_stat, %struct.uath_stat* %117, i32 0, i32 2
  %119 = call i32 @UATH_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %115, %struct.sysctl_oid_list* %116, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0), i32* %118, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i64 0, i64 0))
  %120 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %121 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %122 = load %struct.uath_stat*, %struct.uath_stat** %6, align 8
  %123 = getelementptr inbounds %struct.uath_stat, %struct.uath_stat* %122, i32 0, i32 1
  %124 = call i32 @UATH_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %120, %struct.sysctl_oid_list* %121, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0), i32* %123, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.41, i64 0, i64 0))
  %125 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %126 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %127 = load %struct.uath_stat*, %struct.uath_stat** %6, align 8
  %128 = getelementptr inbounds %struct.uath_stat, %struct.uath_stat* %127, i32 0, i32 0
  %129 = call i32 @UATH_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %125, %struct.sysctl_oid_list* %126, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0), i32* %128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0))
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @UATH_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i8*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
