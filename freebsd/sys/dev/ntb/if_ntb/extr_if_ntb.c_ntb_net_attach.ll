; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/if_ntb/extr_if_ntb.c_ntb_net_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/if_ntb/extr_if_ntb.c_ntb_net_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_net_ctx = type { i32, %struct.ntb_net_queue*, i32, i64, i32, i32* }
%struct.ntb_net_queue = type { i32*, i32, i32, i32, i32, i32, i32*, %struct.ntb_net_ctx* }
%struct.ntb_queue_handlers = type { i32, i32, i32 }

@ntb_net_rx_handler = common dso_local global i32 0, align 4
@ntb_net_tx_handler = common dso_local global i32 0, align 4
@ntb_net_event_handler = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ntb: Cannot allocate ifnet structure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@g_if_ntb_num_queues = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"ntb tx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@ntb_handle_tx = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"ntb_txq\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@PI_NET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"%s txq%d\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"%d queue(s)\0A\00", align 1
@ntb_net_init = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@ntb_ioctl = common dso_local global i32 0, align 4
@ntb_transmit = common dso_local global i32 0, align 4
@ntb_qflush = common dso_local global i32 0, align 4
@IFCAP_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_HWCSUM_IPV6 = common dso_local global i32 0, align 4
@IFCAP_JUMBO_MTU = common dso_local global i32 0, align 4
@IFCAP_LINKSTATE = common dso_local global i32 0, align 4
@ETHER_HDR_LEN = common dso_local global i64 0, align 8
@IFM_IMASK = common dso_local global i32 0, align 4
@ntb_ifmedia_upd = common dso_local global i32 0, align 4
@ntb_ifmedia_sts = common dso_local global i32 0, align 4
@NTB_MEDIATYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ntb_net_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_net_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ntb_net_ctx*, align 8
  %5 = alloca %struct.ntb_net_queue*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ntb_queue_handlers, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.ntb_net_ctx* @device_get_softc(i32 %9)
  store %struct.ntb_net_ctx* %10, %struct.ntb_net_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.ntb_queue_handlers, %struct.ntb_queue_handlers* %7, i32 0, i32 0
  %12 = load i32, i32* @ntb_net_rx_handler, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.ntb_queue_handlers, %struct.ntb_queue_handlers* %7, i32 0, i32 1
  %14 = load i32, i32* @ntb_net_tx_handler, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.ntb_queue_handlers, %struct.ntb_queue_handlers* %7, i32 0, i32 2
  %16 = load i32, i32* @ntb_net_event_handler, align 4
  store i32 %16, i32* %15, align 4
  %17 = load i32, i32* @IFT_ETHER, align 4
  %18 = call i32* @if_gethandle(i32 %17)
  %19 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.ntb_net_ctx, %struct.ntb_net_ctx* %19, i32 0, i32 5
  store i32* %18, i32** %20, align 8
  store i32* %18, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  store i32 %25, i32* %2, align 4
  br label %230

26:                                               ; preds = %1
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @device_get_name(i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @device_get_unit(i32 %30)
  %32 = call i32 @if_initname(i32* %27, i32 %29, i32 %31)
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @if_setdev(i32* %33, i32 %34)
  %36 = load i32, i32* @g_if_ntb_num_queues, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @ntb_transport_queue_count(i32 %37)
  %39 = call i32 @min(i32 %36, i32 %38)
  %40 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %4, align 8
  %41 = getelementptr inbounds %struct.ntb_net_ctx, %struct.ntb_net_ctx* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %4, align 8
  %43 = getelementptr inbounds %struct.ntb_net_ctx, %struct.ntb_net_ctx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 48
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* @M_DEVBUF, align 4
  %49 = load i32, i32* @M_WAITOK, align 4
  %50 = load i32, i32* @M_ZERO, align 4
  %51 = or i32 %49, %50
  %52 = call %struct.ntb_net_queue* @malloc(i32 %47, i32 %48, i32 %51)
  %53 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %4, align 8
  %54 = getelementptr inbounds %struct.ntb_net_ctx, %struct.ntb_net_ctx* %53, i32 0, i32 1
  store %struct.ntb_net_queue* %52, %struct.ntb_net_queue** %54, align 8
  %55 = load i64, i64* @INT_MAX, align 8
  %56 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %4, align 8
  %57 = getelementptr inbounds %struct.ntb_net_ctx, %struct.ntb_net_ctx* %56, i32 0, i32 3
  store i64 %55, i64* %57, align 8
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %132, %26
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %4, align 8
  %61 = getelementptr inbounds %struct.ntb_net_ctx, %struct.ntb_net_ctx* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %135

64:                                               ; preds = %58
  %65 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %4, align 8
  %66 = getelementptr inbounds %struct.ntb_net_ctx, %struct.ntb_net_ctx* %65, i32 0, i32 1
  %67 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %67, i64 %69
  store %struct.ntb_net_queue* %70, %struct.ntb_net_queue** %5, align 8
  %71 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %4, align 8
  %72 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %5, align 8
  %73 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %72, i32 0, i32 7
  store %struct.ntb_net_ctx* %71, %struct.ntb_net_ctx** %73, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %5, align 8
  %76 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %75, i32 0, i32 6
  store i32* %74, i32** %76, align 8
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %5, align 8
  %80 = call i32* @ntb_transport_create_queue(i32 %77, i32 %78, %struct.ntb_queue_handlers* %7, %struct.ntb_net_queue* %79)
  %81 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %5, align 8
  %82 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %81, i32 0, i32 0
  store i32* %80, i32** %82, align 8
  %83 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %5, align 8
  %84 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %64
  br label %135

88:                                               ; preds = %64
  %89 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %4, align 8
  %90 = getelementptr inbounds %struct.ntb_net_ctx, %struct.ntb_net_ctx* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %5, align 8
  %93 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @ntb_transport_max_size(i32* %94)
  %96 = call i64 @imin(i64 %91, i32 %95)
  %97 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %4, align 8
  %98 = getelementptr inbounds %struct.ntb_net_ctx, %struct.ntb_net_ctx* %97, i32 0, i32 3
  store i64 %96, i64* %98, align 8
  %99 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %5, align 8
  %100 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %99, i32 0, i32 4
  %101 = load i32, i32* @MTX_DEF, align 4
  %102 = call i32 @mtx_init(i32* %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %101)
  %103 = load i32, i32* @M_DEVBUF, align 4
  %104 = load i32, i32* @M_WAITOK, align 4
  %105 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %5, align 8
  %106 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %105, i32 0, i32 4
  %107 = call i32 @buf_ring_alloc(i32 4096, i32 %103, i32 %104, i32* %106)
  %108 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %5, align 8
  %109 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 8
  %110 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %5, align 8
  %111 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %110, i32 0, i32 3
  %112 = load i32, i32* @ntb_handle_tx, align 4
  %113 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %5, align 8
  %114 = call i32 @TASK_INIT(i32* %111, i32 0, i32 %112, %struct.ntb_net_queue* %113)
  %115 = load i32, i32* @M_NOWAIT, align 4
  %116 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %117 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %5, align 8
  %118 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %117, i32 0, i32 2
  %119 = call i32 @taskqueue_create_fast(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %115, i32 %116, i32* %118)
  %120 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %5, align 8
  %121 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 4
  %122 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %5, align 8
  %123 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %122, i32 0, i32 2
  %124 = load i32, i32* @PI_NET, align 4
  %125 = load i32, i32* %3, align 4
  %126 = call i32 @device_get_nameunit(i32 %125)
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @taskqueue_start_threads(i32* %123, i32 1, i32 %124, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %126, i32 %127)
  %129 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %5, align 8
  %130 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %129, i32 0, i32 1
  %131 = call i32 @callout_init(i32* %130, i32 1)
  br label %132

132:                                              ; preds = %88
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %8, align 4
  br label %58

135:                                              ; preds = %87, %58
  %136 = load i32, i32* %8, align 4
  %137 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %4, align 8
  %138 = getelementptr inbounds %struct.ntb_net_ctx, %struct.ntb_net_ctx* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load i32, i32* %3, align 4
  %140 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %4, align 8
  %141 = getelementptr inbounds %struct.ntb_net_ctx, %struct.ntb_net_ctx* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @device_printf(i32 %139, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %142)
  %144 = load i32*, i32** %6, align 8
  %145 = load i32, i32* @ntb_net_init, align 4
  %146 = call i32 @if_setinitfn(i32* %144, i32 %145)
  %147 = load i32*, i32** %6, align 8
  %148 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %4, align 8
  %149 = call i32 @if_setsoftc(i32* %147, %struct.ntb_net_ctx* %148)
  %150 = load i32*, i32** %6, align 8
  %151 = load i32, i32* @IFF_BROADCAST, align 4
  %152 = load i32, i32* @IFF_SIMPLEX, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @IFF_MULTICAST, align 4
  %155 = or i32 %153, %154
  %156 = call i32 @if_setflags(i32* %150, i32 %155)
  %157 = load i32*, i32** %6, align 8
  %158 = load i32, i32* @ntb_ioctl, align 4
  %159 = call i32 @if_setioctlfn(i32* %157, i32 %158)
  %160 = load i32*, i32** %6, align 8
  %161 = load i32, i32* @ntb_transmit, align 4
  %162 = call i32 @if_settransmitfn(i32* %160, i32 %161)
  %163 = load i32*, i32** %6, align 8
  %164 = load i32, i32* @ntb_qflush, align 4
  %165 = call i32 @if_setqflushfn(i32* %163, i32 %164)
  %166 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %4, align 8
  %167 = getelementptr inbounds %struct.ntb_net_ctx, %struct.ntb_net_ctx* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @create_random_local_eui48(i32 %168)
  %170 = load i32*, i32** %6, align 8
  %171 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %4, align 8
  %172 = getelementptr inbounds %struct.ntb_net_ctx, %struct.ntb_net_ctx* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @ether_ifattach(i32* %170, i32 %173)
  %175 = load i32*, i32** %6, align 8
  %176 = load i32, i32* @IFCAP_HWCSUM, align 4
  %177 = load i32, i32* @IFCAP_HWCSUM_IPV6, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @IFCAP_JUMBO_MTU, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* @IFCAP_LINKSTATE, align 4
  %182 = or i32 %180, %181
  %183 = call i32 @if_setcapabilities(i32* %175, i32 %182)
  %184 = load i32*, i32** %6, align 8
  %185 = load i32, i32* @IFCAP_JUMBO_MTU, align 4
  %186 = load i32, i32* @IFCAP_LINKSTATE, align 4
  %187 = or i32 %185, %186
  %188 = call i32 @if_setcapenable(i32* %184, i32 %187)
  %189 = load i32*, i32** %6, align 8
  %190 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %4, align 8
  %191 = getelementptr inbounds %struct.ntb_net_ctx, %struct.ntb_net_ctx* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @ETHER_HDR_LEN, align 8
  %194 = sub nsw i64 %192, %193
  %195 = call i32 @if_setmtu(i32* %189, i64 %194)
  %196 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %4, align 8
  %197 = getelementptr inbounds %struct.ntb_net_ctx, %struct.ntb_net_ctx* %196, i32 0, i32 2
  %198 = load i32, i32* @IFM_IMASK, align 4
  %199 = load i32, i32* @ntb_ifmedia_upd, align 4
  %200 = load i32, i32* @ntb_ifmedia_sts, align 4
  %201 = call i32 @ifmedia_init(i32* %197, i32 %198, i32 %199, i32 %200)
  %202 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %4, align 8
  %203 = getelementptr inbounds %struct.ntb_net_ctx, %struct.ntb_net_ctx* %202, i32 0, i32 2
  %204 = load i32, i32* @NTB_MEDIATYPE, align 4
  %205 = call i32 @ifmedia_add(i32* %203, i32 %204, i32 0, i32* null)
  %206 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %4, align 8
  %207 = getelementptr inbounds %struct.ntb_net_ctx, %struct.ntb_net_ctx* %206, i32 0, i32 2
  %208 = load i32, i32* @NTB_MEDIATYPE, align 4
  %209 = call i32 @ifmedia_set(i32* %207, i32 %208)
  store i32 0, i32* %8, align 4
  br label %210

210:                                              ; preds = %226, %135
  %211 = load i32, i32* %8, align 4
  %212 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %4, align 8
  %213 = getelementptr inbounds %struct.ntb_net_ctx, %struct.ntb_net_ctx* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = icmp slt i32 %211, %214
  br i1 %215, label %216, label %229

216:                                              ; preds = %210
  %217 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %4, align 8
  %218 = getelementptr inbounds %struct.ntb_net_ctx, %struct.ntb_net_ctx* %217, i32 0, i32 1
  %219 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %218, align 8
  %220 = load i32, i32* %8, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %219, i64 %221
  %223 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = call i32 @ntb_transport_link_up(i32* %224)
  br label %226

226:                                              ; preds = %216
  %227 = load i32, i32* %8, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %8, align 4
  br label %210

229:                                              ; preds = %210
  store i32 0, i32* %2, align 4
  br label %230

230:                                              ; preds = %229, %23
  %231 = load i32, i32* %2, align 4
  ret i32 %231
}

declare dso_local %struct.ntb_net_ctx* @device_get_softc(i32) #1

declare dso_local i32* @if_gethandle(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @if_initname(i32*, i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @if_setdev(i32*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ntb_transport_queue_count(i32) #1

declare dso_local %struct.ntb_net_queue* @malloc(i32, i32, i32) #1

declare dso_local i32* @ntb_transport_create_queue(i32, i32, %struct.ntb_queue_handlers*, %struct.ntb_net_queue*) #1

declare dso_local i64 @imin(i64, i32) #1

declare dso_local i32 @ntb_transport_max_size(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @buf_ring_alloc(i32, i32, i32, i32*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.ntb_net_queue*) #1

declare dso_local i32 @taskqueue_create_fast(i8*, i32, i32, i32*) #1

declare dso_local i32 @taskqueue_start_threads(i32*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @if_setinitfn(i32*, i32) #1

declare dso_local i32 @if_setsoftc(i32*, %struct.ntb_net_ctx*) #1

declare dso_local i32 @if_setflags(i32*, i32) #1

declare dso_local i32 @if_setioctlfn(i32*, i32) #1

declare dso_local i32 @if_settransmitfn(i32*, i32) #1

declare dso_local i32 @if_setqflushfn(i32*, i32) #1

declare dso_local i32 @create_random_local_eui48(i32) #1

declare dso_local i32 @ether_ifattach(i32*, i32) #1

declare dso_local i32 @if_setcapabilities(i32*, i32) #1

declare dso_local i32 @if_setcapenable(i32*, i32) #1

declare dso_local i32 @if_setmtu(i32*, i64) #1

declare dso_local i32 @ifmedia_init(i32*, i32, i32, i32) #1

declare dso_local i32 @ifmedia_add(i32*, i32, i32, i32*) #1

declare dso_local i32 @ifmedia_set(i32*, i32) #1

declare dso_local i32 @ntb_transport_link_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
