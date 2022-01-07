; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_dma_rxdirectfifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_dma_rxdirectfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { i64 }

@BHND_DMA_ADDR_64BIT = common dso_local global i64 0, align 8
@BWN_DMA64_RXCTL = common dso_local global i64 0, align 8
@BWN_DMA64_RXDIRECTFIFO = common dso_local global i32 0, align 4
@BWN_DMA32_RXCTL = common dso_local global i64 0, align 8
@BWN_DMA32_RXDIRECTFIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*, i32, i64)* @bwn_dma_rxdirectfifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_dma_rxdirectfifo(%struct.bwn_mac* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.bwn_mac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %10 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @bwn_dma_base(i64 %11, i32 %12)
  store i64 %13, i64* %8, align 8
  %14 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %15 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BHND_DMA_ADDR_64BIT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %3
  %20 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @BWN_DMA64_RXCTL, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @BWN_READ_4(%struct.bwn_mac* %20, i64 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @BWN_DMA64_RXDIRECTFIFO, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i64, i64* %6, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %19
  %32 = load i32, i32* @BWN_DMA64_RXDIRECTFIFO, align 4
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %31, %19
  %36 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @BWN_DMA64_RXCTL, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @BWN_WRITE_4(%struct.bwn_mac* %36, i64 %39, i32 %40)
  br label %65

42:                                               ; preds = %3
  %43 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @BWN_DMA32_RXCTL, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @BWN_READ_4(%struct.bwn_mac* %43, i64 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* @BWN_DMA32_RXDIRECTFIFO, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %7, align 4
  %52 = load i64, i64* %6, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %42
  %55 = load i32, i32* @BWN_DMA32_RXDIRECTFIFO, align 4
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %54, %42
  %59 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @BWN_DMA32_RXCTL, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @BWN_WRITE_4(%struct.bwn_mac* %59, i64 %62, i32 %63)
  br label %65

65:                                               ; preds = %58, %35
  ret void
}

declare dso_local i64 @bwn_dma_base(i64, i32) #1

declare dso_local i32 @BWN_READ_4(%struct.bwn_mac*, i64) #1

declare dso_local i32 @BWN_WRITE_4(%struct.bwn_mac*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
