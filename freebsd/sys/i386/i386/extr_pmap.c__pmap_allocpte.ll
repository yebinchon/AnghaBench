; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c__pmap_allocpte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c__pmap_allocpte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@VM_ALLOC_NOOBJ = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@VM_ALLOC_ZERO = common dso_local global i32 0, align 4
@PMAP_ENTER_NOSLEEP = common dso_local global i64 0, align 8
@pvh_global_lock = common dso_local global i32 0, align 4
@PG_ZERO = common dso_local global i32 0, align 4
@PG_U = common dso_local global i32 0, align 4
@PG_RW = common dso_local global i32 0, align 4
@PG_V = common dso_local global i32 0, align 4
@PG_A = common dso_local global i32 0, align 4
@PG_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (%struct.TYPE_13__*, i64, i64)* @_pmap_allocpte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @_pmap_allocpte(%struct.TYPE_13__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i32, i32* @VM_ALLOC_NOOBJ, align 4
  %12 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @VM_ALLOC_ZERO, align 4
  %15 = or i32 %13, %14
  %16 = call %struct.TYPE_12__* @vm_page_alloc(i32* null, i64 %10, i32 %15)
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %9, align 8
  %17 = icmp eq %struct.TYPE_12__* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @PMAP_ENTER_NOSLEEP, align 8
  %21 = and i64 %19, %20
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %25 = call i32 @PMAP_UNLOCK(%struct.TYPE_13__* %24)
  %26 = call i32 @rw_wunlock(i32* @pvh_global_lock)
  %27 = call i32 @vm_wait(i32* null)
  %28 = call i32 @rw_wlock(i32* @pvh_global_lock)
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %30 = call i32 @PMAP_LOCK(%struct.TYPE_13__* %29)
  br label %31

31:                                               ; preds = %23, %18
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %68

32:                                               ; preds = %3
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PG_ZERO, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %41 = call i32 @pmap_zero_page(%struct.TYPE_12__* %40)
  br label %42

42:                                               ; preds = %39, %32
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %49 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_12__* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @PG_U, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @PG_RW, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @PG_V, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @PG_A, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @PG_M, align 4
  %60 = or i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  store i64 %61, i64* %66, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %67, %struct.TYPE_12__** %4, align 8
  br label %68

68:                                               ; preds = %42, %31
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  ret %struct.TYPE_12__* %69
}

declare dso_local %struct.TYPE_12__* @vm_page_alloc(i32*, i64, i32) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_13__*) #1

declare dso_local i32 @rw_wunlock(i32*) #1

declare dso_local i32 @vm_wait(i32*) #1

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_13__*) #1

declare dso_local i32 @pmap_zero_page(%struct.TYPE_12__*) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
