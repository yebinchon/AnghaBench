; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_bus_machdep.c_bs_remap_earlyboot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_bus_machdep.c_bs_remap_earlyboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i32 }

@earlyboot_map_idx = common dso_local global i32 0, align 4
@earlyboot_mappings = common dso_local global %struct.TYPE_2__* null, align 8
@hw_direct_map = common dso_local global i64 0, align 8
@VM_MEMATTR_DEFAULT = common dso_local global i32 0, align 4
@VM_MEMATTR_CACHEABLE = common dso_local global i32 0, align 4
@VM_MEMATTR_PREFETCHABLE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bs_remap_earlyboot() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %86, %0
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @earlyboot_map_idx, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %89

10:                                               ; preds = %6
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @earlyboot_mappings, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %2, align 8
  %17 = load i64, i64* @hw_direct_map, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %10
  %20 = load i64, i64* %2, align 8
  %21 = call i64 @PHYS_TO_DMAP(i64 %20)
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @earlyboot_mappings, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %21, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %19
  %30 = load i64, i64* %2, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @earlyboot_mappings, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @pmap_dev_direct_mapped(i64 %30, i64 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %86

40:                                               ; preds = %29, %19, %10
  %41 = load i32, i32* @VM_MEMATTR_DEFAULT, align 4
  store i32 %41, i32* %5, align 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @earlyboot_mappings, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %52 [
    i32 129, label %48
    i32 128, label %50
  ]

48:                                               ; preds = %40
  %49 = load i32, i32* @VM_MEMATTR_CACHEABLE, align 4
  store i32 %49, i32* %5, align 4
  br label %52

50:                                               ; preds = %40
  %51 = load i32, i32* @VM_MEMATTR_PREFETCHABLE, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %40, %50, %48
  %53 = load i64, i64* %2, align 8
  %54 = call i8* @trunc_page(i64 %53)
  %55 = ptrtoint i8* %54 to i64
  store i64 %55, i64* %1, align 8
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @earlyboot_mappings, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i8* @trunc_page(i64 %61)
  store i8* %62, i8** %3, align 8
  br label %63

63:                                               ; preds = %74, %52
  %64 = load i64, i64* %1, align 8
  %65 = load i64, i64* %2, align 8
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @earlyboot_mappings, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %65, %71
  %73 = icmp slt i64 %64, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %63
  %75 = load i8*, i8** %3, align 8
  %76 = load i64, i64* %1, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @pmap_kenter_attr(i8* %75, i64 %76, i32 %77)
  %79 = load i64, i64* @PAGE_SIZE, align 8
  %80 = load i8*, i8** %3, align 8
  %81 = getelementptr i8, i8* %80, i64 %79
  store i8* %81, i8** %3, align 8
  %82 = load i64, i64* @PAGE_SIZE, align 8
  %83 = load i64, i64* %1, align 8
  %84 = add nsw i64 %83, %82
  store i64 %84, i64* %1, align 8
  br label %63

85:                                               ; preds = %63
  br label %86

86:                                               ; preds = %85, %39
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %6

89:                                               ; preds = %6
  ret void
}

declare dso_local i64 @PHYS_TO_DMAP(i64) #1

declare dso_local i64 @pmap_dev_direct_mapped(i64, i64) #1

declare dso_local i8* @trunc_page(i64) #1

declare dso_local i32 @pmap_kenter_attr(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
