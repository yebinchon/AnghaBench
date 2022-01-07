; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_sync_icache.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_sync_icache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.pvo_entry = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@curthread = common dso_local global %struct.TYPE_8__* null, align 8
@ADDR_POFF = common dso_local global i32 0, align 4
@LPTE_I = common dso_local global i32 0, align 4
@LPTE_RPGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @moea64_sync_icache(i32 %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.pvo_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp eq i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i64 @__predict_false(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curthread, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i32* %24, i32** %6, align 8
  br label %25

25:                                               ; preds = %18, %4
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @PMAP_LOCK(i32* %26)
  br label %28

28:                                               ; preds = %73, %25
  %29 = load i64, i64* %8, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %82

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  %34 = call i32 @round_page(i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %35, %36
  %38 = load i64, i64* %8, align 8
  %39 = call i64 @MIN(i32 %37, i64 %38)
  store i64 %39, i64* %12, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @ADDR_POFF, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = call %struct.pvo_entry* @moea64_pvo_find_va(i32* %40, i32 %44)
  store %struct.pvo_entry* %45, %struct.pvo_entry** %9, align 8
  %46 = load %struct.pvo_entry*, %struct.pvo_entry** %9, align 8
  %47 = icmp ne %struct.pvo_entry* %46, null
  br i1 %47, label %48, label %73

48:                                               ; preds = %31
  %49 = load %struct.pvo_entry*, %struct.pvo_entry** %9, align 8
  %50 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @LPTE_I, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %73, label %56

56:                                               ; preds = %48
  %57 = load %struct.pvo_entry*, %struct.pvo_entry** %9, align 8
  %58 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @LPTE_RPGN, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @ADDR_POFF, align 4
  %65 = and i32 %63, %64
  %66 = or i32 %62, %65
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i64, i64* %12, align 8
  %72 = call i32 @moea64_syncicache(i32 %67, i32* %68, i32 %69, i32 %70, i64 %71)
  br label %73

73:                                               ; preds = %56, %48, %31
  %74 = load i64, i64* %12, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %7, align 4
  %79 = load i64, i64* %12, align 8
  %80 = load i64, i64* %8, align 8
  %81 = sub nsw i64 %80, %79
  store i64 %81, i64* %8, align 8
  br label %28

82:                                               ; preds = %28
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @PMAP_UNLOCK(i32* %83)
  ret void
}

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @PMAP_LOCK(i32*) #1

declare dso_local i32 @round_page(i32) #1

declare dso_local i64 @MIN(i32, i64) #1

declare dso_local %struct.pvo_entry* @moea64_pvo_find_va(i32*, i32) #1

declare dso_local i32 @moea64_syncicache(i32, i32*, i32, i32, i64) #1

declare dso_local i32 @PMAP_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
