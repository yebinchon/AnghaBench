; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_mcast_join.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_mcast_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { i32, i32, i32, i32, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ipoib_mcast = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ib_sa_mcmember_rec = type { i32, i32, i32, i32, i32, i8*, i32, i32, i8*, i32, i32, i32, %struct.TYPE_5__ }

@.str = private unnamed_addr constant [19 x i8] c"joining MGID %16D\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@IB_SA_MCMEMBER_REC_MGID = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_PORT_GID = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_PKEY = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_JOIN_STATE = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_QKEY = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_MTU_SELECTOR = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_MTU = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_RATE_SELECTOR = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_RATE = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_SL = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_FLOW_LABEL = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_HOP_LIMIT = common dso_local global i32 0, align 4
@IB_SA_EQ = common dso_local global i8* null, align 8
@IPOIB_MCAST_FLAG_BUSY = common dso_local global i32 0, align 4
@ipoib_sa_client = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ipoib_mcast_join_complete = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"ib_sa_join_multicast failed, status %d\0A\00", align 1
@IPOIB_MAX_BACKOFF_SECONDS = common dso_local global i32 0, align 4
@mcast_mutex = common dso_local global i32 0, align 4
@IPOIB_MCAST_RUN = common dso_local global i32 0, align 4
@ipoib_workqueue = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipoib_dev_priv*, %struct.ipoib_mcast*, i32)* @ipoib_mcast_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipoib_mcast_join(%struct.ipoib_dev_priv* %0, %struct.ipoib_mcast* %1, i32 %2) #0 {
  %4 = alloca %struct.ipoib_dev_priv*, align 8
  %5 = alloca %struct.ipoib_mcast*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_sa_mcmember_rec, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %4, align 8
  store %struct.ipoib_mcast* %1, %struct.ipoib_mcast** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = bitcast %struct.ib_sa_mcmember_rec* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 64, i1 false)
  %11 = bitcast i8* %10 to %struct.ib_sa_mcmember_rec*
  %12 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %14 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %15 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ipoib_dbg_mcast(%struct.ipoib_dev_priv* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %20 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %7, i32 0, i32 12
  %21 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %22 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = bitcast %struct.TYPE_5__* %20 to i8*
  %25 = bitcast %struct.TYPE_5__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 4, i1 false)
  %26 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %27 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %7, i32 0, i32 11
  store i32 %28, i32* %29, align 8
  %30 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %31 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @cpu_to_be16(i32 %32)
  %34 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %7, i32 0, i32 10
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @IB_SA_MCMEMBER_REC_MGID, align 4
  %36 = load i32, i32* @IB_SA_MCMEMBER_REC_PORT_GID, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @IB_SA_MCMEMBER_REC_PKEY, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @IB_SA_MCMEMBER_REC_JOIN_STATE, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %117

44:                                               ; preds = %3
  %45 = load i32, i32* @IB_SA_MCMEMBER_REC_QKEY, align 4
  %46 = load i32, i32* @IB_SA_MCMEMBER_REC_MTU_SELECTOR, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @IB_SA_MCMEMBER_REC_MTU, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @IB_SA_MCMEMBER_REC_TRAFFIC_CLASS, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @IB_SA_MCMEMBER_REC_RATE_SELECTOR, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @IB_SA_MCMEMBER_REC_RATE, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @IB_SA_MCMEMBER_REC_SL, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @IB_SA_MCMEMBER_REC_FLOW_LABEL, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @IB_SA_MCMEMBER_REC_HOP_LIMIT, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  %64 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %65 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %64, i32 0, i32 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %7, i32 0, i32 9
  store i32 %69, i32* %70, align 8
  %71 = load i8*, i8** @IB_SA_EQ, align 8
  %72 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %7, i32 0, i32 8
  store i8* %71, i8** %72, align 8
  %73 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %74 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %73, i32 0, i32 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %7, i32 0, i32 7
  store i32 %78, i32* %79, align 4
  %80 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %81 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %80, i32 0, i32 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %7, i32 0, i32 6
  store i32 %85, i32* %86, align 8
  %87 = load i8*, i8** @IB_SA_EQ, align 8
  %88 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %7, i32 0, i32 5
  store i8* %87, i8** %88, align 8
  %89 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %90 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %89, i32 0, i32 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %7, i32 0, i32 4
  store i32 %94, i32* %95, align 8
  %96 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %97 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %96, i32 0, i32 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %7, i32 0, i32 3
  store i32 %101, i32* %102, align 4
  %103 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %104 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %103, i32 0, i32 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %7, i32 0, i32 2
  store i32 %108, i32* %109, align 8
  %110 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %111 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %110, i32 0, i32 4
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %7, i32 0, i32 1
  store i32 %115, i32* %116, align 4
  br label %117

117:                                              ; preds = %44, %3
  %118 = load i32, i32* @IPOIB_MCAST_FLAG_BUSY, align 4
  %119 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %120 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %119, i32 0, i32 2
  %121 = call i32 @set_bit(i32 %118, i32* %120)
  %122 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %123 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %126 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @GFP_KERNEL, align 4
  %130 = load i32, i32* @ipoib_mcast_join_complete, align 4
  %131 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %132 = call i32 @ib_sa_join_multicast(i32* @ipoib_sa_client, i32 %124, i32 %127, %struct.ib_sa_mcmember_rec* %7, i32 %128, i32 %129, i32 %130, %struct.ipoib_mcast* %131)
  %133 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %134 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %136 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @IS_ERR(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %184

140:                                              ; preds = %117
  %141 = load i32, i32* @IPOIB_MCAST_FLAG_BUSY, align 4
  %142 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %143 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %142, i32 0, i32 2
  %144 = call i32 @clear_bit(i32 %141, i32* %143)
  %145 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %146 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @PTR_ERR(i32 %147)
  store i32 %148, i32* %9, align 4
  %149 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %149, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %150)
  %152 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %153 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = mul nsw i32 %154, 2
  store i32 %155, i32* %153, align 4
  %156 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %157 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @IPOIB_MAX_BACKOFF_SECONDS, align 4
  %160 = icmp sgt i32 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %140
  %162 = load i32, i32* @IPOIB_MAX_BACKOFF_SECONDS, align 4
  %163 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %164 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 4
  br label %165

165:                                              ; preds = %161, %140
  %166 = call i32 @mutex_lock(i32* @mcast_mutex)
  %167 = load i32, i32* @IPOIB_MCAST_RUN, align 4
  %168 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %169 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %168, i32 0, i32 1
  %170 = call i64 @test_bit(i32 %167, i32* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %182

172:                                              ; preds = %165
  %173 = load i32, i32* @ipoib_workqueue, align 4
  %174 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %175 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %174, i32 0, i32 0
  %176 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %177 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @HZ, align 4
  %180 = mul nsw i32 %178, %179
  %181 = call i32 @queue_delayed_work(i32 %173, i32* %175, i32 %180)
  br label %182

182:                                              ; preds = %172, %165
  %183 = call i32 @mutex_unlock(i32* @mcast_mutex)
  br label %184

184:                                              ; preds = %182, %117
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ipoib_dbg_mcast(%struct.ipoib_dev_priv*, i8*, i32, i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cpu_to_be16(i32) #2

declare dso_local i32 @set_bit(i32, i32*) #2

declare dso_local i32 @ib_sa_join_multicast(i32*, i32, i32, %struct.ib_sa_mcmember_rec*, i32, i32, i32, %struct.ipoib_mcast*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @clear_bit(i32, i32*) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i64 @test_bit(i32, i32*) #2

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
