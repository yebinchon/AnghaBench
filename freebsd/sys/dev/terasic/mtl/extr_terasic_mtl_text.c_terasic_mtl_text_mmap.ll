; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/terasic/mtl/extr_terasic_mtl_text.c_terasic_mtl_text_mmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/terasic/mtl/extr_terasic_mtl_text.c_terasic_mtl_text_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.terasic_mtl_softc* }
%struct.terasic_mtl_softc = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@VM_MEMATTR_UNCACHEABLE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i64, i64*, i32, i32*)* @terasic_mtl_text_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @terasic_mtl_text_mmap(%struct.cdev* %0, i64 %1, i64* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.terasic_mtl_softc*, align 8
  %12 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %13 = load %struct.cdev*, %struct.cdev** %6, align 8
  %14 = getelementptr inbounds %struct.cdev, %struct.cdev* %13, i32 0, i32 0
  %15 = load %struct.terasic_mtl_softc*, %struct.terasic_mtl_softc** %14, align 8
  store %struct.terasic_mtl_softc* %15, %struct.terasic_mtl_softc** %11, align 8
  store i32 0, i32* %12, align 4
  %16 = load i64, i64* %7, align 8
  %17 = call i64 @trunc_page(i64 %16)
  %18 = load i64, i64* %7, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %5
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @PAGE_SIZE, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i64, i64* %7, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %20
  %27 = load %struct.terasic_mtl_softc*, %struct.terasic_mtl_softc** %11, align 8
  %28 = getelementptr inbounds %struct.terasic_mtl_softc, %struct.terasic_mtl_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @rman_get_size(i32 %29)
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @PAGE_SIZE, align 8
  %33 = add nsw i64 %31, %32
  %34 = icmp sge i64 %30, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %26
  %36 = load %struct.terasic_mtl_softc*, %struct.terasic_mtl_softc** %11, align 8
  %37 = getelementptr inbounds %struct.terasic_mtl_softc, %struct.terasic_mtl_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @rman_get_start(i32 %38)
  %40 = load i64, i64* %7, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i64*, i64** %8, align 8
  store i64 %41, i64* %42, align 8
  %43 = load i32, i32* @VM_MEMATTR_UNCACHEABLE, align 4
  %44 = load i32*, i32** %10, align 8
  store i32 %43, i32* %44, align 4
  br label %47

45:                                               ; preds = %26, %20, %5
  %46 = load i32, i32* @ENODEV, align 4
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %45, %35
  %48 = load i32, i32* %12, align 4
  ret i32 %48
}

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i64 @rman_get_size(i32) #1

declare dso_local i64 @rman_get_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
