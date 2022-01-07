; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_pvo_remove_from_page_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_pvo_remove_from_page_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvo_entry = type { i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }

@PVO_DEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Trying to delink live page\00", align 1
@LPTE_RPGN = common dso_local global i32 0, align 4
@PVO_MANAGED = common dso_local global i32 0, align 4
@pvo_vlink = common dso_local global i32 0, align 4
@PGA_WRITEABLE = common dso_local global i32 0, align 4
@PGA_EXECUTABLE = common dso_local global i32 0, align 4
@moea64_pvo_entries = common dso_local global i32 0, align 4
@moea64_pvo_remove_calls = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.pvo_entry*, i32*)* @moea64_pvo_remove_from_page_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moea64_pvo_remove_from_page_locked(i32 %0, %struct.pvo_entry* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pvo_entry*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.pvo_entry* %1, %struct.pvo_entry** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %8 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @PVO_DEAD, align 4
  %11 = and i32 %9, %10
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %14 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %60

18:                                               ; preds = %3
  %19 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %20 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %19, i32 0, i32 2
  store i32* null, i32** %20, align 8
  %21 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %22 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @LPTE_RPGN, align 4
  %26 = and i32 %24, %25
  %27 = call i32 @PV_LOCKASSERT(i32 %26)
  %28 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %29 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @PVO_MANAGED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %18
  %35 = load i32*, i32** %6, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %52

37:                                               ; preds = %34
  %38 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %39 = load i32, i32* @pvo_vlink, align 4
  %40 = call i32 @LIST_REMOVE(%struct.pvo_entry* %38, i32 %39)
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @vm_page_to_pvoh(i32* %41)
  %43 = call i64 @LIST_EMPTY(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @PGA_WRITEABLE, align 4
  %48 = load i32, i32* @PGA_EXECUTABLE, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @vm_page_aflag_clear(i32* %46, i32 %49)
  br label %51

51:                                               ; preds = %45, %37
  br label %52

52:                                               ; preds = %51, %34
  br label %53

53:                                               ; preds = %52, %18
  %54 = load i32, i32* @moea64_pvo_entries, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* @moea64_pvo_entries, align 4
  %56 = call i32 @STAT_MOEA64(i32 %54)
  %57 = load i32, i32* @moea64_pvo_remove_calls, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* @moea64_pvo_remove_calls, align 4
  %59 = call i32 @STAT_MOEA64(i32 %57)
  br label %60

60:                                               ; preds = %53, %17
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @PV_LOCKASSERT(i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.pvo_entry*, i32) #1

declare dso_local i64 @LIST_EMPTY(i32) #1

declare dso_local i32 @vm_page_to_pvoh(i32*) #1

declare dso_local i32 @vm_page_aflag_clear(i32*, i32) #1

declare dso_local i32 @STAT_MOEA64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
