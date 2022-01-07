; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_pmap_remove_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_pmap_remove_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.spglist = type { i32 }

@pvh_global_lock = common dso_local global i32 0, align 4
@RA_WLOCKED = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"curthread not pinned\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.spglist*)* @pmap_remove_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_remove_page(i32 %0, i32 %1, %struct.spglist* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.spglist*, align 8
  %7 = alloca i64*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.spglist* %2, %struct.spglist** %6, align 8
  %8 = load i32, i32* @RA_WLOCKED, align 4
  %9 = call i32 @rw_assert(i32* @pvh_global_lock, i32 %8)
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @MA_OWNED, align 4
  %18 = call i32 @PMAP_LOCK_ASSERT(i32 %16, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i64* @pmap_pte_quick(i32 %19, i32 %20)
  store i64* %21, i64** %7, align 8
  %22 = icmp eq i64* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = load i64*, i64** %7, align 8
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %3
  br label %37

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = load i64*, i64** %7, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.spglist*, %struct.spglist** %6, align 8
  %33 = call i32 @pmap_remove_pte(i32 %29, i64* %30, i32 %31, %struct.spglist* %32)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @pmap_invalidate_page_int(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %28, %27
  ret void
}

declare dso_local i32 @rw_assert(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @PMAP_LOCK_ASSERT(i32, i32) #1

declare dso_local i64* @pmap_pte_quick(i32, i32) #1

declare dso_local i32 @pmap_remove_pte(i32, i64*, i32, %struct.spglist*) #1

declare dso_local i32 @pmap_invalidate_page_int(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
