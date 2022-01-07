; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_pmap.c_get_pv_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_pmap.c_get_pv_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.rwlock = type { i32 }
%struct.pv_chunk = type { i32*, i32*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32 }

@pvh_global_lock = common dso_local global i32 0, align 4
@RA_LOCKED = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@pv_entry_allocs = common dso_local global i32 0, align 4
@_NPCM = common dso_local global i32 0, align 4
@pc_list = common dso_local global i32 0, align 4
@pv_entry_count = common dso_local global i32 0, align 4
@pv_entry_spare = common dso_local global i32 0, align 4
@VM_ALLOC_NORMAL = common dso_local global i32 0, align 4
@VM_ALLOC_NOOBJ = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@pc_chunk_tryfail = common dso_local global i32 0, align 4
@pc_chunk_count = common dso_local global i32 0, align 4
@pc_chunk_allocs = common dso_local global i32 0, align 4
@PC_FREE0 = common dso_local global i64 0, align 8
@PC_FREE1 = common dso_local global i64 0, align 8
@PC_FREE2 = common dso_local global i64 0, align 8
@pv_chunks_mutex = common dso_local global i32 0, align 4
@pv_chunks = common dso_local global i32 0, align 4
@pc_lru = common dso_local global i32 0, align 4
@_NPCPV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*, %struct.rwlock**)* @get_pv_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_pv_entry(%struct.TYPE_9__* %0, %struct.rwlock** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.rwlock**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.pv_chunk*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.rwlock** %1, %struct.rwlock*** %5, align 8
  %11 = load i32, i32* @RA_LOCKED, align 4
  %12 = call i32 @rw_assert(i32* @pvh_global_lock, i32 %11)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = load i32, i32* @MA_OWNED, align 4
  %15 = call i32 @PMAP_LOCK_ASSERT(%struct.TYPE_9__* %13, i32 %14)
  %16 = call i32 @atomic_add_long(i32* @pv_entry_allocs, i32 1)
  %17 = call i32 @PV_STAT(i32 %16)
  br label %18

18:                                               ; preds = %140, %2
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = call %struct.pv_chunk* @TAILQ_FIRST(i32* %20)
  store %struct.pv_chunk* %21, %struct.pv_chunk** %9, align 8
  %22 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %23 = icmp ne %struct.pv_chunk* %22, null
  br i1 %23, label %24, label %118

24:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %49, %24
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @_NPCM, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %25
  %30 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %31 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %29
  %39 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %40 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ffsl(i32 %45)
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %52

48:                                               ; preds = %29
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %25

52:                                               ; preds = %38, %25
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @_NPCM, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %117

56:                                               ; preds = %52
  %57 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %58 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = mul nsw i32 %60, 64
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %59, i64 %64
  store i32* %65, i32** %8, align 8
  %66 = load i32, i32* %6, align 4
  %67 = zext i32 %66 to i64
  %68 = shl i64 1, %67
  %69 = xor i64 %68, -1
  %70 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %71 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = and i64 %77, %69
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 4
  %80 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %81 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %111

86:                                               ; preds = %56
  %87 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %88 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %111

93:                                               ; preds = %86
  %94 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %95 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %93
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %104 = load i32, i32* @pc_list, align 4
  %105 = call i32 @TAILQ_REMOVE(i32* %102, %struct.pv_chunk* %103, i32 %104)
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %109 = load i32, i32* @pc_list, align 4
  %110 = call i32 @TAILQ_INSERT_TAIL(i32* %107, %struct.pv_chunk* %108, i32 %109)
  br label %111

111:                                              ; preds = %100, %93, %86, %56
  %112 = call i32 @atomic_add_long(i32* @pv_entry_count, i32 1)
  %113 = call i32 @PV_STAT(i32 %112)
  %114 = call i32 @atomic_subtract_int(i32* @pv_entry_spare, i32 1)
  %115 = call i32 @PV_STAT(i32 %114)
  %116 = load i32*, i32** %8, align 8
  store i32* %116, i32** %3, align 8
  br label %200

117:                                              ; preds = %52
  br label %118

118:                                              ; preds = %117, %18
  %119 = load i32, i32* @VM_ALLOC_NORMAL, align 4
  %120 = load i32, i32* @VM_ALLOC_NOOBJ, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %123 = or i32 %121, %122
  %124 = call %struct.TYPE_8__* @vm_page_alloc(i32* null, i32 0, i32 %123)
  store %struct.TYPE_8__* %124, %struct.TYPE_8__** %10, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %126 = icmp eq %struct.TYPE_8__* %125, null
  br i1 %126, label %127, label %142

127:                                              ; preds = %118
  %128 = load %struct.rwlock**, %struct.rwlock*** %5, align 8
  %129 = icmp eq %struct.rwlock** %128, null
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = load i32, i32* @pc_chunk_tryfail, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* @pc_chunk_tryfail, align 4
  %133 = call i32 @PV_STAT(i32 %131)
  store i32* null, i32** %3, align 8
  br label %200

134:                                              ; preds = %127
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %136 = load %struct.rwlock**, %struct.rwlock*** %5, align 8
  %137 = call %struct.TYPE_8__* @reclaim_pv_chunk(%struct.TYPE_9__* %135, %struct.rwlock** %136)
  store %struct.TYPE_8__* %137, %struct.TYPE_8__** %10, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %139 = icmp eq %struct.TYPE_8__* %138, null
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  br label %18

141:                                              ; preds = %134
  br label %142

142:                                              ; preds = %141, %118
  %143 = call i32 @atomic_add_int(i32* @pc_chunk_count, i32 1)
  %144 = call i32 @PV_STAT(i32 %143)
  %145 = call i32 @atomic_add_int(i32* @pc_chunk_allocs, i32 1)
  %146 = call i32 @PV_STAT(i32 %145)
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @dump_add_page(i32 %149)
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i64 @PHYS_TO_DMAP(i32 %153)
  %155 = inttoptr i64 %154 to i8*
  %156 = bitcast i8* %155 to %struct.pv_chunk*
  store %struct.pv_chunk* %156, %struct.pv_chunk** %9, align 8
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %158 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %159 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %158, i32 0, i32 2
  store %struct.TYPE_9__* %157, %struct.TYPE_9__** %159, align 8
  %160 = load i64, i64* @PC_FREE0, align 8
  %161 = and i64 %160, -2
  %162 = trunc i64 %161 to i32
  %163 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %164 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  store i32 %162, i32* %166, align 4
  %167 = load i64, i64* @PC_FREE1, align 8
  %168 = trunc i64 %167 to i32
  %169 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %170 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 1
  store i32 %168, i32* %172, align 4
  %173 = load i64, i64* @PC_FREE2, align 8
  %174 = trunc i64 %173 to i32
  %175 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %176 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 2
  store i32 %174, i32* %178, align 4
  %179 = call i32 @mtx_lock(i32* @pv_chunks_mutex)
  %180 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %181 = load i32, i32* @pc_lru, align 4
  %182 = call i32 @TAILQ_INSERT_TAIL(i32* @pv_chunks, %struct.pv_chunk* %180, i32 %181)
  %183 = call i32 @mtx_unlock(i32* @pv_chunks_mutex)
  %184 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %185 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  store i32* %187, i32** %8, align 8
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %191 = load i32, i32* @pc_list, align 4
  %192 = call i32 @TAILQ_INSERT_HEAD(i32* %189, %struct.pv_chunk* %190, i32 %191)
  %193 = call i32 @atomic_add_long(i32* @pv_entry_count, i32 1)
  %194 = call i32 @PV_STAT(i32 %193)
  %195 = load i32, i32* @_NPCPV, align 4
  %196 = sub nsw i32 %195, 1
  %197 = call i32 @atomic_add_int(i32* @pv_entry_spare, i32 %196)
  %198 = call i32 @PV_STAT(i32 %197)
  %199 = load i32*, i32** %8, align 8
  store i32* %199, i32** %3, align 8
  br label %200

200:                                              ; preds = %142, %130, %111
  %201 = load i32*, i32** %3, align 8
  ret i32* %201
}

declare dso_local i32 @rw_assert(i32*, i32) #1

declare dso_local i32 @PMAP_LOCK_ASSERT(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @PV_STAT(i32) #1

declare dso_local i32 @atomic_add_long(i32*, i32) #1

declare dso_local %struct.pv_chunk* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @ffsl(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.pv_chunk*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.pv_chunk*, i32) #1

declare dso_local i32 @atomic_subtract_int(i32*, i32) #1

declare dso_local %struct.TYPE_8__* @vm_page_alloc(i32*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @reclaim_pv_chunk(%struct.TYPE_9__*, %struct.rwlock**) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @dump_add_page(i32) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.pv_chunk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
