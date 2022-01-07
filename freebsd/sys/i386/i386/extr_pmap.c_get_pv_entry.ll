; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_get_pv_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_get_pv_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.pv_chunk = type { i32*, i32*, %struct.TYPE_5__* }

@get_pv_entry.printinterval = internal constant %struct.timeval { i32 60, i32 0 }, align 4
@get_pv_entry.lastprint = internal global %struct.timeval zeroinitializer, align 4
@pvh_global_lock = common dso_local global i32 0, align 4
@RA_WLOCKED = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@pv_entry_allocs = common dso_local global i32 0, align 4
@pv_entry_count = common dso_local global i64 0, align 8
@pv_entry_high_water = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [124 x i8] c"Approaching the limit on PV entries, consider increasing either the vm.pmap.shpgperproc or the vm.pmap.pv_entries tunable.\0A\00", align 1
@_NPCM = common dso_local global i32 0, align 4
@pv_entry_spare = common dso_local global i32 0, align 4
@pc_list = common dso_local global i32 0, align 4
@pv_vafree = common dso_local global i64 0, align 8
@VM_ALLOC_NORMAL = common dso_local global i32 0, align 4
@VM_ALLOC_NOOBJ = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@pc_chunk_tryfail = common dso_local global i32 0, align 4
@pc_chunk_count = common dso_local global i32 0, align 4
@pc_chunk_allocs = common dso_local global i32 0, align 4
@pc_freemask = common dso_local global i64* null, align 8
@pv_chunks = common dso_local global i32 0, align 4
@pc_lru = common dso_local global i32 0, align 4
@_NPCPV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*, i64)* @get_pv_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_pv_entry(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.pv_chunk*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i32, i32* @RA_WLOCKED, align 4
  %12 = call i32 @rw_assert(i32* @pvh_global_lock, i32 %11)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = load i32, i32* @MA_OWNED, align 4
  %15 = call i32 @PMAP_LOCK_ASSERT(%struct.TYPE_5__* %13, i32 %14)
  %16 = load i32, i32* @pv_entry_allocs, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @pv_entry_allocs, align 4
  %18 = call i32 @PV_STAT(i32 %16)
  %19 = load i64, i64* @pv_entry_count, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* @pv_entry_count, align 8
  %21 = load i64, i64* @pv_entry_count, align 8
  %22 = load i64, i64* @pv_entry_high_water, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = call i64 @ratecheck(%struct.timeval* @get_pv_entry.lastprint, %struct.timeval* @get_pv_entry.printinterval)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 @printf(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %24
  br label %30

30:                                               ; preds = %29, %2
  br label %31

31:                                               ; preds = %155, %30
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = call %struct.pv_chunk* @TAILQ_FIRST(i32* %33)
  store %struct.pv_chunk* %34, %struct.pv_chunk** %9, align 8
  %35 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %36 = icmp ne %struct.pv_chunk* %35, null
  br i1 %36, label %37, label %130

37:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %61, %37
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @_NPCM, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %64

42:                                               ; preds = %38
  %43 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %44 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %42
  %52 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %53 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @bsfl(i32 %58)
  store i32 %59, i32* %6, align 4
  br label %64

60:                                               ; preds = %42
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %38

64:                                               ; preds = %51, %38
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @_NPCM, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %129

68:                                               ; preds = %64
  %69 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %70 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = mul nsw i32 %72, 32
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %71, i64 %76
  store i32* %77, i32** %8, align 8
  %78 = load i32, i32* %6, align 4
  %79 = zext i32 %78 to i64
  %80 = shl i64 1, %79
  %81 = xor i64 %80, -1
  %82 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %83 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = and i64 %89, %81
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %87, align 4
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %111, %68
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @_NPCM, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %114

96:                                               ; preds = %92
  %97 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %98 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %96
  %106 = load i32, i32* @pv_entry_spare, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* @pv_entry_spare, align 4
  %108 = call i32 @PV_STAT(i32 %106)
  %109 = load i32*, i32** %8, align 8
  store i32* %109, i32** %3, align 8
  br label %220

110:                                              ; preds = %96
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  br label %92

114:                                              ; preds = %92
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %118 = load i32, i32* @pc_list, align 4
  %119 = call i32 @TAILQ_REMOVE(i32* %116, %struct.pv_chunk* %117, i32 %118)
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %123 = load i32, i32* @pc_list, align 4
  %124 = call i32 @TAILQ_INSERT_TAIL(i32* %121, %struct.pv_chunk* %122, i32 %123)
  %125 = load i32, i32* @pv_entry_spare, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* @pv_entry_spare, align 4
  %127 = call i32 @PV_STAT(i32 %125)
  %128 = load i32*, i32** %8, align 8
  store i32* %128, i32** %3, align 8
  br label %220

129:                                              ; preds = %64
  br label %130

130:                                              ; preds = %129, %31
  %131 = load i64, i64* @pv_vafree, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %141, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* @VM_ALLOC_NORMAL, align 4
  %135 = load i32, i32* @VM_ALLOC_NOOBJ, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %138 = or i32 %136, %137
  %139 = call i32* @vm_page_alloc(i32* null, i32 0, i32 %138)
  store i32* %139, i32** %10, align 8
  %140 = icmp eq i32* %139, null
  br i1 %140, label %141, label %157

141:                                              ; preds = %133, %130
  %142 = load i64, i64* %5, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %141
  %145 = load i64, i64* @pv_entry_count, align 8
  %146 = add nsw i64 %145, -1
  store i64 %146, i64* @pv_entry_count, align 8
  %147 = load i32, i32* @pc_chunk_tryfail, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* @pc_chunk_tryfail, align 4
  %149 = call i32 @PV_STAT(i32 %147)
  store i32* null, i32** %3, align 8
  br label %220

150:                                              ; preds = %141
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %152 = call i32* @pmap_pv_reclaim(%struct.TYPE_5__* %151)
  store i32* %152, i32** %10, align 8
  %153 = load i32*, i32** %10, align 8
  %154 = icmp eq i32* %153, null
  br i1 %154, label %155, label %156

155:                                              ; preds = %150
  br label %31

156:                                              ; preds = %150
  br label %157

157:                                              ; preds = %156, %133
  %158 = load i32, i32* @pc_chunk_count, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* @pc_chunk_count, align 4
  %160 = call i32 @PV_STAT(i32 %158)
  %161 = load i32, i32* @pc_chunk_allocs, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* @pc_chunk_allocs, align 4
  %163 = call i32 @PV_STAT(i32 %161)
  %164 = call i64 @pmap_ptelist_alloc(i64* @pv_vafree)
  %165 = inttoptr i64 %164 to %struct.pv_chunk*
  store %struct.pv_chunk* %165, %struct.pv_chunk** %9, align 8
  %166 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %167 = ptrtoint %struct.pv_chunk* %166 to i32
  %168 = call i32 @pmap_qenter(i32 %167, i32** %10, i32 1)
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %170 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %171 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %170, i32 0, i32 2
  store %struct.TYPE_5__* %169, %struct.TYPE_5__** %171, align 8
  %172 = load i64*, i64** @pc_freemask, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 0
  %174 = load i64, i64* %173, align 8
  %175 = and i64 %174, -2
  %176 = trunc i64 %175 to i32
  %177 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %178 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  store i32 %176, i32* %180, align 4
  store i32 1, i32* %7, align 4
  br label %181

181:                                              ; preds = %198, %157
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* @_NPCM, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %201

185:                                              ; preds = %181
  %186 = load i64*, i64** @pc_freemask, align 8
  %187 = load i32, i32* %7, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i64, i64* %186, i64 %188
  %190 = load i64, i64* %189, align 8
  %191 = trunc i64 %190 to i32
  %192 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %193 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %7, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  store i32 %191, i32* %197, align 4
  br label %198

198:                                              ; preds = %185
  %199 = load i32, i32* %7, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %7, align 4
  br label %181

201:                                              ; preds = %181
  %202 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %203 = load i32, i32* @pc_lru, align 4
  %204 = call i32 @TAILQ_INSERT_TAIL(i32* @pv_chunks, %struct.pv_chunk* %202, i32 %203)
  %205 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %206 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %205, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  store i32* %208, i32** %8, align 8
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 0
  %211 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %212 = load i32, i32* @pc_list, align 4
  %213 = call i32 @TAILQ_INSERT_HEAD(i32* %210, %struct.pv_chunk* %211, i32 %212)
  %214 = load i32, i32* @_NPCPV, align 4
  %215 = sub nsw i32 %214, 1
  %216 = load i32, i32* @pv_entry_spare, align 4
  %217 = add nsw i32 %216, %215
  store i32 %217, i32* @pv_entry_spare, align 4
  %218 = call i32 @PV_STAT(i32 %217)
  %219 = load i32*, i32** %8, align 8
  store i32* %219, i32** %3, align 8
  br label %220

220:                                              ; preds = %201, %144, %114, %105
  %221 = load i32*, i32** %3, align 8
  ret i32* %221
}

declare dso_local i32 @rw_assert(i32*, i32) #1

declare dso_local i32 @PMAP_LOCK_ASSERT(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @PV_STAT(i32) #1

declare dso_local i64 @ratecheck(%struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local %struct.pv_chunk* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @bsfl(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.pv_chunk*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.pv_chunk*, i32) #1

declare dso_local i32* @vm_page_alloc(i32*, i32, i32) #1

declare dso_local i32* @pmap_pv_reclaim(%struct.TYPE_5__*) #1

declare dso_local i64 @pmap_ptelist_alloc(i64*) #1

declare dso_local i32 @pmap_qenter(i32, i32**, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.pv_chunk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
