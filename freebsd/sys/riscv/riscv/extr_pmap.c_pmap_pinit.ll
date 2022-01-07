; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_pmap.c_pmap_pinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_pmap.c_pmap_pinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32*, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@VM_ALLOC_NORMAL = common dso_local global i32 0, align 4
@VM_ALLOC_NOOBJ = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@VM_ALLOC_ZERO = common dso_local global i32 0, align 4
@SATP_MODE_SV39 = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PG_ZERO = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global %struct.TYPE_10__* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@allpmaps_lock = common dso_local global i32 0, align 4
@allpmaps = common dso_local global i32 0, align 4
@pm_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_pinit(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  br label %5

5:                                                ; preds = %15, %1
  %6 = load i32, i32* @VM_ALLOC_NORMAL, align 4
  %7 = load i32, i32* @VM_ALLOC_NOOBJ, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @VM_ALLOC_ZERO, align 4
  %12 = or i32 %10, %11
  %13 = call %struct.TYPE_8__* @vm_page_alloc(i32* null, i32 -559038737, i32 %12)
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %4, align 8
  %14 = icmp eq %struct.TYPE_8__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = call i32 @vm_wait(i32* null)
  br label %5

17:                                               ; preds = %5
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_8__* %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i64 @PHYS_TO_DMAP(i32 %20)
  %22 = inttoptr i64 %21 to i32*
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  store i32* %22, i32** %24, align 8
  %25 = load i32, i32* @SATP_MODE_SV39, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @PAGE_SHIFT, align 4
  %28 = ashr i32 %26, %27
  %29 = or i32 %25, %28
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PG_ZERO, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %17
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @pagezero(i32* %41)
  br label %43

43:                                               ; preds = %38, %17
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 4
  %46 = call i32 @bzero(i32* %45, i32 4)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  %49 = call i32 @CPU_ZERO(i32* %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kernel_pmap, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PAGE_SIZE, align 4
  %57 = call i32 @memcpy(i32* %52, i32 %55, i32 %56)
  %58 = call i32 @mtx_lock(i32* @allpmaps_lock)
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %60 = load i32, i32* @pm_list, align 4
  %61 = call i32 @LIST_INSERT_HEAD(i32* @allpmaps, %struct.TYPE_9__* %59, i32 %60)
  %62 = call i32 @mtx_unlock(i32* @allpmaps_lock)
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = call i32 @vm_radix_init(i32* %64)
  ret i32 1
}

declare dso_local %struct.TYPE_8__* @vm_page_alloc(i32*, i32, i32) #1

declare dso_local i32 @vm_wait(i32*) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_8__*) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @pagezero(i32*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @vm_radix_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
