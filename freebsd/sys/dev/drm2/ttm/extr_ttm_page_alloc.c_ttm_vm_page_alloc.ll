; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_page_alloc.c_ttm_vm_page_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_page_alloc.c_ttm_vm_page_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@VM_ALLOC_NORMAL = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@VM_ALLOC_NOOBJ = common dso_local global i32 0, align 4
@TTM_PAGE_FLAG_ZERO_ALLOC = common dso_local global i32 0, align 4
@VM_ALLOC_ZERO = common dso_local global i32 0, align 4
@TTM_PAGE_FLAG_DMA32 = common dso_local global i32 0, align 4
@VPO_UNMANAGED = common dso_local global i32 0, align 4
@PG_FICTITIOUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i32, i32)* @ttm_vm_page_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @ttm_vm_page_alloc(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @ttm_caching_state_to_vm(i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @VM_ALLOC_NORMAL, align 4
  %11 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @VM_ALLOC_NOOBJ, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @TTM_PAGE_FLAG_ZERO_ALLOC, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @VM_ALLOC_ZERO, align 4
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %19, %2
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @TTM_PAGE_FLAG_DMA32, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call %struct.TYPE_5__* @ttm_vm_page_alloc_dma32(i32 %29, i32 %30)
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %5, align 8
  br label %36

32:                                               ; preds = %23
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call %struct.TYPE_5__* @ttm_vm_page_alloc_any(i32 %33, i32 %34)
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %5, align 8
  br label %36

36:                                               ; preds = %32, %28
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = icmp ne %struct.TYPE_5__* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = load i32, i32* @VPO_UNMANAGED, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* @PG_FICTITIOUS, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %39, %36
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  ret %struct.TYPE_5__* %52
}

declare dso_local i32 @ttm_caching_state_to_vm(i32) #1

declare dso_local %struct.TYPE_5__* @ttm_vm_page_alloc_dma32(i32, i32) #1

declare dso_local %struct.TYPE_5__* @ttm_vm_page_alloc_any(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
