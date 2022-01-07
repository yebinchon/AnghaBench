; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xdma/extr_xdma_mbuf.c_xdma_mbuf_chain_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xdma/extr_xdma_mbuf.c_xdma_mbuf_chain_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.mbuf* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xdma_mbuf_chain_count(%struct.mbuf* %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca i64, align 8
  store %struct.mbuf* %0, %struct.mbuf** %2, align 8
  store i64 0, i64* %4, align 8
  %5 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  store %struct.mbuf* %5, %struct.mbuf** %3, align 8
  br label %6

6:                                                ; preds = %12, %1
  %7 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %8 = icmp ne %struct.mbuf* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = load i64, i64* %4, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* %4, align 8
  br label %12

12:                                               ; preds = %9
  %13 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %14 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %13, i32 0, i32 0
  %15 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  store %struct.mbuf* %15, %struct.mbuf** %3, align 8
  br label %6

16:                                               ; preds = %6
  %17 = load i64, i64* %4, align 8
  ret i64 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
