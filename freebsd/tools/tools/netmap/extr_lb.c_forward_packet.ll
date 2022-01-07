; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_lb.c_forward_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_lb.c_forward_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.overflow_queue = type { i64 }
%struct.port_des = type { %struct.TYPE_4__, %struct.overflow_queue*, %struct.netmap_ring* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.netmap_ring = type { i64, i64, %struct.netmap_slot* }
%struct.netmap_slot = type { i64, i64, i64, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.group_des = type { i64, %struct.port_des* }

@NS_BUF_CHANGED = common dso_local global i32 0, align 4
@forwarded = common dso_local global i32 0, align 4
@dropped = common dso_local global i32 0, align 4
@freeq = common dso_local global %struct.overflow_queue* null, align 8
@ports = common dso_local global %struct.port_des* null, align 8
@glob_arg = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@BUF_REVOKE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"revoked %d buffers from %s\00", align 1
@lq = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @forward_packet(%struct.group_des* %0, %struct.netmap_slot* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.group_des*, align 8
  %5 = alloca %struct.netmap_slot*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.port_des*, align 8
  %9 = alloca %struct.netmap_ring*, align 8
  %10 = alloca %struct.overflow_queue*, align 8
  %11 = alloca %struct.netmap_slot*, align 8
  %12 = alloca %struct.netmap_slot, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.port_des*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.port_des*, align 8
  %17 = alloca %struct.netmap_slot, align 8
  %18 = alloca %struct.netmap_slot, align 8
  store %struct.group_des* %0, %struct.group_des** %4, align 8
  store %struct.netmap_slot* %1, %struct.netmap_slot** %5, align 8
  %19 = load %struct.netmap_slot*, %struct.netmap_slot** %5, align 8
  %20 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.group_des*, %struct.group_des** %4, align 8
  %24 = getelementptr inbounds %struct.group_des, %struct.group_des* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = urem i64 %22, %25
  store i64 %26, i64* %7, align 8
  %27 = load %struct.group_des*, %struct.group_des** %4, align 8
  %28 = getelementptr inbounds %struct.group_des, %struct.group_des* %27, i32 0, i32 1
  %29 = load %struct.port_des*, %struct.port_des** %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds %struct.port_des, %struct.port_des* %29, i64 %30
  store %struct.port_des* %31, %struct.port_des** %8, align 8
  %32 = load %struct.port_des*, %struct.port_des** %8, align 8
  %33 = getelementptr inbounds %struct.port_des, %struct.port_des* %32, i32 0, i32 2
  %34 = load %struct.netmap_ring*, %struct.netmap_ring** %33, align 8
  store %struct.netmap_ring* %34, %struct.netmap_ring** %9, align 8
  %35 = load %struct.port_des*, %struct.port_des** %8, align 8
  %36 = getelementptr inbounds %struct.port_des, %struct.port_des* %35, i32 0, i32 1
  %37 = load %struct.overflow_queue*, %struct.overflow_queue** %36, align 8
  store %struct.overflow_queue* %37, %struct.overflow_queue** %10, align 8
  %38 = load %struct.netmap_ring*, %struct.netmap_ring** %9, align 8
  %39 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.netmap_ring*, %struct.netmap_ring** %9, align 8
  %42 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %109

45:                                               ; preds = %2
  %46 = load %struct.overflow_queue*, %struct.overflow_queue** %10, align 8
  %47 = icmp eq %struct.overflow_queue* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load %struct.overflow_queue*, %struct.overflow_queue** %10, align 8
  %50 = call i64 @oq_empty(%struct.overflow_queue* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %109

52:                                               ; preds = %48, %45
  %53 = load %struct.netmap_ring*, %struct.netmap_ring** %9, align 8
  %54 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %53, i32 0, i32 2
  %55 = load %struct.netmap_slot*, %struct.netmap_slot** %54, align 8
  %56 = load %struct.netmap_ring*, %struct.netmap_ring** %9, align 8
  %57 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %55, i64 %58
  store %struct.netmap_slot* %59, %struct.netmap_slot** %11, align 8
  %60 = load %struct.netmap_slot*, %struct.netmap_slot** %11, align 8
  %61 = bitcast %struct.netmap_slot* %12 to i8*
  %62 = bitcast %struct.netmap_slot* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 %62, i64 32, i1 false)
  %63 = load %struct.netmap_slot*, %struct.netmap_slot** %5, align 8
  %64 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.netmap_slot*, %struct.netmap_slot** %11, align 8
  %67 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load %struct.netmap_slot*, %struct.netmap_slot** %5, align 8
  %69 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.netmap_slot*, %struct.netmap_slot** %11, align 8
  %72 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %71, i32 0, i32 2
  store i64 %70, i64* %72, align 8
  %73 = load i32, i32* @NS_BUF_CHANGED, align 4
  %74 = load %struct.netmap_slot*, %struct.netmap_slot** %11, align 8
  %75 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load %struct.netmap_slot*, %struct.netmap_slot** %5, align 8
  %79 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.netmap_slot*, %struct.netmap_slot** %11, align 8
  %82 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.netmap_ring*, %struct.netmap_ring** %9, align 8
  %84 = load %struct.netmap_ring*, %struct.netmap_ring** %9, align 8
  %85 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @nm_ring_next(%struct.netmap_ring* %83, i64 %86)
  %88 = load %struct.netmap_ring*, %struct.netmap_ring** %9, align 8
  %89 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.netmap_slot*, %struct.netmap_slot** %5, align 8
  %91 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.port_des*, %struct.port_des** %8, align 8
  %94 = getelementptr inbounds %struct.port_des, %struct.port_des* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %92
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %95, align 4
  %100 = load %struct.port_des*, %struct.port_des** %8, align 8
  %101 = getelementptr inbounds %struct.port_des, %struct.port_des* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 8
  %105 = load i32, i32* @forwarded, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* @forwarded, align 4
  %107 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %12, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %3, align 8
  br label %227

109:                                              ; preds = %48, %2
  %110 = load %struct.overflow_queue*, %struct.overflow_queue** %10, align 8
  %111 = icmp eq %struct.overflow_queue* %110, null
  br i1 %111, label %116, label %112

112:                                              ; preds = %109
  %113 = load %struct.overflow_queue*, %struct.overflow_queue** %10, align 8
  %114 = call i64 @oq_full(%struct.overflow_queue* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %137

116:                                              ; preds = %112, %109
  %117 = load i32, i32* @dropped, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* @dropped, align 4
  %119 = load %struct.port_des*, %struct.port_des** %8, align 8
  %120 = getelementptr inbounds %struct.port_des, %struct.port_des* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  %124 = load %struct.netmap_slot*, %struct.netmap_slot** %5, align 8
  %125 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.port_des*, %struct.port_des** %8, align 8
  %128 = getelementptr inbounds %struct.port_des, %struct.port_des* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %131, %126
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %129, align 8
  %134 = load %struct.netmap_slot*, %struct.netmap_slot** %5, align 8
  %135 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %3, align 8
  br label %227

137:                                              ; preds = %112
  %138 = load %struct.overflow_queue*, %struct.overflow_queue** %10, align 8
  %139 = load %struct.netmap_slot*, %struct.netmap_slot** %5, align 8
  %140 = call i32 @oq_enq(%struct.overflow_queue* %138, %struct.netmap_slot* %139)
  %141 = load %struct.overflow_queue*, %struct.overflow_queue** @freeq, align 8
  %142 = call i64 @oq_empty(%struct.overflow_queue* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %223

144:                                              ; preds = %137
  %145 = load %struct.port_des*, %struct.port_des** @ports, align 8
  %146 = getelementptr inbounds %struct.port_des, %struct.port_des* %145, i64 0
  store %struct.port_des* %146, %struct.port_des** %14, align 8
  %147 = load %struct.port_des*, %struct.port_des** %14, align 8
  %148 = getelementptr inbounds %struct.port_des, %struct.port_des* %147, i32 0, i32 1
  %149 = load %struct.overflow_queue*, %struct.overflow_queue** %148, align 8
  %150 = getelementptr inbounds %struct.overflow_queue, %struct.overflow_queue* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %15, align 8
  store i64 1, i64* %13, align 8
  br label %152

152:                                              ; preds = %175, %144
  %153 = load i64, i64* %13, align 8
  %154 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @glob_arg, i32 0, i32 0), align 8
  %155 = icmp ult i64 %153, %154
  br i1 %155, label %156, label %178

156:                                              ; preds = %152
  %157 = load %struct.port_des*, %struct.port_des** @ports, align 8
  %158 = load i64, i64* %13, align 8
  %159 = getelementptr inbounds %struct.port_des, %struct.port_des* %157, i64 %158
  store %struct.port_des* %159, %struct.port_des** %16, align 8
  %160 = load %struct.port_des*, %struct.port_des** %16, align 8
  %161 = getelementptr inbounds %struct.port_des, %struct.port_des* %160, i32 0, i32 1
  %162 = load %struct.overflow_queue*, %struct.overflow_queue** %161, align 8
  %163 = getelementptr inbounds %struct.overflow_queue, %struct.overflow_queue* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* %15, align 8
  %166 = icmp ugt i64 %164, %165
  br i1 %166, label %167, label %174

167:                                              ; preds = %156
  %168 = load %struct.port_des*, %struct.port_des** %16, align 8
  store %struct.port_des* %168, %struct.port_des** %14, align 8
  %169 = load %struct.port_des*, %struct.port_des** %16, align 8
  %170 = getelementptr inbounds %struct.port_des, %struct.port_des* %169, i32 0, i32 1
  %171 = load %struct.overflow_queue*, %struct.overflow_queue** %170, align 8
  %172 = getelementptr inbounds %struct.overflow_queue, %struct.overflow_queue* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  store i64 %173, i64* %15, align 8
  br label %174

174:                                              ; preds = %167, %156
  br label %175

175:                                              ; preds = %174
  %176 = load i64, i64* %13, align 8
  %177 = add i64 %176, 1
  store i64 %177, i64* %13, align 8
  br label %152

178:                                              ; preds = %152
  store i64 0, i64* %13, align 8
  br label %179

179:                                              ; preds = %214, %178
  %180 = load %struct.port_des*, %struct.port_des** %14, align 8
  %181 = getelementptr inbounds %struct.port_des, %struct.port_des* %180, i32 0, i32 1
  %182 = load %struct.overflow_queue*, %struct.overflow_queue** %181, align 8
  %183 = getelementptr inbounds %struct.overflow_queue, %struct.overflow_queue* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %179
  %187 = load i64, i64* %13, align 8
  %188 = load i64, i64* @BUF_REVOKE, align 8
  %189 = icmp ult i64 %187, %188
  br label %190

190:                                              ; preds = %186, %179
  %191 = phi i1 [ false, %179 ], [ %189, %186 ]
  br i1 %191, label %192, label %217

192:                                              ; preds = %190
  %193 = load %struct.port_des*, %struct.port_des** %14, align 8
  %194 = getelementptr inbounds %struct.port_des, %struct.port_des* %193, i32 0, i32 1
  %195 = load %struct.overflow_queue*, %struct.overflow_queue** %194, align 8
  call void @oq_deq(%struct.netmap_slot* sret %17, %struct.overflow_queue* %195)
  %196 = load i32, i32* @dropped, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* @dropped, align 4
  %198 = load %struct.port_des*, %struct.port_des** %14, align 8
  %199 = getelementptr inbounds %struct.port_des, %struct.port_des* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %200, align 4
  %203 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %17, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.port_des*, %struct.port_des** %14, align 8
  %206 = getelementptr inbounds %struct.port_des, %struct.port_des* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = sext i32 %208 to i64
  %210 = add nsw i64 %209, %204
  %211 = trunc i64 %210 to i32
  store i32 %211, i32* %207, align 8
  %212 = load %struct.overflow_queue*, %struct.overflow_queue** @freeq, align 8
  %213 = call i32 @oq_enq(%struct.overflow_queue* %212, %struct.netmap_slot* %17)
  br label %214

214:                                              ; preds = %192
  %215 = load i64, i64* %13, align 8
  %216 = add i64 %215, 1
  store i64 %216, i64* %13, align 8
  br label %179

217:                                              ; preds = %190
  %218 = load i64, i64* %13, align 8
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lq, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @ND(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %218, i32 %221)
  br label %223

223:                                              ; preds = %217, %137
  %224 = load %struct.overflow_queue*, %struct.overflow_queue** @freeq, align 8
  call void @oq_deq(%struct.netmap_slot* sret %18, %struct.overflow_queue* %224)
  %225 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %18, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  store i64 %226, i64* %3, align 8
  br label %227

227:                                              ; preds = %223, %116, %52
  %228 = load i64, i64* %3, align 8
  ret i64 %228
}

declare dso_local i64 @oq_empty(%struct.overflow_queue*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @nm_ring_next(%struct.netmap_ring*, i64) #1

declare dso_local i64 @oq_full(%struct.overflow_queue*) #1

declare dso_local i32 @oq_enq(%struct.overflow_queue*, %struct.netmap_slot*) #1

declare dso_local void @oq_deq(%struct.netmap_slot* sret, %struct.overflow_queue*) #1

declare dso_local i32 @ND(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
