; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_kloop.c_netmap_sync_kloop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_kloop.c_netmap_sync_kloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_priv_d = type { i32, i32*, i32*, i64, i32*, %struct.nm_csb_ktoa*, %struct.nm_csb_atok*, %struct.netmap_adapter*, i32* }
%struct.nm_csb_ktoa = type { i32 }
%struct.nm_csb_atok = type { i32 }
%struct.netmap_adapter = type { i32, i32 }
%struct.nmreq_header = type { i64 }
%struct.nmreq_sync_kloop_start = type { i32 }
%struct.nmreq_opt_sync_kloop_eventfds = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.sync_kloop_ring_args = type { i32, i32, i32, i32, i32, i32, %struct.sync_kloop_poll_entry*, i32, i32*, %struct.file*, %struct.nm_csb_ktoa*, %struct.nm_csb_atok*, i8* }
%struct.sync_kloop_poll_entry = type { i64, i64, %struct.file*, i32, i64, %struct.sync_kloop_ring_args*, %struct.sync_kloop_ring_args* }
%struct.file = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (%struct.file*, i32*)* }
%struct.nmreq_option = type { i32, i32 }
%struct.nmreq_opt_sync_kloop_mode = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"sync-kloop on %s requires NETMAP_REQ_OPT_CSB option\00", align 1
@NM_SYNC_KLOOP_RUNNING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@NR_RX = common dso_local global i64 0, align 8
@NR_TX = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@NETMAP_REQ_OPT_SYNC_KLOOP_MODE = common dso_local global i32 0, align 4
@NM_OPT_SYNC_KLOOP_DIRECT_TX = common dso_local global i32 0, align 4
@NM_OPT_SYNC_KLOOP_DIRECT_RX = common dso_local global i32 0, align 4
@NETMAP_REQ_OPT_SYNC_KLOOP_EVENTFDS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"kloop busy_wait %u, direct_tx %u, direct_rx %u, na_could_sleep %u\00", align 1
@NM_SYNC_KLOOP_STOPPING = common dso_local global i32 0, align 4
@NAF_BDG_MAYSLEEP = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i64 0, align 8
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@sync_kloop_poll_table_queue_proc = common dso_local global i32 0, align 4
@sync_kloop_rx_irq_wake_fun = common dso_local global i32* null, align 8
@sync_kloop_rx_kick_wake_fun = common dso_local global i32* null, align 8
@sync_kloop_tx_irq_wake_fun = common dso_local global i32* null, align 8
@sync_kloop_tx_kick_wake_fun = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netmap_sync_kloop(%struct.netmap_priv_d* %0, %struct.nmreq_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netmap_priv_d*, align 8
  %5 = alloca %struct.nmreq_header*, align 8
  %6 = alloca %struct.nmreq_sync_kloop_start*, align 8
  %7 = alloca %struct.nmreq_opt_sync_kloop_eventfds*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sync_kloop_ring_args*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nm_csb_atok*, align 8
  %14 = alloca %struct.nm_csb_ktoa*, align 8
  %15 = alloca %struct.netmap_adapter*, align 8
  %16 = alloca %struct.nmreq_option*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.sync_kloop_ring_args*, align 8
  %24 = alloca %struct.sync_kloop_ring_args*, align 8
  %25 = alloca %struct.nmreq_opt_sync_kloop_mode*, align 8
  %26 = alloca %struct.sync_kloop_ring_args*, align 8
  %27 = alloca %struct.sync_kloop_ring_args*, align 8
  store %struct.netmap_priv_d* %0, %struct.netmap_priv_d** %4, align 8
  store %struct.nmreq_header* %1, %struct.nmreq_header** %5, align 8
  %28 = load %struct.nmreq_header*, %struct.nmreq_header** %5, align 8
  %29 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.nmreq_sync_kloop_start*
  store %struct.nmreq_sync_kloop_start* %31, %struct.nmreq_sync_kloop_start** %6, align 8
  store %struct.nmreq_opt_sync_kloop_eventfds* null, %struct.nmreq_opt_sync_kloop_eventfds** %7, align 8
  store %struct.sync_kloop_ring_args* null, %struct.sync_kloop_ring_args** %11, align 8
  %32 = load %struct.nmreq_sync_kloop_start*, %struct.nmreq_sync_kloop_start** %6, align 8
  %33 = getelementptr inbounds %struct.nmreq_sync_kloop_start, %struct.nmreq_sync_kloop_start* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %12, align 4
  store i32 0, i32* %17, align 4
  store i32 1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp sgt i32 %35, 1000000
  br i1 %36, label %37, label %39

37:                                               ; preds = %2
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %3, align 4
  br label %398

39:                                               ; preds = %2
  %40 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %4, align 8
  %41 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %40, i32 0, i32 8
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @ENXIO, align 4
  store i32 %45, i32* %3, align 4
  br label %398

46:                                               ; preds = %39
  %47 = call i32 (...) @mb()
  %48 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %4, align 8
  %49 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %48, i32 0, i32 7
  %50 = load %struct.netmap_adapter*, %struct.netmap_adapter** %49, align 8
  store %struct.netmap_adapter* %50, %struct.netmap_adapter** %15, align 8
  %51 = load %struct.netmap_adapter*, %struct.netmap_adapter** %15, align 8
  %52 = call i32 @nm_netmap_on(%struct.netmap_adapter* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %46
  %55 = load i32, i32* @ENXIO, align 4
  store i32 %55, i32* %3, align 4
  br label %398

56:                                               ; preds = %46
  %57 = call i32 (...) @NMG_LOCK()
  %58 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %4, align 8
  %59 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %58, i32 0, i32 6
  %60 = load %struct.nm_csb_atok*, %struct.nm_csb_atok** %59, align 8
  %61 = icmp ne %struct.nm_csb_atok* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %4, align 8
  %64 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %63, i32 0, i32 5
  %65 = load %struct.nm_csb_ktoa*, %struct.nm_csb_ktoa** %64, align 8
  %66 = icmp ne %struct.nm_csb_ktoa* %65, null
  br i1 %66, label %74, label %67

67:                                               ; preds = %62, %56
  %68 = call i32 (...) @NMG_UNLOCK()
  %69 = load %struct.netmap_adapter*, %struct.netmap_adapter** %15, align 8
  %70 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @nm_prerr(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @EINVAL, align 4
  store i32 %73, i32* %3, align 4
  br label %398

74:                                               ; preds = %62
  %75 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %4, align 8
  %76 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %75, i32 0, i32 6
  %77 = load %struct.nm_csb_atok*, %struct.nm_csb_atok** %76, align 8
  store %struct.nm_csb_atok* %77, %struct.nm_csb_atok** %13, align 8
  %78 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %4, align 8
  %79 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %78, i32 0, i32 5
  %80 = load %struct.nm_csb_ktoa*, %struct.nm_csb_ktoa** %79, align 8
  store %struct.nm_csb_ktoa* %80, %struct.nm_csb_ktoa** %14, align 8
  %81 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %4, align 8
  %82 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @NM_SYNC_KLOOP_RUNNING, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %74
  %88 = load i32, i32* @EBUSY, align 4
  store i32 %88, i32* %21, align 4
  br label %89

89:                                               ; preds = %87, %74
  %90 = load i32, i32* @NM_SYNC_KLOOP_RUNNING, align 4
  %91 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %4, align 8
  %92 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = call i32 (...) @NMG_UNLOCK()
  %96 = load i32, i32* %21, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = load i32, i32* %21, align 4
  store i32 %99, i32* %3, align 4
  br label %398

100:                                              ; preds = %89
  %101 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %4, align 8
  %102 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* @NR_RX, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %4, align 8
  %108 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* @NR_RX, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %106, %112
  store i32 %113, i32* %8, align 4
  %114 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %4, align 8
  %115 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* @NR_TX, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %4, align 8
  %121 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* @NR_TX, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 %119, %125
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %127, %128
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = mul i64 %131, 80
  %133 = trunc i64 %132 to i32
  %134 = call %struct.sync_kloop_ring_args* @nm_os_malloc(i32 %133)
  store %struct.sync_kloop_ring_args* %134, %struct.sync_kloop_ring_args** %11, align 8
  %135 = load %struct.sync_kloop_ring_args*, %struct.sync_kloop_ring_args** %11, align 8
  %136 = icmp ne %struct.sync_kloop_ring_args* %135, null
  br i1 %136, label %139, label %137

137:                                              ; preds = %100
  %138 = load i32, i32* @ENOMEM, align 4
  store i32 %138, i32* %21, align 4
  br label %377

139:                                              ; preds = %100
  store i32 0, i32* %22, align 4
  br label %140

140:                                              ; preds = %183, %139
  %141 = load i32, i32* %22, align 4
  %142 = load i32, i32* %9, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %186

144:                                              ; preds = %140
  %145 = load %struct.sync_kloop_ring_args*, %struct.sync_kloop_ring_args** %11, align 8
  %146 = load i32, i32* %22, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.sync_kloop_ring_args, %struct.sync_kloop_ring_args* %145, i64 %147
  store %struct.sync_kloop_ring_args* %148, %struct.sync_kloop_ring_args** %23, align 8
  %149 = load %struct.netmap_adapter*, %struct.netmap_adapter** %15, align 8
  %150 = load i64, i64* @NR_TX, align 8
  %151 = call i8** @NMR(%struct.netmap_adapter* %149, i64 %150)
  %152 = load i32, i32* %22, align 4
  %153 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %4, align 8
  %154 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = load i64, i64* @NR_TX, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %152, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8*, i8** %151, i64 %160
  %162 = load i8*, i8** %161, align 8
  %163 = load %struct.sync_kloop_ring_args*, %struct.sync_kloop_ring_args** %23, align 8
  %164 = getelementptr inbounds %struct.sync_kloop_ring_args, %struct.sync_kloop_ring_args* %163, i32 0, i32 12
  store i8* %162, i8** %164, align 8
  %165 = load %struct.nm_csb_atok*, %struct.nm_csb_atok** %13, align 8
  %166 = load i32, i32* %22, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.nm_csb_atok, %struct.nm_csb_atok* %165, i64 %167
  %169 = load %struct.sync_kloop_ring_args*, %struct.sync_kloop_ring_args** %23, align 8
  %170 = getelementptr inbounds %struct.sync_kloop_ring_args, %struct.sync_kloop_ring_args* %169, i32 0, i32 11
  store %struct.nm_csb_atok* %168, %struct.nm_csb_atok** %170, align 8
  %171 = load %struct.nm_csb_ktoa*, %struct.nm_csb_ktoa** %14, align 8
  %172 = load i32, i32* %22, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.nm_csb_ktoa, %struct.nm_csb_ktoa* %171, i64 %173
  %175 = load %struct.sync_kloop_ring_args*, %struct.sync_kloop_ring_args** %23, align 8
  %176 = getelementptr inbounds %struct.sync_kloop_ring_args, %struct.sync_kloop_ring_args* %175, i32 0, i32 10
  store %struct.nm_csb_ktoa* %174, %struct.nm_csb_ktoa** %176, align 8
  %177 = load i32, i32* %18, align 4
  %178 = load %struct.sync_kloop_ring_args*, %struct.sync_kloop_ring_args** %23, align 8
  %179 = getelementptr inbounds %struct.sync_kloop_ring_args, %struct.sync_kloop_ring_args* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 8
  %180 = load i32, i32* %19, align 4
  %181 = load %struct.sync_kloop_ring_args*, %struct.sync_kloop_ring_args** %23, align 8
  %182 = getelementptr inbounds %struct.sync_kloop_ring_args, %struct.sync_kloop_ring_args* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  br label %183

183:                                              ; preds = %144
  %184 = load i32, i32* %22, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %22, align 4
  br label %140

186:                                              ; preds = %140
  store i32 0, i32* %22, align 4
  br label %187

187:                                              ; preds = %239, %186
  %188 = load i32, i32* %22, align 4
  %189 = load i32, i32* %8, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %242

191:                                              ; preds = %187
  %192 = load %struct.sync_kloop_ring_args*, %struct.sync_kloop_ring_args** %11, align 8
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.sync_kloop_ring_args, %struct.sync_kloop_ring_args* %192, i64 %194
  %196 = load i32, i32* %22, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.sync_kloop_ring_args, %struct.sync_kloop_ring_args* %195, i64 %197
  store %struct.sync_kloop_ring_args* %198, %struct.sync_kloop_ring_args** %24, align 8
  %199 = load %struct.netmap_adapter*, %struct.netmap_adapter** %15, align 8
  %200 = load i64, i64* @NR_RX, align 8
  %201 = call i8** @NMR(%struct.netmap_adapter* %199, i64 %200)
  %202 = load i32, i32* %22, align 4
  %203 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %4, align 8
  %204 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %203, i32 0, i32 2
  %205 = load i32*, i32** %204, align 8
  %206 = load i64, i64* @NR_RX, align 8
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %202, %208
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8*, i8** %201, i64 %210
  %212 = load i8*, i8** %211, align 8
  %213 = load %struct.sync_kloop_ring_args*, %struct.sync_kloop_ring_args** %24, align 8
  %214 = getelementptr inbounds %struct.sync_kloop_ring_args, %struct.sync_kloop_ring_args* %213, i32 0, i32 12
  store i8* %212, i8** %214, align 8
  %215 = load %struct.nm_csb_atok*, %struct.nm_csb_atok** %13, align 8
  %216 = load i32, i32* %9, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.nm_csb_atok, %struct.nm_csb_atok* %215, i64 %217
  %219 = load i32, i32* %22, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.nm_csb_atok, %struct.nm_csb_atok* %218, i64 %220
  %222 = load %struct.sync_kloop_ring_args*, %struct.sync_kloop_ring_args** %24, align 8
  %223 = getelementptr inbounds %struct.sync_kloop_ring_args, %struct.sync_kloop_ring_args* %222, i32 0, i32 11
  store %struct.nm_csb_atok* %221, %struct.nm_csb_atok** %223, align 8
  %224 = load %struct.nm_csb_ktoa*, %struct.nm_csb_ktoa** %14, align 8
  %225 = load i32, i32* %9, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.nm_csb_ktoa, %struct.nm_csb_ktoa* %224, i64 %226
  %228 = load i32, i32* %22, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.nm_csb_ktoa, %struct.nm_csb_ktoa* %227, i64 %229
  %231 = load %struct.sync_kloop_ring_args*, %struct.sync_kloop_ring_args** %24, align 8
  %232 = getelementptr inbounds %struct.sync_kloop_ring_args, %struct.sync_kloop_ring_args* %231, i32 0, i32 10
  store %struct.nm_csb_ktoa* %230, %struct.nm_csb_ktoa** %232, align 8
  %233 = load i32, i32* %18, align 4
  %234 = load %struct.sync_kloop_ring_args*, %struct.sync_kloop_ring_args** %24, align 8
  %235 = getelementptr inbounds %struct.sync_kloop_ring_args, %struct.sync_kloop_ring_args* %234, i32 0, i32 0
  store i32 %233, i32* %235, align 8
  %236 = load i32, i32* %20, align 4
  %237 = load %struct.sync_kloop_ring_args*, %struct.sync_kloop_ring_args** %24, align 8
  %238 = getelementptr inbounds %struct.sync_kloop_ring_args, %struct.sync_kloop_ring_args* %237, i32 0, i32 1
  store i32 %236, i32* %238, align 4
  br label %239

239:                                              ; preds = %191
  %240 = load i32, i32* %22, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %22, align 4
  br label %187

242:                                              ; preds = %187
  %243 = load %struct.nmreq_header*, %struct.nmreq_header** %5, align 8
  %244 = load i32, i32* @NETMAP_REQ_OPT_SYNC_KLOOP_MODE, align 4
  %245 = call %struct.nmreq_option* @nmreq_getoption(%struct.nmreq_header* %243, i32 %244)
  store %struct.nmreq_option* %245, %struct.nmreq_option** %16, align 8
  %246 = load %struct.nmreq_option*, %struct.nmreq_option** %16, align 8
  %247 = icmp ne %struct.nmreq_option* %246, null
  br i1 %247, label %248, label %285

248:                                              ; preds = %242
  %249 = load %struct.nmreq_option*, %struct.nmreq_option** %16, align 8
  %250 = bitcast %struct.nmreq_option* %249 to %struct.nmreq_opt_sync_kloop_mode*
  store %struct.nmreq_opt_sync_kloop_mode* %250, %struct.nmreq_opt_sync_kloop_mode** %25, align 8
  %251 = load %struct.nmreq_opt_sync_kloop_mode*, %struct.nmreq_opt_sync_kloop_mode** %25, align 8
  %252 = getelementptr inbounds %struct.nmreq_opt_sync_kloop_mode, %struct.nmreq_opt_sync_kloop_mode* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @NM_OPT_SYNC_KLOOP_DIRECT_TX, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  %257 = xor i1 %256, true
  %258 = xor i1 %257, true
  %259 = zext i1 %258 to i32
  store i32 %259, i32* %19, align 4
  %260 = load %struct.nmreq_opt_sync_kloop_mode*, %struct.nmreq_opt_sync_kloop_mode** %25, align 8
  %261 = getelementptr inbounds %struct.nmreq_opt_sync_kloop_mode, %struct.nmreq_opt_sync_kloop_mode* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @NM_OPT_SYNC_KLOOP_DIRECT_RX, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  %266 = xor i1 %265, true
  %267 = xor i1 %266, true
  %268 = zext i1 %267 to i32
  store i32 %268, i32* %20, align 4
  %269 = load %struct.nmreq_opt_sync_kloop_mode*, %struct.nmreq_opt_sync_kloop_mode** %25, align 8
  %270 = getelementptr inbounds %struct.nmreq_opt_sync_kloop_mode, %struct.nmreq_opt_sync_kloop_mode* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @NM_OPT_SYNC_KLOOP_DIRECT_TX, align 4
  %273 = load i32, i32* @NM_OPT_SYNC_KLOOP_DIRECT_RX, align 4
  %274 = or i32 %272, %273
  %275 = xor i32 %274, -1
  %276 = and i32 %271, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %248
  %279 = load i32, i32* @EINVAL, align 4
  store i32 %279, i32* %21, align 4
  %280 = load %struct.nmreq_option*, %struct.nmreq_option** %16, align 8
  %281 = getelementptr inbounds %struct.nmreq_option, %struct.nmreq_option* %280, i32 0, i32 0
  store i32 %279, i32* %281, align 4
  br label %377

282:                                              ; preds = %248
  %283 = load %struct.nmreq_option*, %struct.nmreq_option** %16, align 8
  %284 = getelementptr inbounds %struct.nmreq_option, %struct.nmreq_option* %283, i32 0, i32 0
  store i32 0, i32* %284, align 4
  br label %285

285:                                              ; preds = %282, %242
  %286 = load %struct.nmreq_header*, %struct.nmreq_header** %5, align 8
  %287 = load i32, i32* @NETMAP_REQ_OPT_SYNC_KLOOP_EVENTFDS, align 4
  %288 = call %struct.nmreq_option* @nmreq_getoption(%struct.nmreq_header* %286, i32 %287)
  store %struct.nmreq_option* %288, %struct.nmreq_option** %16, align 8
  %289 = load %struct.nmreq_option*, %struct.nmreq_option** %16, align 8
  %290 = icmp ne %struct.nmreq_option* %289, null
  br i1 %290, label %291, label %309

291:                                              ; preds = %285
  %292 = load %struct.nmreq_option*, %struct.nmreq_option** %16, align 8
  %293 = getelementptr inbounds %struct.nmreq_option, %struct.nmreq_option* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = sext i32 %294 to i64
  %296 = load i32, i32* %10, align 4
  %297 = sext i32 %296 to i64
  %298 = mul i64 16, %297
  %299 = add i64 8, %298
  %300 = icmp ne i64 %295, %299
  br i1 %300, label %301, label %305

301:                                              ; preds = %291
  %302 = load i32, i32* @EINVAL, align 4
  store i32 %302, i32* %21, align 4
  %303 = load %struct.nmreq_option*, %struct.nmreq_option** %16, align 8
  %304 = getelementptr inbounds %struct.nmreq_option, %struct.nmreq_option* %303, i32 0, i32 0
  store i32 %302, i32* %304, align 4
  br label %377

305:                                              ; preds = %291
  %306 = load i32, i32* @EOPNOTSUPP, align 4
  %307 = load %struct.nmreq_option*, %struct.nmreq_option** %16, align 8
  %308 = getelementptr inbounds %struct.nmreq_option, %struct.nmreq_option* %307, i32 0, i32 0
  store i32 %306, i32* %308, align 4
  br label %377

309:                                              ; preds = %285
  %310 = load i32, i32* %18, align 4
  %311 = load i32, i32* %19, align 4
  %312 = load i32, i32* %20, align 4
  %313 = load i32, i32* %17, align 4
  %314 = call i32 @nm_prinf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %310, i32 %311, i32 %312, i32 %313)
  br label %315

315:                                              ; preds = %375, %309
  %316 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %4, align 8
  %317 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = call i32 @NM_ACCESS_ONCE(i32 %318)
  %320 = load i32, i32* @NM_SYNC_KLOOP_STOPPING, align 4
  %321 = and i32 %319, %320
  %322 = call i64 @unlikely(i32 %321)
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %325

324:                                              ; preds = %315
  br label %376

325:                                              ; preds = %315
  store i32 0, i32* %22, align 4
  br label %326

326:                                              ; preds = %342, %325
  %327 = load i32, i32* %19, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %333, label %329

329:                                              ; preds = %326
  %330 = load i32, i32* %22, align 4
  %331 = load i32, i32* %9, align 4
  %332 = icmp slt i32 %330, %331
  br label %333

333:                                              ; preds = %329, %326
  %334 = phi i1 [ false, %326 ], [ %332, %329 ]
  br i1 %334, label %335, label %345

335:                                              ; preds = %333
  %336 = load %struct.sync_kloop_ring_args*, %struct.sync_kloop_ring_args** %11, align 8
  %337 = load i32, i32* %22, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.sync_kloop_ring_args, %struct.sync_kloop_ring_args* %336, i64 %338
  store %struct.sync_kloop_ring_args* %339, %struct.sync_kloop_ring_args** %26, align 8
  %340 = load %struct.sync_kloop_ring_args*, %struct.sync_kloop_ring_args** %26, align 8
  %341 = call i32 @netmap_sync_kloop_tx_ring(%struct.sync_kloop_ring_args* %340)
  br label %342

342:                                              ; preds = %335
  %343 = load i32, i32* %22, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %22, align 4
  br label %326

345:                                              ; preds = %333
  store i32 0, i32* %22, align 4
  br label %346

346:                                              ; preds = %365, %345
  %347 = load i32, i32* %20, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %353, label %349

349:                                              ; preds = %346
  %350 = load i32, i32* %22, align 4
  %351 = load i32, i32* %8, align 4
  %352 = icmp slt i32 %350, %351
  br label %353

353:                                              ; preds = %349, %346
  %354 = phi i1 [ false, %346 ], [ %352, %349 ]
  br i1 %354, label %355, label %368

355:                                              ; preds = %353
  %356 = load %struct.sync_kloop_ring_args*, %struct.sync_kloop_ring_args** %11, align 8
  %357 = load i32, i32* %9, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.sync_kloop_ring_args, %struct.sync_kloop_ring_args* %356, i64 %358
  %360 = load i32, i32* %22, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.sync_kloop_ring_args, %struct.sync_kloop_ring_args* %359, i64 %361
  store %struct.sync_kloop_ring_args* %362, %struct.sync_kloop_ring_args** %27, align 8
  %363 = load %struct.sync_kloop_ring_args*, %struct.sync_kloop_ring_args** %27, align 8
  %364 = call i32 @netmap_sync_kloop_rx_ring(%struct.sync_kloop_ring_args* %363)
  br label %365

365:                                              ; preds = %355
  %366 = load i32, i32* %22, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %22, align 4
  br label %346

368:                                              ; preds = %353
  %369 = load i32, i32* %18, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %375

371:                                              ; preds = %368
  %372 = load i32, i32* %12, align 4
  %373 = load i32, i32* %12, align 4
  %374 = call i32 @usleep_range(i32 %372, i32 %373)
  br label %375

375:                                              ; preds = %371, %368
  br label %315

376:                                              ; preds = %324
  br label %377

377:                                              ; preds = %376, %305, %301, %278, %137
  %378 = load %struct.sync_kloop_ring_args*, %struct.sync_kloop_ring_args** %11, align 8
  %379 = icmp ne %struct.sync_kloop_ring_args* %378, null
  br i1 %379, label %380, label %383

380:                                              ; preds = %377
  %381 = load %struct.sync_kloop_ring_args*, %struct.sync_kloop_ring_args** %11, align 8
  %382 = call i32 @nm_os_free(%struct.sync_kloop_ring_args* %381)
  store %struct.sync_kloop_ring_args* null, %struct.sync_kloop_ring_args** %11, align 8
  br label %383

383:                                              ; preds = %380, %377
  %384 = call i32 (...) @NMG_LOCK()
  %385 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %4, align 8
  %386 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %385, i32 0, i32 0
  store i32 0, i32* %386, align 8
  %387 = load i32, i32* %17, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %395

389:                                              ; preds = %383
  %390 = load i32, i32* @NAF_BDG_MAYSLEEP, align 4
  %391 = load %struct.netmap_adapter*, %struct.netmap_adapter** %15, align 8
  %392 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 4
  %394 = or i32 %393, %390
  store i32 %394, i32* %392, align 4
  br label %395

395:                                              ; preds = %389, %383
  %396 = call i32 (...) @NMG_UNLOCK()
  %397 = load i32, i32* %21, align 4
  store i32 %397, i32* %3, align 4
  br label %398

398:                                              ; preds = %395, %98, %67, %54, %44, %37
  %399 = load i32, i32* %3, align 4
  ret i32 %399
}

declare dso_local i32 @mb(...) #1

declare dso_local i32 @nm_netmap_on(%struct.netmap_adapter*) #1

declare dso_local i32 @NMG_LOCK(...) #1

declare dso_local i32 @NMG_UNLOCK(...) #1

declare dso_local i32 @nm_prerr(i8*, i32) #1

declare dso_local %struct.sync_kloop_ring_args* @nm_os_malloc(i32) #1

declare dso_local i8** @NMR(%struct.netmap_adapter*, i64) #1

declare dso_local %struct.nmreq_option* @nmreq_getoption(%struct.nmreq_header*, i32) #1

declare dso_local i32 @nm_prinf(i8*, i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @NM_ACCESS_ONCE(i32) #1

declare dso_local i32 @netmap_sync_kloop_tx_ring(%struct.sync_kloop_ring_args*) #1

declare dso_local i32 @netmap_sync_kloop_rx_ring(%struct.sync_kloop_ring_args*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @nm_os_free(%struct.sync_kloop_ring_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
