; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_pvo_remove_from_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_pvo_remove_from_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvo_entry = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PVO_MANAGED = common dso_local global i32 0, align 4
@LPTE_RPGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.pvo_entry*)* @moea64_pvo_remove_from_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moea64_pvo_remove_from_page(i32 %0, %struct.pvo_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pvo_entry*, align 8
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.pvo_entry* %1, %struct.pvo_entry** %4, align 8
  store i32* null, i32** %5, align 8
  %6 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %7 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @PVO_MANAGED, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %14 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @LPTE_RPGN, align 4
  %18 = and i32 %16, %17
  %19 = call i32* @PHYS_TO_VM_PAGE(i32 %18)
  store i32* %19, i32** %5, align 8
  br label %20

20:                                               ; preds = %12, %2
  %21 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %22 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @LPTE_RPGN, align 4
  %26 = and i32 %24, %25
  %27 = call i32 @PV_LOCK(i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @moea64_pvo_remove_from_page_locked(i32 %28, %struct.pvo_entry* %29, i32* %30)
  %32 = load %struct.pvo_entry*, %struct.pvo_entry** %4, align 8
  %33 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @LPTE_RPGN, align 4
  %37 = and i32 %35, %36
  %38 = call i32 @PV_UNLOCK(i32 %37)
  ret void
}

declare dso_local i32* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @PV_LOCK(i32) #1

declare dso_local i32 @moea64_pvo_remove_from_page_locked(i32, %struct.pvo_entry*, i32*) #1

declare dso_local i32 @PV_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
