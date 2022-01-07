; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_extract.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvo_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@LPTE_RPGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @moea64_extract(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pvo_entry*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @PMAP_LOCK(i32 %9)
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.pvo_entry* @moea64_pvo_find_va(i32 %11, i32 %12)
  store %struct.pvo_entry* %13, %struct.pvo_entry** %7, align 8
  %14 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %15 = icmp eq %struct.pvo_entry* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %29

17:                                               ; preds = %3
  %18 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %19 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @LPTE_RPGN, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %26 = call i32 @PVO_VADDR(%struct.pvo_entry* %25)
  %27 = sub nsw i32 %24, %26
  %28 = or i32 %23, %27
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %17, %16
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @PMAP_UNLOCK(i32 %30)
  %32 = load i32, i32* %8, align 4
  ret i32 %32
}

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local %struct.pvo_entry* @moea64_pvo_find_va(i32, i32) #1

declare dso_local i32 @PVO_VADDR(%struct.pvo_entry*) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
