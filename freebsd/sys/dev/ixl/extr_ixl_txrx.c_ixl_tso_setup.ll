; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_txrx.c_ixl_tso_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_txrx.c_ixl_tso_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tx_ring = type { %struct.TYPE_7__*, i32, i32* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i64, i64 }
%struct.i40e_tx_context_desc = type { i32, i32 }

@I40E_TX_DESC_DTYPE_CONTEXT = common dso_local global i64 0, align 8
@I40E_TX_CTX_DESC_TSO = common dso_local global i64 0, align 8
@IXL_MIN_TSO_MSS = common dso_local global i64 0, align 8
@IXL_MAX_TSO_MSS = common dso_local global i64 0, align 8
@IXL_MAX_FRAME = common dso_local global i64 0, align 8
@I40E_TXD_CTX_QW1_DTYPE_SHIFT = common dso_local global i32 0, align 4
@I40E_TXD_CTX_QW1_CMD_SHIFT = common dso_local global i32 0, align 4
@I40E_TXD_CTX_QW1_TSO_LEN_SHIFT = common dso_local global i32 0, align 4
@I40E_TXD_CTX_QW1_MSS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tx_ring*, %struct.TYPE_9__*)* @ixl_tso_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixl_tso_setup(%struct.tx_ring* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.tx_ring*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.i40e_tx_context_desc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.tx_ring* %0, %struct.tx_ring** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %11, align 4
  %17 = load %struct.tx_ring*, %struct.tx_ring** %3, align 8
  %18 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = bitcast i32* %22 to %struct.i40e_tx_context_desc*
  store %struct.i40e_tx_context_desc* %23, %struct.i40e_tx_context_desc** %6, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %26, %29
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %30, %33
  store i32 %34, i32* %12, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %37, %39
  store i64 %40, i64* %10, align 8
  %41 = load %struct.tx_ring*, %struct.tx_ring** %3, align 8
  %42 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  store %struct.TYPE_8__* %47, %struct.TYPE_8__** %5, align 8
  %48 = load i64, i64* @I40E_TX_DESC_DTYPE_CONTEXT, align 8
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* @I40E_TX_CTX_DESC_TSO, align 8
  store i64 %49, i64* %7, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @IXL_MIN_TSO_MSS, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %2
  %56 = load %struct.tx_ring*, %struct.tx_ring** %3, align 8
  %57 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  %60 = load i64, i64* @IXL_MIN_TSO_MSS, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 5
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %55, %2
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* @IXL_MAX_TSO_MSS, align 8
  %69 = icmp sle i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @MPASS(i32 %70)
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i32 @MPASS(i32 %76)
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i32 @MPASS(i32 %82)
  %84 = load i64, i64* %10, align 8
  %85 = icmp ne i64 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32 @MPASS(i32 %86)
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* %8, align 8
  %91 = add nsw i64 %89, %90
  %92 = load i64, i64* @IXL_MAX_FRAME, align 8
  %93 = icmp sle i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @MPASS(i32 %94)
  %96 = load i64, i64* %9, align 8
  %97 = trunc i64 %96 to i32
  %98 = load i32, i32* @I40E_TXD_CTX_QW1_DTYPE_SHIFT, align 4
  %99 = shl i32 %97, %98
  %100 = load i64, i64* %7, align 8
  %101 = trunc i64 %100 to i32
  %102 = load i32, i32* @I40E_TXD_CTX_QW1_CMD_SHIFT, align 4
  %103 = shl i32 %101, %102
  %104 = or i32 %99, %103
  %105 = load i64, i64* %10, align 8
  %106 = trunc i64 %105 to i32
  %107 = load i32, i32* @I40E_TXD_CTX_QW1_TSO_LEN_SHIFT, align 4
  %108 = shl i32 %106, %107
  %109 = or i32 %104, %108
  %110 = load i64, i64* %8, align 8
  %111 = trunc i64 %110 to i32
  %112 = load i32, i32* @I40E_TXD_CTX_QW1_MSS_SHIFT, align 4
  %113 = shl i32 %111, %112
  %114 = or i32 %109, %113
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @htole64(i32 %115)
  %117 = load %struct.i40e_tx_context_desc*, %struct.i40e_tx_context_desc** %6, align 8
  %118 = getelementptr inbounds %struct.i40e_tx_context_desc, %struct.i40e_tx_context_desc* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = call i32 @htole32(i32 0)
  %120 = load %struct.i40e_tx_context_desc*, %struct.i40e_tx_context_desc** %6, align 8
  %121 = getelementptr inbounds %struct.i40e_tx_context_desc, %struct.i40e_tx_context_desc* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  %122 = load %struct.tx_ring*, %struct.tx_ring** %3, align 8
  %123 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %122, i32 0, i32 0
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 8
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 1
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 %134, 1
  %136 = and i32 %129, %135
  ret i32 %136
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @htole64(i32) #1

declare dso_local i32 @htole32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
