; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus_dma.c_bus_dmamap_load_ma_triv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus_dma.c_bus_dmamap_load_ma_triv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_page = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_dmamap_load_ma_triv(i32 %0, i32 %1, %struct.vm_page** %2, i64 %3, i32 %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vm_page**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store %struct.vm_page** %2, %struct.vm_page*** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %52, %8
  %22 = load i64, i64* %12, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %58

24:                                               ; preds = %21
  %25 = load i64, i64* @PAGE_SIZE, align 8
  %26 = load i32, i32* %13, align 4
  %27 = sext i32 %26 to i64
  %28 = sub nsw i64 %25, %27
  %29 = load i64, i64* %12, align 8
  %30 = call i64 @min(i64 %28, i64 %29)
  store i64 %30, i64* %18, align 8
  %31 = load %struct.vm_page**, %struct.vm_page*** %11, align 8
  %32 = load i32, i32* %20, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.vm_page*, %struct.vm_page** %31, i64 %33
  %35 = load %struct.vm_page*, %struct.vm_page** %34, align 8
  %36 = call i64 @VM_PAGE_TO_PHYS(%struct.vm_page* %35)
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  store i64 %39, i64* %17, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i64, i64* %17, align 8
  %43 = load i64, i64* %18, align 8
  %44 = load i32, i32* %14, align 4
  %45 = load i32*, i32** %15, align 8
  %46 = load i32*, i32** %16, align 8
  %47 = call i32 @_bus_dmamap_load_phys(i32 %40, i32 %41, i64 %42, i64 %43, i32 %44, i32* %45, i32* %46)
  store i32 %47, i32* %19, align 4
  %48 = load i32, i32* %19, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %24
  br label %58

51:                                               ; preds = %24
  store i32 0, i32* %13, align 4
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %20, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %20, align 4
  %55 = load i64, i64* %18, align 8
  %56 = load i64, i64* %12, align 8
  %57 = sub nsw i64 %56, %55
  store i64 %57, i64* %12, align 8
  br label %21

58:                                               ; preds = %50, %21
  %59 = load i32, i32* %19, align 4
  ret i32 %59
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @VM_PAGE_TO_PHYS(%struct.vm_page*) #1

declare dso_local i32 @_bus_dmamap_load_phys(i32, i32, i64, i64, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
