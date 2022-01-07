; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_get_pv_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_get_pv_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.pv_chunk = type { i32*, i32*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32 }

@pvh_global_lock = common dso_local global i32 0, align 4
@RA_WLOCKED = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@pv_entry_allocs = common dso_local global i32 0, align 4
@pv_entry_count = common dso_local global i32 0, align 4
@_NPCM = common dso_local global i32 0, align 4
@NBBY = common dso_local global i32 0, align 4
@pv_entry_spare = common dso_local global i32 0, align 4
@pc_list = common dso_local global i32 0, align 4
@VM_FREELIST_DIRECT = common dso_local global i32 0, align 4
@VM_ALLOC_NORMAL = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@pc_chunk_tryfail = common dso_local global i32 0, align 4
@pc_chunk_count = common dso_local global i32 0, align 4
@pc_chunk_allocs = common dso_local global i32 0, align 4
@pc_freemask = common dso_local global i64* null, align 8
@pv_chunks = common dso_local global i32 0, align 4
@pc_lru = common dso_local global i32 0, align 4
@_NPCPV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_10__*, i64)* @get_pv_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_pv_entry(%struct.TYPE_10__* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pv_chunk*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i32, i32* @RA_WLOCKED, align 4
  %13 = call i32 @rw_assert(i32* @pvh_global_lock, i32 %12)
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = load i32, i32* @MA_OWNED, align 4
  %16 = call i32 @PMAP_LOCK_ASSERT(%struct.TYPE_10__* %14, i32 %15)
  %17 = load i32, i32* @pv_entry_allocs, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @pv_entry_allocs, align 4
  %19 = call i32 @PV_STAT(i32 %17)
  %20 = load i32, i32* @pv_entry_count, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @pv_entry_count, align 4
  br label %22

22:                                               ; preds = %151, %2
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = call %struct.pv_chunk* @TAILQ_FIRST(i32* %24)
  store %struct.pv_chunk* %25, %struct.pv_chunk** %6, align 8
  %26 = load %struct.pv_chunk*, %struct.pv_chunk** %6, align 8
  %27 = icmp ne %struct.pv_chunk* %26, null
  br i1 %27, label %28, label %129

28:                                               ; preds = %22
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %53, %28
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @_NPCM, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %29
  %34 = load %struct.pv_chunk*, %struct.pv_chunk** %6, align 8
  %35 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %33
  %43 = load %struct.pv_chunk*, %struct.pv_chunk** %6, align 8
  %44 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ffsl(i32 %49)
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %56

52:                                               ; preds = %33
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %29

56:                                               ; preds = %42, %29
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @_NPCM, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %128

60:                                               ; preds = %56
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 4
  %64 = load i32, i32* @NBBY, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 %63, %65
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = add i64 %66, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %11, align 4
  %71 = load %struct.pv_chunk*, %struct.pv_chunk** %6, align 8
  %72 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32* %76, i32** %7, align 8
  %77 = load i32, i32* %9, align 4
  %78 = zext i32 %77 to i64
  %79 = shl i64 1, %78
  %80 = xor i64 %79, -1
  %81 = load %struct.pv_chunk*, %struct.pv_chunk** %6, align 8
  %82 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = and i64 %88, %80
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %86, align 4
  store i32 0, i32* %10, align 4
  br label %91

91:                                               ; preds = %110, %60
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @_NPCM, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %113

95:                                               ; preds = %91
  %96 = load %struct.pv_chunk*, %struct.pv_chunk** %6, align 8
  %97 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %95
  %105 = load i32, i32* @pv_entry_spare, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* @pv_entry_spare, align 4
  %107 = call i32 @PV_STAT(i32 %105)
  %108 = load i32*, i32** %7, align 8
  store i32* %108, i32** %3, align 8
  br label %219

109:                                              ; preds = %95
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %91

113:                                              ; preds = %91
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load %struct.pv_chunk*, %struct.pv_chunk** %6, align 8
  %117 = load i32, i32* @pc_list, align 4
  %118 = call i32 @TAILQ_REMOVE(i32* %115, %struct.pv_chunk* %116, i32 %117)
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load %struct.pv_chunk*, %struct.pv_chunk** %6, align 8
  %122 = load i32, i32* @pc_list, align 4
  %123 = call i32 @TAILQ_INSERT_TAIL(i32* %120, %struct.pv_chunk* %121, i32 %122)
  %124 = load i32, i32* @pv_entry_spare, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* @pv_entry_spare, align 4
  %126 = call i32 @PV_STAT(i32 %124)
  %127 = load i32*, i32** %7, align 8
  store i32* %127, i32** %3, align 8
  br label %219

128:                                              ; preds = %56
  br label %129

129:                                              ; preds = %128, %22
  %130 = load i32, i32* @VM_FREELIST_DIRECT, align 4
  %131 = load i32, i32* @VM_ALLOC_NORMAL, align 4
  %132 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %133 = or i32 %131, %132
  %134 = call %struct.TYPE_9__* @vm_page_alloc_freelist(i32 %130, i32 %133)
  store %struct.TYPE_9__* %134, %struct.TYPE_9__** %8, align 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %136 = icmp eq %struct.TYPE_9__* %135, null
  br i1 %136, label %137, label %153

137:                                              ; preds = %129
  %138 = load i64, i64* %5, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %137
  %141 = load i32, i32* @pv_entry_count, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* @pv_entry_count, align 4
  %143 = load i32, i32* @pc_chunk_tryfail, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* @pc_chunk_tryfail, align 4
  %145 = call i32 @PV_STAT(i32 %143)
  store i32* null, i32** %3, align 8
  br label %219

146:                                              ; preds = %137
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %148 = call %struct.TYPE_9__* @pmap_pv_reclaim(%struct.TYPE_10__* %147)
  store %struct.TYPE_9__* %148, %struct.TYPE_9__** %8, align 8
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %150 = icmp eq %struct.TYPE_9__* %149, null
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  br label %22

152:                                              ; preds = %146
  br label %153

153:                                              ; preds = %152, %129
  %154 = load i32, i32* @pc_chunk_count, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* @pc_chunk_count, align 4
  %156 = call i32 @PV_STAT(i32 %154)
  %157 = load i32, i32* @pc_chunk_allocs, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* @pc_chunk_allocs, align 4
  %159 = call i32 @PV_STAT(i32 %157)
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @dump_add_page(i32 %162)
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %165 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_9__* %164)
  %166 = call i64 @MIPS_PHYS_TO_DIRECT(i32 %165)
  %167 = inttoptr i64 %166 to %struct.pv_chunk*
  store %struct.pv_chunk* %167, %struct.pv_chunk** %6, align 8
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %169 = load %struct.pv_chunk*, %struct.pv_chunk** %6, align 8
  %170 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %169, i32 0, i32 2
  store %struct.TYPE_10__* %168, %struct.TYPE_10__** %170, align 8
  %171 = load i64*, i64** @pc_freemask, align 8
  %172 = getelementptr inbounds i64, i64* %171, i64 0
  %173 = load i64, i64* %172, align 8
  %174 = and i64 %173, -2
  %175 = trunc i64 %174 to i32
  %176 = load %struct.pv_chunk*, %struct.pv_chunk** %6, align 8
  %177 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 0
  store i32 %175, i32* %179, align 4
  store i32 1, i32* %10, align 4
  br label %180

180:                                              ; preds = %197, %153
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* @_NPCM, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %200

184:                                              ; preds = %180
  %185 = load i64*, i64** @pc_freemask, align 8
  %186 = load i32, i32* %10, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i64, i64* %185, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = trunc i64 %189 to i32
  %191 = load %struct.pv_chunk*, %struct.pv_chunk** %6, align 8
  %192 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %10, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  store i32 %190, i32* %196, align 4
  br label %197

197:                                              ; preds = %184
  %198 = load i32, i32* %10, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %10, align 4
  br label %180

200:                                              ; preds = %180
  %201 = load %struct.pv_chunk*, %struct.pv_chunk** %6, align 8
  %202 = load i32, i32* @pc_lru, align 4
  %203 = call i32 @TAILQ_INSERT_TAIL(i32* @pv_chunks, %struct.pv_chunk* %201, i32 %202)
  %204 = load %struct.pv_chunk*, %struct.pv_chunk** %6, align 8
  %205 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %204, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 0
  store i32* %207, i32** %7, align 8
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 0
  %210 = load %struct.pv_chunk*, %struct.pv_chunk** %6, align 8
  %211 = load i32, i32* @pc_list, align 4
  %212 = call i32 @TAILQ_INSERT_HEAD(i32* %209, %struct.pv_chunk* %210, i32 %211)
  %213 = load i32, i32* @_NPCPV, align 4
  %214 = sub nsw i32 %213, 1
  %215 = load i32, i32* @pv_entry_spare, align 4
  %216 = add nsw i32 %215, %214
  store i32 %216, i32* @pv_entry_spare, align 4
  %217 = call i32 @PV_STAT(i32 %216)
  %218 = load i32*, i32** %7, align 8
  store i32* %218, i32** %3, align 8
  br label %219

219:                                              ; preds = %200, %140, %113, %104
  %220 = load i32*, i32** %3, align 8
  ret i32* %220
}

declare dso_local i32 @rw_assert(i32*, i32) #1

declare dso_local i32 @PMAP_LOCK_ASSERT(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @PV_STAT(i32) #1

declare dso_local %struct.pv_chunk* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @ffsl(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.pv_chunk*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.pv_chunk*, i32) #1

declare dso_local %struct.TYPE_9__* @vm_page_alloc_freelist(i32, i32) #1

declare dso_local %struct.TYPE_9__* @pmap_pv_reclaim(%struct.TYPE_10__*) #1

declare dso_local i32 @dump_add_page(i32) #1

declare dso_local i64 @MIPS_PHYS_TO_DIRECT(i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_9__*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.pv_chunk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
