; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_tsb.c_tsb_tte_enter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_tsb.c_tsb_tte_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.tte = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_17__, i32, %struct.TYPE_15__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@KTR_SPARE2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"tsb_tte_enter: off colour va=%#lx pa=%#lx o=%p ot=%d pi=%#lx\00", align 1
@kernel_pmap = common dso_local global %struct.TYPE_19__* null, align 8
@tsb_nenter_k_oc = common dso_local global i32 0, align 4
@tsb_nenter_u_oc = common dso_local global i32 0, align 4
@tte_list_global_lock = common dso_local global i32 0, align 4
@RA_WLOCKED = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@tsb_nenter_k = common dso_local global i32 0, align 4
@TD_V = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"tsb_tte_enter: replacing valid kernel mapping\00", align 1
@tsb_nenter_u = common dso_local global i32 0, align 4
@tick = common dso_local global i32 0, align 4
@TSB_BUCKET_SIZE = common dso_local global i32 0, align 4
@TD_REF = common dso_local global i32 0, align 4
@tsb_nrepl = common dso_local global i32 0, align 4
@PG_FICTITIOUS = common dso_local global i32 0, align 4
@TD_CP = common dso_local global i32 0, align 4
@VPO_UNMANAGED = common dso_local global i32 0, align 4
@TD_PV = common dso_local global i32 0, align 4
@TD_CV = common dso_local global i32 0, align 4
@tte_link = common dso_local global i32 0, align 4
@TD_FAKE = common dso_local global i32 0, align 4
@TD_E = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tte* @tsb_tte_enter(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tte*, align 8
  %12 = alloca %struct.tte*, align 8
  %13 = alloca %struct.tte*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %18 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_18__* %17)
  %19 = call i64 @DCACHE_COLOR(i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @DCACHE_COLOR(i32 %20)
  %22 = icmp ne i64 %19, %21
  br i1 %22, label %23, label %58

23:                                               ; preds = %5
  %24 = load i32, i32* @KTR_SPARE2, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %27 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_18__* %26)
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %34 = icmp ne %struct.TYPE_15__* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %23
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  br label %42

41:                                               ; preds = %23
  br label %42

42:                                               ; preds = %41, %35
  %43 = phi i32 [ %40, %35 ], [ -1, %41 ]
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @CTR5(i32 %24, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %27, %struct.TYPE_15__* %30, i32 %43, i32 %46)
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** @kernel_pmap, align 8
  %50 = icmp eq %struct.TYPE_19__* %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i32, i32* @tsb_nenter_k_oc, align 4
  %53 = call i32 @PMAP_STATS_INC(i32 %52)
  br label %57

54:                                               ; preds = %42
  %55 = load i32, i32* @tsb_nenter_u_oc, align 4
  %56 = call i32 @PMAP_STATS_INC(i32 %55)
  br label %57

57:                                               ; preds = %54, %51
  br label %58

58:                                               ; preds = %57, %5
  %59 = load i32, i32* @RA_WLOCKED, align 4
  %60 = call i32 @rw_assert(i32* @tte_list_global_lock, i32 %59)
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %62 = load i32, i32* @MA_OWNED, align 4
  %63 = call i32 @PMAP_LOCK_ASSERT(%struct.TYPE_19__* %61, i32 %62)
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** @kernel_pmap, align 8
  %66 = icmp eq %struct.TYPE_19__* %64, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %58
  %68 = load i32, i32* @tsb_nenter_k, align 4
  %69 = call i32 @PMAP_STATS_INC(i32 %68)
  %70 = load i32, i32* %8, align 4
  %71 = call %struct.tte* @tsb_kvtotte(i32 %70)
  store %struct.tte* %71, %struct.tte** %13, align 8
  %72 = load %struct.tte*, %struct.tte** %13, align 8
  %73 = getelementptr inbounds %struct.tte, %struct.tte* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @TD_V, align 4
  %76 = and i32 %74, %75
  %77 = icmp eq i32 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @KASSERT(i32 %78, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %170

80:                                               ; preds = %58
  %81 = load i32, i32* @tsb_nenter_u, align 4
  %82 = call i32 @PMAP_STATS_INC(i32 %81)
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call %struct.tte* @tsb_vtobucket(%struct.TYPE_19__* %83, i32 %84, i32 %85)
  store %struct.tte* %86, %struct.tte** %11, align 8
  store %struct.tte* null, %struct.tte** %13, align 8
  store %struct.tte* null, %struct.tte** %12, align 8
  %87 = load i32, i32* @tick, align 4
  %88 = call i32 @rd(i32 %87)
  %89 = load i32, i32* @TSB_BUCKET_SIZE, align 4
  %90 = sub nsw i32 %89, 1
  %91 = and i32 %88, %90
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  store i32 %92, i32* %16, align 4
  br label %93

93:                                               ; preds = %137, %80
  %94 = load %struct.tte*, %struct.tte** %11, align 8
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.tte, %struct.tte* %94, i64 %96
  %98 = getelementptr inbounds %struct.tte, %struct.tte* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @TD_V, align 4
  %101 = and i32 %99, %100
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %93
  %104 = load %struct.tte*, %struct.tte** %11, align 8
  %105 = load i32, i32* %16, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.tte, %struct.tte* %104, i64 %106
  store %struct.tte* %107, %struct.tte** %13, align 8
  br label %145

108:                                              ; preds = %93
  %109 = load %struct.tte*, %struct.tte** %13, align 8
  %110 = icmp eq %struct.tte* %109, null
  br i1 %110, label %111, label %136

111:                                              ; preds = %108
  %112 = load %struct.tte*, %struct.tte** %11, align 8
  %113 = load i32, i32* %16, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.tte, %struct.tte* %112, i64 %114
  %116 = getelementptr inbounds %struct.tte, %struct.tte* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @TD_REF, align 4
  %119 = and i32 %117, %118
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %111
  %122 = load %struct.tte*, %struct.tte** %11, align 8
  %123 = load i32, i32* %16, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.tte, %struct.tte* %122, i64 %124
  store %struct.tte* %125, %struct.tte** %13, align 8
  br label %135

126:                                              ; preds = %111
  %127 = load %struct.tte*, %struct.tte** %12, align 8
  %128 = icmp eq %struct.tte* %127, null
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load %struct.tte*, %struct.tte** %11, align 8
  %131 = load i32, i32* %16, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.tte, %struct.tte* %130, i64 %132
  store %struct.tte* %133, %struct.tte** %12, align 8
  br label %134

134:                                              ; preds = %129, %126
  br label %135

135:                                              ; preds = %134, %121
  br label %136

136:                                              ; preds = %135, %108
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %16, align 4
  %139 = add nsw i32 %138, 1
  %140 = load i32, i32* @TSB_BUCKET_SIZE, align 4
  %141 = sub nsw i32 %140, 1
  %142 = and i32 %139, %141
  store i32 %142, i32* %16, align 4
  %143 = load i32, i32* %15, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %93, label %145

145:                                              ; preds = %137, %103
  %146 = load %struct.tte*, %struct.tte** %13, align 8
  %147 = icmp eq %struct.tte* %146, null
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = load %struct.tte*, %struct.tte** %12, align 8
  store %struct.tte* %149, %struct.tte** %13, align 8
  br label %150

150:                                              ; preds = %148, %145
  %151 = load %struct.tte*, %struct.tte** %13, align 8
  %152 = getelementptr inbounds %struct.tte, %struct.tte* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @TD_V, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %169

157:                                              ; preds = %150
  %158 = load i32, i32* @tsb_nrepl, align 4
  %159 = call i32 @PMAP_STATS_INC(i32 %158)
  %160 = load %struct.tte*, %struct.tte** %13, align 8
  %161 = call i32 @TTE_GET_VA(%struct.tte* %160)
  store i32 %161, i32* %14, align 4
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %163 = load %struct.tte*, %struct.tte** %13, align 8
  %164 = load i32, i32* %14, align 4
  %165 = call i32 @pmap_remove_tte(%struct.TYPE_19__* %162, i32* null, %struct.tte* %163, i32 %164)
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %167 = load i32, i32* %14, align 4
  %168 = call i32 @tlb_page_demap(%struct.TYPE_19__* %166, i32 %167)
  br label %169

169:                                              ; preds = %157, %150
  br label %170

170:                                              ; preds = %169, %67
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @PG_FICTITIOUS, align 4
  %175 = and i32 %173, %174
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %212

177:                                              ; preds = %170
  %178 = load i32, i32* @TD_CP, align 4
  %179 = load i32, i32* %10, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %10, align 4
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @VPO_UNMANAGED, align 4
  %185 = and i32 %183, %184
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %196

187:                                              ; preds = %177
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 4
  %193 = load i32, i32* @TD_PV, align 4
  %194 = load i32, i32* %10, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %10, align 4
  br label %196

196:                                              ; preds = %187, %177
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %198 = load i32, i32* %8, align 4
  %199 = call i64 @pmap_cache_enter(%struct.TYPE_18__* %197, i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %196
  %202 = load i32, i32* @TD_CV, align 4
  %203 = load i32, i32* %10, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %10, align 4
  br label %205

205:                                              ; preds = %201, %196
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 0
  %209 = load %struct.tte*, %struct.tte** %13, align 8
  %210 = load i32, i32* @tte_link, align 4
  %211 = call i32 @TAILQ_INSERT_TAIL(i32* %208, %struct.tte* %209, i32 %210)
  br label %218

212:                                              ; preds = %170
  %213 = load i32, i32* @TD_FAKE, align 4
  %214 = load i32, i32* @TD_E, align 4
  %215 = or i32 %213, %214
  %216 = load i32, i32* %10, align 4
  %217 = or i32 %216, %215
  store i32 %217, i32* %10, align 4
  br label %218

218:                                              ; preds = %212, %205
  %219 = load i32, i32* %8, align 4
  %220 = load i32, i32* %9, align 4
  %221 = call i32 @TV_VPN(i32 %219, i32 %220)
  %222 = load %struct.tte*, %struct.tte** %13, align 8
  %223 = getelementptr inbounds %struct.tte, %struct.tte* %222, i32 0, i32 1
  store i32 %221, i32* %223, align 4
  %224 = load i32, i32* %10, align 4
  %225 = load %struct.tte*, %struct.tte** %13, align 8
  %226 = getelementptr inbounds %struct.tte, %struct.tte* %225, i32 0, i32 0
  store i32 %224, i32* %226, align 4
  %227 = load %struct.tte*, %struct.tte** %13, align 8
  ret %struct.tte* %227
}

declare dso_local i64 @DCACHE_COLOR(i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_18__*) #1

declare dso_local i32 @CTR5(i32, i8*, i32, i32, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @PMAP_STATS_INC(i32) #1

declare dso_local i32 @rw_assert(i32*, i32) #1

declare dso_local i32 @PMAP_LOCK_ASSERT(%struct.TYPE_19__*, i32) #1

declare dso_local %struct.tte* @tsb_kvtotte(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.tte* @tsb_vtobucket(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @rd(i32) #1

declare dso_local i32 @TTE_GET_VA(%struct.tte*) #1

declare dso_local i32 @pmap_remove_tte(%struct.TYPE_19__*, i32*, %struct.tte*, i32) #1

declare dso_local i32 @tlb_page_demap(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @pmap_cache_enter(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.tte*, i32) #1

declare dso_local i32 @TV_VPN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
