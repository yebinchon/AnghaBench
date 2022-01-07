; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_sysctl.c_bnxt_create_rx_sysctls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_sysctl.c_bnxt_create_rx_sysctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32, %struct.sysctl_oid*, %struct.TYPE_2__ }
%struct.sysctl_oid = type { i32 }
%struct.TYPE_2__ = type { i64 }
%struct.ctx_hw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"rxq%d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"receive queue %d\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"ucast_pkts\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"unicast packets received\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"mcast_pkts\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"multicast packets received\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"bcast_pkts\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"broadcast packets received\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"discard_pkts\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"discarded receive packets\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"drop_pkts\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"dropped receive packets\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"ucast_bytes\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"unicast bytes received\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"mcast_bytes\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"multicast bytes received\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"bcast_bytes\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"broadcast bytes received\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"tpa_pkts\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"TPA packets\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"tpa_bytes\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"TPA bytes\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"tpa_events\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"TPA events\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"tpa_aborts\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"TPA aborts\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_create_rx_sysctls(%struct.bnxt_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sysctl_oid*, align 8
  %7 = alloca %struct.ctx_hw_stats*, align 8
  %8 = alloca [32 x i8], align 16
  %9 = alloca [64 x i8], align 16
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %11 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.ctx_hw_stats*
  store %struct.ctx_hw_stats* %15, %struct.ctx_hw_stats** %7, align 8
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %23 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %22, i32 0, i32 0
  %24 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %25 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %24, i32 0, i32 1
  %26 = load %struct.sysctl_oid*, %struct.sysctl_oid** %25, align 8
  %27 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %26)
  %28 = load i32, i32* @OID_AUTO, align 4
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %30 = load i32, i32* @CTLFLAG_RD, align 4
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %32 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32* %23, i32 %27, i32 %28, i8* %29, i32 %30, i32 0, i8* %31)
  store %struct.sysctl_oid* %32, %struct.sysctl_oid** %6, align 8
  %33 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %34 = icmp ne %struct.sysctl_oid* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* @ENOMEM, align 4
  store i32 %36, i32* %3, align 4
  br label %182

37:                                               ; preds = %2
  %38 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %39 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %38, i32 0, i32 0
  %40 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %41 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %40)
  %42 = load i32, i32* @OID_AUTO, align 4
  %43 = load i32, i32* @CTLFLAG_RD, align 4
  %44 = load %struct.ctx_hw_stats*, %struct.ctx_hw_stats** %7, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %44, i64 %46
  %48 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %47, i32 0, i32 11
  %49 = call i32 @SYSCTL_ADD_QUAD(i32* %39, i32 %41, i32 %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32* %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %50 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %51 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %50, i32 0, i32 0
  %52 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %53 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %52)
  %54 = load i32, i32* @OID_AUTO, align 4
  %55 = load i32, i32* @CTLFLAG_RD, align 4
  %56 = load %struct.ctx_hw_stats*, %struct.ctx_hw_stats** %7, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %56, i64 %58
  %60 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %59, i32 0, i32 10
  %61 = call i32 @SYSCTL_ADD_QUAD(i32* %51, i32 %53, i32 %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %55, i32* %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %62 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %63 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %62, i32 0, i32 0
  %64 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %65 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %64)
  %66 = load i32, i32* @OID_AUTO, align 4
  %67 = load i32, i32* @CTLFLAG_RD, align 4
  %68 = load %struct.ctx_hw_stats*, %struct.ctx_hw_stats** %7, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %68, i64 %70
  %72 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %71, i32 0, i32 9
  %73 = call i32 @SYSCTL_ADD_QUAD(i32* %63, i32 %65, i32 %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %67, i32* %72, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %74 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %75 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %74, i32 0, i32 0
  %76 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %77 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %76)
  %78 = load i32, i32* @OID_AUTO, align 4
  %79 = load i32, i32* @CTLFLAG_RD, align 4
  %80 = load %struct.ctx_hw_stats*, %struct.ctx_hw_stats** %7, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %80, i64 %82
  %84 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %83, i32 0, i32 8
  %85 = call i32 @SYSCTL_ADD_QUAD(i32* %75, i32 %77, i32 %78, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %79, i32* %84, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %86 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %87 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %86, i32 0, i32 0
  %88 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %89 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %88)
  %90 = load i32, i32* @OID_AUTO, align 4
  %91 = load i32, i32* @CTLFLAG_RD, align 4
  %92 = load %struct.ctx_hw_stats*, %struct.ctx_hw_stats** %7, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %92, i64 %94
  %96 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %95, i32 0, i32 7
  %97 = call i32 @SYSCTL_ADD_QUAD(i32* %87, i32 %89, i32 %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %91, i32* %96, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  %98 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %99 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %98, i32 0, i32 0
  %100 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %101 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %100)
  %102 = load i32, i32* @OID_AUTO, align 4
  %103 = load i32, i32* @CTLFLAG_RD, align 4
  %104 = load %struct.ctx_hw_stats*, %struct.ctx_hw_stats** %7, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %104, i64 %106
  %108 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %107, i32 0, i32 6
  %109 = call i32 @SYSCTL_ADD_QUAD(i32* %99, i32 %101, i32 %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %103, i32* %108, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  %110 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %111 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %110, i32 0, i32 0
  %112 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %113 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %112)
  %114 = load i32, i32* @OID_AUTO, align 4
  %115 = load i32, i32* @CTLFLAG_RD, align 4
  %116 = load %struct.ctx_hw_stats*, %struct.ctx_hw_stats** %7, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %116, i64 %118
  %120 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %119, i32 0, i32 5
  %121 = call i32 @SYSCTL_ADD_QUAD(i32* %111, i32 %113, i32 %114, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 %115, i32* %120, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0))
  %122 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %123 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %122, i32 0, i32 0
  %124 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %125 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %124)
  %126 = load i32, i32* @OID_AUTO, align 4
  %127 = load i32, i32* @CTLFLAG_RD, align 4
  %128 = load %struct.ctx_hw_stats*, %struct.ctx_hw_stats** %7, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %128, i64 %130
  %132 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %131, i32 0, i32 4
  %133 = call i32 @SYSCTL_ADD_QUAD(i32* %123, i32 %125, i32 %126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 %127, i32* %132, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0))
  %134 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %135 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %134, i32 0, i32 0
  %136 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %137 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %136)
  %138 = load i32, i32* @OID_AUTO, align 4
  %139 = load i32, i32* @CTLFLAG_RD, align 4
  %140 = load %struct.ctx_hw_stats*, %struct.ctx_hw_stats** %7, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %140, i64 %142
  %144 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %143, i32 0, i32 3
  %145 = call i32 @SYSCTL_ADD_QUAD(i32* %135, i32 %137, i32 %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i32 %139, i32* %144, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0))
  %146 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %147 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %146, i32 0, i32 0
  %148 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %149 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %148)
  %150 = load i32, i32* @OID_AUTO, align 4
  %151 = load i32, i32* @CTLFLAG_RD, align 4
  %152 = load %struct.ctx_hw_stats*, %struct.ctx_hw_stats** %7, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %152, i64 %154
  %156 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %155, i32 0, i32 2
  %157 = call i32 @SYSCTL_ADD_QUAD(i32* %147, i32 %149, i32 %150, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i32 %151, i32* %156, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  %158 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %159 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %158, i32 0, i32 0
  %160 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %161 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %160)
  %162 = load i32, i32* @OID_AUTO, align 4
  %163 = load i32, i32* @CTLFLAG_RD, align 4
  %164 = load %struct.ctx_hw_stats*, %struct.ctx_hw_stats** %7, align 8
  %165 = load i32, i32* %5, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %164, i64 %166
  %168 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %167, i32 0, i32 1
  %169 = call i32 @SYSCTL_ADD_QUAD(i32* %159, i32 %161, i32 %162, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i32 %163, i32* %168, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0))
  %170 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %171 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %170, i32 0, i32 0
  %172 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %173 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %172)
  %174 = load i32, i32* @OID_AUTO, align 4
  %175 = load i32, i32* @CTLFLAG_RD, align 4
  %176 = load %struct.ctx_hw_stats*, %struct.ctx_hw_stats** %7, align 8
  %177 = load i32, i32* %5, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %176, i64 %178
  %180 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %179, i32 0, i32 0
  %181 = call i32 @SYSCTL_ADD_QUAD(i32* %171, i32 %173, i32 %174, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0), i32 %175, i32* %180, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %182

182:                                              ; preds = %37, %35
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32*, i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_QUAD(i32*, i32, i32, i8*, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
