; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_init_pvo_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_init_pvo_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvo_entry = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@ADDR_POFF = common dso_local global i32 0, align 4
@ADDR_PIDX = common dso_local global i32 0, align 4
@ADDR_PIDX_SHFT = common dso_local global i32 0, align 4
@PVO_LARGE = common dso_local global i32 0, align 4
@moea64_large_page_shift = common dso_local global i32 0, align 4
@VSID_HASH_MASK = common dso_local global i32 0, align 4
@moea64_pteg_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvo_entry*, i32, i32)* @init_pvo_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_pvo_entry(%struct.pvo_entry* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pvo_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pvo_entry* %0, %struct.pvo_entry** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @PMAP_LOCK_ASSERT(i32 %10, i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %15 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @ADDR_POFF, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %22 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @va_to_vsid(i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @ADDR_PIDX, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @ADDR_PIDX_SHFT, align 4
  %32 = ashr i32 %30, %31
  %33 = load i32, i32* %7, align 4
  %34 = shl i32 %33, 16
  %35 = or i32 %32, %34
  %36 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %37 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %39 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PVO_LARGE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %3
  %45 = load i32, i32* @moea64_large_page_shift, align 4
  br label %48

46:                                               ; preds = %3
  %47 = load i32, i32* @ADDR_PIDX_SHFT, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @VSID_HASH_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @ADDR_PIDX, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* %9, align 4
  %57 = ashr i32 %55, %56
  %58 = xor i32 %52, %57
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @moea64_pteg_mask, align 4
  %61 = and i32 %59, %60
  %62 = shl i32 %61, 3
  %63 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %64 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  ret void
}

declare dso_local i32 @PMAP_LOCK_ASSERT(i32, i32) #1

declare dso_local i32 @va_to_vsid(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
