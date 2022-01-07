; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c__pmap_allocpte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c__pmap_allocpte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__, i32** }
%struct.TYPE_13__ = type { i32 }

@VM_ALLOC_NORMAL = common dso_local global i32 0, align 4
@PMAP_ENTER_NOSLEEP = common dso_local global i32 0, align 4
@pvh_global_lock = common dso_local global i32 0, align 4
@NPDEPG = common dso_local global i32 0, align 4
@NUPDE = common dso_local global i32 0, align 4
@PDRSHIFT = common dso_local global i32 0, align 4
@SEGSHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (%struct.TYPE_15__*, i32, i32)* @_pmap_allocpte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @_pmap_allocpte(%struct.TYPE_15__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @VM_ALLOC_NORMAL, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %10, align 4
  %14 = call %struct.TYPE_14__* @pmap_alloc_direct_page(i32 %12, i32 %13)
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %9, align 8
  %15 = icmp eq %struct.TYPE_14__* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @PMAP_ENTER_NOSLEEP, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = call i32 @PMAP_UNLOCK(%struct.TYPE_15__* %22)
  %24 = call i32 @rw_wunlock(i32* @pvh_global_lock)
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @pmap_grow_direct_page(i32 %25)
  %27 = call i32 @rw_wlock(i32* @pvh_global_lock)
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %29 = call i32 @PMAP_LOCK(%struct.TYPE_15__* %28)
  br label %30

30:                                               ; preds = %21, %16
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  br label %49

31:                                               ; preds = %3
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %33 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_14__* %32)
  %34 = call i64 @MIPS_PHYS_TO_DIRECT(i32 %33)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = inttoptr i64 %35 to i32*
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = load i32**, i32*** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  store i32* %36, i32** %42, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__* %48, %struct.TYPE_14__** %4, align 8
  br label %49

49:                                               ; preds = %31, %30
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  ret %struct.TYPE_14__* %50
}

declare dso_local %struct.TYPE_14__* @pmap_alloc_direct_page(i32, i32) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_15__*) #1

declare dso_local i32 @rw_wunlock(i32*) #1

declare dso_local i32 @pmap_grow_direct_page(i32) #1

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_15__*) #1

declare dso_local i64 @MIPS_PHYS_TO_DIRECT(i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
