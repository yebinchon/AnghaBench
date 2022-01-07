; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_service_rxsgl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_service_rxsgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_fastpath = type { i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.mbuf* }
%struct.mbuf = type { i64 }
%struct.eth_fast_path_rx_cqe = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@SGE_PAGE_SHIFT = common dso_local global i64 0, align 8
@SGE_PAGE_SIZE = common dso_local global i64 0, align 8
@PAGES_PER_SGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bxe_fastpath*, i64, i64, %struct.mbuf*, %struct.eth_fast_path_rx_cqe*)* @bxe_service_rxsgl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bxe_service_rxsgl(%struct.bxe_fastpath* %0, i64 %1, i64 %2, %struct.mbuf* %3, %struct.eth_fast_path_rx_cqe* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.bxe_fastpath*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.eth_fast_path_rx_cqe*, align 8
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.bxe_fastpath* %0, %struct.bxe_fastpath** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.mbuf* %3, %struct.mbuf** %10, align 8
  store %struct.eth_fast_path_rx_cqe* %4, %struct.eth_fast_path_rx_cqe** %11, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %18, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %22 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = sub i64 %23, %24
  store i64 %25, i64* %19, align 8
  %26 = load i64, i64* %19, align 8
  %27 = call i64 @SGE_PAGE_ALIGN(i64 %26)
  %28 = load i64, i64* @SGE_PAGE_SHIFT, align 8
  %29 = lshr i64 %27, %28
  store i64 %29, i64* %13, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %16, align 8
  br label %30

30:                                               ; preds = %76, %5
  %31 = load i64, i64* %17, align 8
  %32 = load i64, i64* %13, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %82

34:                                               ; preds = %30
  %35 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %11, align 8
  %36 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %16, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le16toh(i32 %41)
  %43 = call i64 @RX_SGE(i32 %42)
  store i64 %43, i64* %15, align 8
  %44 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %7, align 8
  %45 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i64, i64* %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.mbuf*, %struct.mbuf** %49, align 8
  store %struct.mbuf* %50, %struct.mbuf** %12, align 8
  %51 = load i64, i64* %19, align 8
  %52 = load i64, i64* @SGE_PAGE_SIZE, align 8
  %53 = call i64 @min(i64 %51, i64 %52)
  store i64 %53, i64* %14, align 8
  %54 = load i64, i64* %14, align 8
  %55 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %56 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %7, align 8
  %58 = load i64, i64* %15, align 8
  %59 = call i64 @bxe_alloc_rx_sge_mbuf(%struct.bxe_fastpath* %57, i64 %58)
  store i64 %59, i64* %18, align 8
  %60 = load i64, i64* %18, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %34
  %63 = load i64, i64* %18, align 8
  store i64 %63, i64* %6, align 8
  br label %92

64:                                               ; preds = %34
  %65 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %7, align 8
  %66 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %67, align 4
  %70 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %71 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %72 = call i32 @m_cat(%struct.mbuf* %70, %struct.mbuf* %71)
  %73 = load i64, i64* %14, align 8
  %74 = load i64, i64* %19, align 8
  %75 = sub i64 %74, %73
  store i64 %75, i64* %19, align 8
  br label %76

76:                                               ; preds = %64
  %77 = load i64, i64* @PAGES_PER_SGE, align 8
  %78 = load i64, i64* %17, align 8
  %79 = add i64 %78, %77
  store i64 %79, i64* %17, align 8
  %80 = load i64, i64* %16, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %16, align 8
  br label %30

82:                                               ; preds = %30
  %83 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %7, align 8
  %84 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %7, align 8
  %87 = load i64, i64* %13, align 8
  %88 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %11, align 8
  %89 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %88, i32 0, i32 0
  %90 = call i32 @bxe_update_sge_prod(i32 %85, %struct.bxe_fastpath* %86, i64 %87, %struct.TYPE_6__* %89)
  %91 = load i64, i64* %18, align 8
  store i64 %91, i64* %6, align 8
  br label %92

92:                                               ; preds = %82, %62
  %93 = load i64, i64* %6, align 8
  ret i64 %93
}

declare dso_local i64 @SGE_PAGE_ALIGN(i64) #1

declare dso_local i64 @RX_SGE(i32) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @bxe_alloc_rx_sge_mbuf(%struct.bxe_fastpath*, i64) #1

declare dso_local i32 @m_cat(%struct.mbuf*, %struct.mbuf*) #1

declare dso_local i32 @bxe_update_sge_prod(i32, %struct.bxe_fastpath*, i64, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
