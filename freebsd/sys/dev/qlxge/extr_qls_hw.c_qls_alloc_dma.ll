; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlxge/extr_qls_hw.c_qls_alloc_dma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlxge/extr_qls_hw.c_qls_alloc_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qls_alloc_dma(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = call i64 @qls_alloc_rx_dma(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %36

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = call i64 @qls_alloc_tx_dma(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @qls_free_rx_dma(i32* %13)
  store i32 -1, i32* %2, align 4
  br label %36

15:                                               ; preds = %8
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @qls_alloc_mpi_dma(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @qls_free_tx_dma(i32* %20)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @qls_free_rx_dma(i32* %22)
  store i32 -1, i32* %2, align 4
  br label %36

24:                                               ; preds = %15
  %25 = load i32*, i32** %3, align 8
  %26 = call i64 @qls_alloc_rss_dma(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @qls_free_mpi_dma(i32* %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @qls_free_tx_dma(i32* %31)
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @qls_free_rx_dma(i32* %33)
  store i32 -1, i32* %2, align 4
  br label %36

35:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %28, %19, %12, %7
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @qls_alloc_rx_dma(i32*) #1

declare dso_local i64 @qls_alloc_tx_dma(i32*) #1

declare dso_local i32 @qls_free_rx_dma(i32*) #1

declare dso_local i64 @qls_alloc_mpi_dma(i32*) #1

declare dso_local i32 @qls_free_tx_dma(i32*) #1

declare dso_local i64 @qls_alloc_rss_dma(i32*) #1

declare dso_local i32 @qls_free_mpi_dma(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
