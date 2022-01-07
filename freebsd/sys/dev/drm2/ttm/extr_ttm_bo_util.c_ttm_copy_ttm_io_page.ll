; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo_util.c_ttm_copy_ttm_io_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo_util.c_ttm_copy_ttm_io_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_tt*, i8*, i64, i32)* @ttm_copy_ttm_io_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_copy_ttm_io_page(%struct.ttm_tt* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_tt*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.ttm_tt* %0, %struct.ttm_tt** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.ttm_tt*, %struct.ttm_tt** %6, align 8
  %13 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* %8, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %50

23:                                               ; preds = %4
  %24 = load i8*, i8** %7, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @PAGE_SHIFT, align 8
  %28 = shl i64 %26, %27
  %29 = add i64 %25, %28
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %7, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @VM_PAGE_TO_PHYS(i32 %31)
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i8* @pmap_mapdev_attr(i32 %32, i32 %33, i32 %34)
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %23
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %50

41:                                               ; preds = %23
  %42 = load i8*, i8** %7, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = call i32 @memcpy(i8* %42, i8* %43, i32 %44)
  %46 = load i8*, i8** %11, align 8
  %47 = ptrtoint i8* %46 to i32
  %48 = load i32, i32* @PAGE_SIZE, align 4
  %49 = call i32 @pmap_unmapdev(i32 %47, i32 %48)
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %41, %38, %20
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i8* @pmap_mapdev_attr(i32, i32, i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @pmap_unmapdev(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
