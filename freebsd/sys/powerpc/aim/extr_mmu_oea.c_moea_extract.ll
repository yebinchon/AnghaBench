; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea.c_moea_extract.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea.c_moea_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvo_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ADDR_POFF = common dso_local global i32 0, align 4
@PTE_RPGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @moea_extract(i32 %0, i32 %1, i32 %2) #0 {
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
  %13 = load i32, i32* @ADDR_POFF, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = call %struct.pvo_entry* @moea_pvo_find_va(i32 %11, i32 %15, i32* null)
  store %struct.pvo_entry* %16, %struct.pvo_entry** %7, align 8
  %17 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %18 = icmp eq %struct.pvo_entry* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %32

20:                                               ; preds = %3
  %21 = load %struct.pvo_entry*, %struct.pvo_entry** %7, align 8
  %22 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PTE_RPGN, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @ADDR_POFF, align 4
  %30 = and i32 %28, %29
  %31 = or i32 %27, %30
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %20, %19
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @PMAP_UNLOCK(i32 %33)
  %35 = load i32, i32* %8, align 4
  ret i32 %35
}

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local %struct.pvo_entry* @moea_pvo_find_va(i32, i32, i32*) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
