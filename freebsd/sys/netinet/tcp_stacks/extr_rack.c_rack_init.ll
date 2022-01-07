; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i64, i64, i32*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.tcp_rack = type { i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_3__*, %struct.tcpcb* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rack_sendmap = type { i32, i64, i64, i32, i64, i64, i32*, i32 }

@rack_pcb_zone = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INP_SUPPORTS_MBUFQ = common dso_local global i32 0, align 4
@rack_reorder_fade = common dso_local global i32 0, align 4
@rack_ignore_data_after_close = common dso_local global i32 0, align 4
@rack_tlp_thresh = common dso_local global i32 0, align 4
@rack_slot_reduction = common dso_local global i32 0, align 4
@use_rack_cheat = common dso_local global i64 0, align 8
@V_tcp_delack_enabled = common dso_local global i64 0, align 8
@rack_hptsi_segments = common dso_local global i32 0, align 4
@rack_reorder_thresh = common dso_local global i32 0, align 4
@rack_pkt_delay = common dso_local global i32 0, align 4
@rack_use_proportional_reduce = common dso_local global i32 0, align 4
@rack_min_pace_time = common dso_local global i32 0, align 4
@rack_proportional_rate = common dso_local global i32 0, align 4
@rack_lower_cwnd_at_tlp = common dso_local global i32 0, align 4
@rack_early_recovery = common dso_local global i32 0, align 4
@rack_pace_every_seg = common dso_local global i32 0, align 4
@rack_rate_sample_method = common dso_local global i32 0, align 4
@rack_tlp_threshold_use = common dso_local global i32 0, align 4
@rack_send_a_lot_in_prr = common dso_local global i32 0, align 4
@rack_min_to = common dso_local global i32 0, align 4
@rack_per_of_gp = common dso_local global i32 0, align 4
@tcp_force_detection = common dso_local global i64 0, align 8
@RACK_OVERMAX = common dso_local global i32 0, align 4
@rack_rb_tree_head = common dso_local global i32 0, align 4
@r_tnext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpcb*)* @rack_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rack_init(%struct.tcpcb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.tcp_rack*, align 8
  %5 = alloca %struct.rack_sendmap*, align 8
  %6 = alloca %struct.rack_sendmap*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store %struct.tcp_rack* null, %struct.tcp_rack** %4, align 8
  %7 = load i32, i32* @rack_pcb_zone, align 4
  %8 = load i32, i32* @M_NOWAIT, align 4
  %9 = call i32* @uma_zalloc(i32 %7, i32 %8)
  %10 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %11 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %10, i32 0, i32 3
  store i32* %9, i32** %11, align 8
  %12 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %13 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  store i32 %17, i32* %2, align 4
  br label %247

18:                                               ; preds = %1
  %19 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %20 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @memset(i32* %21, i32 0, i32 136)
  %23 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %24 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = bitcast i32* %25 to %struct.tcp_rack*
  store %struct.tcp_rack* %26, %struct.tcp_rack** %4, align 8
  %27 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %28 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = call i32 @RB_INIT(i32* %29)
  %31 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %32 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 17
  %34 = call i32 @TAILQ_INIT(i32* %33)
  %35 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %36 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i32 @TAILQ_INIT(i32* %37)
  %39 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %40 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %41 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %40, i32 0, i32 12
  store %struct.tcpcb* %39, %struct.tcpcb** %41, align 8
  %42 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %43 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %42, i32 0, i32 5
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = icmp ne %struct.TYPE_3__* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %18
  %47 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %48 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %47, i32 0, i32 5
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %51 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %50, i32 0, i32 11
  store %struct.TYPE_3__* %49, %struct.TYPE_3__** %51, align 8
  br label %52

52:                                               ; preds = %46, %18
  %53 = load i32, i32* @INP_SUPPORTS_MBUFQ, align 4
  %54 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %55 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %54, i32 0, i32 5
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %53
  store i32 %59, i32* %57, align 4
  %60 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %61 = call i32 @rack_clear_rate_sample(%struct.tcp_rack* %60)
  %62 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %63 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %62, i32 0, i32 10
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* @rack_reorder_fade, align 4
  %65 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %66 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 16
  store i32 %64, i32* %67, align 8
  %68 = load i32, i32* @rack_ignore_data_after_close, align 4
  %69 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %70 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %69, i32 0, i32 9
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @rack_tlp_thresh, align 4
  %72 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %73 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 15
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* @rack_slot_reduction, align 4
  %76 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %77 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %76, i32 0, i32 8
  store i32 %75, i32* %77, align 4
  %78 = load i64, i64* @use_rack_cheat, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %52
  %81 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %82 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  br label %83

83:                                               ; preds = %80, %52
  %84 = load i64, i64* @V_tcp_delack_enabled, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %88 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  br label %92

89:                                               ; preds = %83
  %90 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %91 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i32, i32* @rack_hptsi_segments, align 4
  %94 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %95 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %94, i32 0, i32 7
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @rack_reorder_thresh, align 4
  %97 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %98 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 14
  store i32 %96, i32* %99, align 8
  %100 = load i32, i32* @rack_pkt_delay, align 4
  %101 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %102 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 13
  store i32 %100, i32* %103, align 4
  %104 = load i32, i32* @rack_use_proportional_reduce, align 4
  %105 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %106 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 12
  store i32 %104, i32* %107, align 8
  %108 = load i32, i32* @rack_min_pace_time, align 4
  %109 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %110 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %109, i32 0, i32 6
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @rack_proportional_rate, align 4
  %112 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %113 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 11
  store i32 %111, i32* %114, align 4
  %115 = load i32, i32* @rack_lower_cwnd_at_tlp, align 4
  %116 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %117 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 10
  store i32 %115, i32* %118, align 8
  %119 = load i32, i32* @rack_early_recovery, align 4
  %120 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %121 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 9
  store i32 %119, i32* %122, align 4
  %123 = load i32, i32* @rack_pace_every_seg, align 4
  %124 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %125 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %124, i32 0, i32 5
  store i32 %123, i32* %125, align 8
  %126 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %127 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %128 = call i32 @rack_set_pace_segments(%struct.tcpcb* %126, %struct.tcp_rack* %127)
  %129 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %130 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %133 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 8
  store i32 %131, i32* %134, align 8
  %135 = load i32, i32* @rack_rate_sample_method, align 4
  %136 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %137 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 7
  store i32 %135, i32* %138, align 4
  %139 = load i32, i32* @rack_tlp_threshold_use, align 4
  %140 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %141 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %140, i32 0, i32 4
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* @rack_send_a_lot_in_prr, align 4
  %143 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %144 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 6
  store i32 %142, i32* %145, align 8
  %146 = load i32, i32* @rack_min_to, align 4
  %147 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %148 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 5
  store i32 %146, i32* %149, align 4
  %150 = load i32, i32* @rack_per_of_gp, align 4
  %151 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %152 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 8
  %153 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %154 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 3
  %156 = call i32 @microuptime(i32* %155)
  %157 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %158 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %162 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 4
  store i32 %160, i32* %163, align 8
  %164 = call i32 (...) @tcp_ts_getticks()
  %165 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %166 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 2
  store i32 %164, i32* %167, align 8
  %168 = load i64, i64* @tcp_force_detection, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %92
  %171 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %172 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %171, i32 0, i32 1
  store i32 1, i32* %172, align 4
  br label %176

173:                                              ; preds = %92
  %174 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %175 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %174, i32 0, i32 1
  store i32 0, i32* %175, align 4
  br label %176

176:                                              ; preds = %173, %170
  %177 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %178 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %181 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %179, %182
  br i1 %183, label %184, label %240

184:                                              ; preds = %176
  %185 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %186 = call %struct.rack_sendmap* @rack_alloc(%struct.tcp_rack* %185)
  store %struct.rack_sendmap* %186, %struct.rack_sendmap** %6, align 8
  %187 = load %struct.rack_sendmap*, %struct.rack_sendmap** %6, align 8
  %188 = icmp eq %struct.rack_sendmap* %187, null
  br i1 %188, label %189, label %198

189:                                              ; preds = %184
  %190 = load i32, i32* @rack_pcb_zone, align 4
  %191 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %192 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %191, i32 0, i32 3
  %193 = load i32*, i32** %192, align 8
  %194 = call i32 @uma_zfree(i32 %190, i32* %193)
  %195 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %196 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %195, i32 0, i32 3
  store i32* null, i32** %196, align 8
  %197 = load i32, i32* @ENOMEM, align 4
  store i32 %197, i32* %2, align 4
  br label %247

198:                                              ; preds = %184
  %199 = load i32, i32* @RACK_OVERMAX, align 4
  %200 = load %struct.rack_sendmap*, %struct.rack_sendmap** %6, align 8
  %201 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %200, i32 0, i32 7
  store i32 %199, i32* %201, align 8
  %202 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %203 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.rack_sendmap*, %struct.rack_sendmap** %6, align 8
  %207 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %206, i32 0, i32 6
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  store i32 %205, i32* %209, align 4
  %210 = load %struct.rack_sendmap*, %struct.rack_sendmap** %6, align 8
  %211 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %210, i32 0, i32 0
  store i32 1, i32* %211, align 8
  %212 = load %struct.rack_sendmap*, %struct.rack_sendmap** %6, align 8
  %213 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %212, i32 0, i32 5
  store i64 0, i64* %213, align 8
  %214 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %215 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.rack_sendmap*, %struct.rack_sendmap** %6, align 8
  %218 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %217, i32 0, i32 1
  store i64 %216, i64* %218, align 8
  %219 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %220 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.rack_sendmap*, %struct.rack_sendmap** %6, align 8
  %223 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %222, i32 0, i32 2
  store i64 %221, i64* %223, align 8
  %224 = load %struct.rack_sendmap*, %struct.rack_sendmap** %6, align 8
  %225 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %224, i32 0, i32 4
  store i64 0, i64* %225, align 8
  %226 = load i32, i32* @rack_rb_tree_head, align 4
  %227 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %228 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 1
  %230 = load %struct.rack_sendmap*, %struct.rack_sendmap** %6, align 8
  %231 = call %struct.rack_sendmap* @RB_INSERT(i32 %226, i32* %229, %struct.rack_sendmap* %230)
  store %struct.rack_sendmap* %231, %struct.rack_sendmap** %5, align 8
  %232 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %233 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  %235 = load %struct.rack_sendmap*, %struct.rack_sendmap** %6, align 8
  %236 = load i32, i32* @r_tnext, align 4
  %237 = call i32 @TAILQ_INSERT_TAIL(i32* %234, %struct.rack_sendmap* %235, i32 %236)
  %238 = load %struct.rack_sendmap*, %struct.rack_sendmap** %6, align 8
  %239 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %238, i32 0, i32 3
  store i32 1, i32* %239, align 8
  br label %240

240:                                              ; preds = %198, %176
  %241 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %242 = call i32 @rack_stop_all_timers(%struct.tcpcb* %241)
  %243 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %244 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %245 = call i32 (...) @tcp_ts_getticks()
  %246 = call i32 @rack_start_hpts_timer(%struct.tcp_rack* %243, %struct.tcpcb* %244, i32 %245, i32 0, i32 0, i32 0)
  store i32 0, i32* %2, align 4
  br label %247

247:                                              ; preds = %240, %189, %16
  %248 = load i32, i32* %2, align 4
  ret i32 %248
}

declare dso_local i32* @uma_zalloc(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @RB_INIT(i32*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @rack_clear_rate_sample(%struct.tcp_rack*) #1

declare dso_local i32 @rack_set_pace_segments(%struct.tcpcb*, %struct.tcp_rack*) #1

declare dso_local i32 @microuptime(i32*) #1

declare dso_local i32 @tcp_ts_getticks(...) #1

declare dso_local %struct.rack_sendmap* @rack_alloc(%struct.tcp_rack*) #1

declare dso_local i32 @uma_zfree(i32, i32*) #1

declare dso_local %struct.rack_sendmap* @RB_INSERT(i32, i32*, %struct.rack_sendmap*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.rack_sendmap*, i32) #1

declare dso_local i32 @rack_stop_all_timers(%struct.tcpcb*) #1

declare dso_local i32 @rack_start_hpts_timer(%struct.tcp_rack*, %struct.tcpcb*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
