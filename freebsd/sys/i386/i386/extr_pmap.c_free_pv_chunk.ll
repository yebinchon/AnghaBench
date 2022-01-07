; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_free_pv_chunk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_free_pv_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pv_chunk = type { i32 }

@pv_chunks = common dso_local global i32 0, align 4
@pc_lru = common dso_local global i32 0, align 4
@_NPCPV = common dso_local global i64 0, align 8
@pv_entry_spare = common dso_local global i32 0, align 4
@pc_chunk_count = common dso_local global i32 0, align 4
@pc_chunk_frees = common dso_local global i32 0, align 4
@pv_vafree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pv_chunk*)* @free_pv_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_pv_chunk(%struct.pv_chunk* %0) #0 {
  %2 = alloca %struct.pv_chunk*, align 8
  %3 = alloca i32, align 4
  store %struct.pv_chunk* %0, %struct.pv_chunk** %2, align 8
  %4 = load %struct.pv_chunk*, %struct.pv_chunk** %2, align 8
  %5 = load i32, i32* @pc_lru, align 4
  %6 = call i32 @TAILQ_REMOVE(i32* @pv_chunks, %struct.pv_chunk* %4, i32 %5)
  %7 = load i64, i64* @_NPCPV, align 8
  %8 = load i32, i32* @pv_entry_spare, align 4
  %9 = sext i32 %8 to i64
  %10 = sub nsw i64 %9, %7
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* @pv_entry_spare, align 4
  %12 = sext i32 %11 to i64
  %13 = call i32 @PV_STAT(i64 %12)
  %14 = load i32, i32* @pc_chunk_count, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* @pc_chunk_count, align 4
  %16 = sext i32 %14 to i64
  %17 = call i32 @PV_STAT(i64 %16)
  %18 = load i32, i32* @pc_chunk_frees, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @pc_chunk_frees, align 4
  %20 = sext i32 %18 to i64
  %21 = call i32 @PV_STAT(i64 %20)
  %22 = load %struct.pv_chunk*, %struct.pv_chunk** %2, align 8
  %23 = ptrtoint %struct.pv_chunk* %22 to i32
  %24 = call i32 @pmap_kextract(i32 %23)
  %25 = call i32 @PHYS_TO_VM_PAGE(i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load %struct.pv_chunk*, %struct.pv_chunk** %2, align 8
  %27 = ptrtoint %struct.pv_chunk* %26 to i32
  %28 = call i32 @pmap_qremove(i32 %27, i32 1)
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @vm_page_unwire_noq(i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @vm_page_free(i32 %31)
  %33 = load %struct.pv_chunk*, %struct.pv_chunk** %2, align 8
  %34 = ptrtoint %struct.pv_chunk* %33 to i32
  %35 = call i32 @pmap_ptelist_free(i32* @pv_vafree, i32 %34)
  ret void
}

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.pv_chunk*, i32) #1

declare dso_local i32 @PV_STAT(i64) #1

declare dso_local i32 @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @pmap_kextract(i32) #1

declare dso_local i32 @pmap_qremove(i32, i32) #1

declare dso_local i32 @vm_page_unwire_noq(i32) #1

declare dso_local i32 @vm_page_free(i32) #1

declare dso_local i32 @pmap_ptelist_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
