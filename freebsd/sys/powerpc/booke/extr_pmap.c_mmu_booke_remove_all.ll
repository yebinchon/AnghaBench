; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_mmu_booke_remove_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_mmu_booke_remove_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }

@pvh_global_lock = common dso_local global i32 0, align 4
@pv_link = common dso_local global i32 0, align 4
@PGA_WRITEABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_10__*)* @mmu_booke_remove_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmu_booke_remove_all(i32 %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %8 = call i32 @rw_wlock(i32* @pvh_global_lock)
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = call %struct.TYPE_11__* @TAILQ_FIRST(i32* %11)
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %5, align 8
  br label %13

13:                                               ; preds = %41, %2
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = icmp ne %struct.TYPE_11__* %14, null
  br i1 %15, label %16, label %43

16:                                               ; preds = %13
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = load i32, i32* @pv_link, align 4
  %19 = call %struct.TYPE_11__* @TAILQ_NEXT(%struct.TYPE_11__* %17, i32 %18)
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %6, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @PMAP_LOCK(i32 %22)
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @PTBL_HOLD_FLAG(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @pte_remove(i32 %28, i32 %31, i32 %34, i32 %35)
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @PMAP_UNLOCK(i32 %39)
  br label %41

41:                                               ; preds = %16
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %5, align 8
  br label %13

43:                                               ; preds = %13
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = load i32, i32* @PGA_WRITEABLE, align 4
  %46 = call i32 @vm_page_aflag_clear(%struct.TYPE_10__* %44, i32 %45)
  %47 = call i32 @rw_wunlock(i32* @pvh_global_lock)
  ret void
}

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local %struct.TYPE_11__* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.TYPE_11__* @TAILQ_NEXT(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i32 @PTBL_HOLD_FLAG(i32) #1

declare dso_local i32 @pte_remove(i32, i32, i32, i32) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

declare dso_local i32 @vm_page_aflag_clear(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @rw_wunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
