; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea.c_moea_sync_icache.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea.c_moea_sync_icache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvo_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ADDR_POFF = common dso_local global i32 0, align 4
@PTE_RPGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i64)* @moea_sync_icache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moea_sync_icache(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.pvo_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @PMAP_LOCK(i32 %13)
  br label %15

15:                                               ; preds = %49, %4
  %16 = load i64, i64* %8, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %58

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @round_page(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %7, align 4
  %23 = sub nsw i32 %21, %22
  %24 = load i64, i64* %8, align 8
  %25 = call i64 @MIN(i32 %23, i64 %24)
  store i64 %25, i64* %12, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @ADDR_POFF, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = call %struct.pvo_entry* @moea_pvo_find_va(i32 %26, i32 %30, i32* null)
  store %struct.pvo_entry* %31, %struct.pvo_entry** %9, align 8
  %32 = load %struct.pvo_entry*, %struct.pvo_entry** %9, align 8
  %33 = icmp ne %struct.pvo_entry* %32, null
  br i1 %33, label %34, label %49

34:                                               ; preds = %18
  %35 = load %struct.pvo_entry*, %struct.pvo_entry** %9, align 8
  %36 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PTE_RPGN, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @ADDR_POFF, align 4
  %44 = and i32 %42, %43
  %45 = or i32 %41, %44
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i64, i64* %12, align 8
  %48 = call i32 @moea_syncicache(i32 %46, i64 %47)
  br label %49

49:                                               ; preds = %34, %18
  %50 = load i64, i64* %12, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %7, align 4
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* %8, align 8
  %57 = sub nsw i64 %56, %55
  store i64 %57, i64* %8, align 8
  br label %15

58:                                               ; preds = %15
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @PMAP_UNLOCK(i32 %59)
  ret void
}

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i32 @round_page(i32) #1

declare dso_local i64 @MIN(i32, i64) #1

declare dso_local %struct.pvo_entry* @moea_pvo_find_va(i32, i32, i32*) #1

declare dso_local i32 @moea_syncicache(i32, i64) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
