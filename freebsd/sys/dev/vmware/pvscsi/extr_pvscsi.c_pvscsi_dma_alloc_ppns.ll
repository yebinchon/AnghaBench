; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_dma_alloc_ppns.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_dma_alloc_ppns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_softc = type { i32 }
%struct.pvscsi_dma = type { i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Error allocating pages, error %d\0A\00", align 1
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvscsi_softc*, %struct.pvscsi_dma*, i64*, i64)* @pvscsi_dma_alloc_ppns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvscsi_dma_alloc_ppns(%struct.pvscsi_softc* %0, %struct.pvscsi_dma* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pvscsi_softc*, align 8
  %7 = alloca %struct.pvscsi_dma*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.pvscsi_softc* %0, %struct.pvscsi_softc** %6, align 8
  store %struct.pvscsi_dma* %1, %struct.pvscsi_dma** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %6, align 8
  %14 = load %struct.pvscsi_dma*, %struct.pvscsi_dma** %7, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* @PAGE_SIZE, align 8
  %17 = mul i64 %15, %16
  %18 = load i64, i64* @PAGE_SIZE, align 8
  %19 = call i32 @pvscsi_dma_alloc(%struct.pvscsi_softc* %13, %struct.pvscsi_dma* %14, i64 %17, i64 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %6, align 8
  %24 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %5, align 4
  br label %50

29:                                               ; preds = %4
  %30 = load %struct.pvscsi_dma*, %struct.pvscsi_dma** %7, align 8
  %31 = getelementptr inbounds %struct.pvscsi_dma, %struct.pvscsi_dma* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PAGE_SHIFT, align 8
  %34 = lshr i64 %32, %33
  store i64 %34, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %35

35:                                               ; preds = %46, %29
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* %11, align 8
  %42 = add i64 %40, %41
  %43 = load i64*, i64** %8, align 8
  %44 = load i64, i64* %11, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  store i64 %42, i64* %45, align 8
  br label %46

46:                                               ; preds = %39
  %47 = load i64, i64* %11, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %11, align 8
  br label %35

49:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %22
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @pvscsi_dma_alloc(%struct.pvscsi_softc*, %struct.pvscsi_dma*, i64, i64) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
