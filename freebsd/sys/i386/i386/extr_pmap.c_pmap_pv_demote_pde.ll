; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_pmap_pv_demote_pde.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_pmap_pv_demote_pde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_page = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@pvh_global_lock = common dso_local global i32 0, align 4
@RA_WLOCKED = common dso_local global i32 0, align 4
@PDRMASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"pmap_pv_demote_pde: pa is not 4mpage aligned\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"pmap_pv_demote_pde: pv not found\00", align 1
@pv_next = common dso_local global i32 0, align 4
@NBPDR = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@VPO_UNMANAGED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"pmap_pv_demote_pde: page %p is not managed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i32)* @pmap_pv_demote_pde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_pv_demote_pde(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.md_page*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @RA_WLOCKED, align 4
  %12 = call i32 @rw_assert(i32* @pvh_global_lock, i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @PDRMASK, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %6, align 4
  %20 = call %struct.md_page* @pa_to_pvh(i32 %19)
  store %struct.md_page* %20, %struct.md_page** %7, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @trunc_4mpage(i64 %21)
  store i64 %22, i64* %5, align 8
  %23 = load %struct.md_page*, %struct.md_page** %7, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i64, i64* %5, align 8
  %26 = call i32* @pmap_pvh_remove(%struct.md_page* %23, i32 %24, i64 %25)
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = icmp ne i32* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @KASSERT(i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* %6, align 4
  %32 = call %struct.TYPE_6__* @PHYS_TO_VM_PAGE(i32 %31)
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %10, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* @pv_next, align 4
  %38 = call i32 @TAILQ_INSERT_TAIL(i32* %35, i32* %36, i32 %37)
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @NBPDR, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i64, i64* @PAGE_SIZE, align 8
  %43 = sub nsw i64 %41, %42
  store i64 %43, i64* %9, align 8
  br label %44

44:                                               ; preds = %64, %3
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 1
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %10, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @VPO_UNMANAGED, align 4
  %51 = and i32 %49, %50
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %55 = bitcast %struct.TYPE_6__* %54 to i8*
  %56 = call i32 @KASSERT(i32 %53, i8* %55)
  %57 = load i64, i64* @PAGE_SIZE, align 8
  %58 = load i64, i64* %5, align 8
  %59 = add nsw i64 %58, %57
  store i64 %59, i64* %5, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load i64, i64* %5, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %63 = call i32 @pmap_insert_entry(i32 %60, i64 %61, %struct.TYPE_6__* %62)
  br label %64

64:                                               ; preds = %44
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* %9, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %44, label %68

68:                                               ; preds = %64
  ret void
}

declare dso_local i32 @rw_assert(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.md_page* @pa_to_pvh(i32) #1

declare dso_local i64 @trunc_4mpage(i64) #1

declare dso_local i32* @pmap_pvh_remove(%struct.md_page*, i32, i64) #1

declare dso_local %struct.TYPE_6__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, i32*, i32) #1

declare dso_local i32 @pmap_insert_entry(i32, i64, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
