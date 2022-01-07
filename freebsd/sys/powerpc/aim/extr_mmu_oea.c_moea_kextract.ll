; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea.c_moea_kextract.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea.c_moea_kextract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvo_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@VM_MIN_KERNEL_ADDRESS = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4
@ADDR_POFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"moea_kextract: no addr found\00", align 1
@PTE_RPGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @moea_kextract(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pvo_entry*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @VM_MIN_KERNEL_ADDRESS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %3, align 4
  br label %40

13:                                               ; preds = %2
  %14 = load i32, i32* @kernel_pmap, align 4
  %15 = call i32 @PMAP_LOCK(i32 %14)
  %16 = load i32, i32* @kernel_pmap, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @ADDR_POFF, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = call %struct.pvo_entry* @moea_pvo_find_va(i32 %16, i32 %20, i32* null)
  store %struct.pvo_entry* %21, %struct.pvo_entry** %6, align 8
  %22 = load %struct.pvo_entry*, %struct.pvo_entry** %6, align 8
  %23 = icmp ne %struct.pvo_entry* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @KASSERT(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.pvo_entry*, %struct.pvo_entry** %6, align 8
  %27 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PTE_RPGN, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @ADDR_POFF, align 4
  %35 = and i32 %33, %34
  %36 = or i32 %32, %35
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* @kernel_pmap, align 4
  %38 = call i32 @PMAP_UNLOCK(i32 %37)
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %13, %11
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local %struct.pvo_entry* @moea_pvo_find_va(i32, i32, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
