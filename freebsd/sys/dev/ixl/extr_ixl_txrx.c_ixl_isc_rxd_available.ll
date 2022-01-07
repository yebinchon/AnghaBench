; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_txrx.c_ixl_isc_rxd_available.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_txrx.c_ixl_isc_rxd_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_vsi = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { %struct.rx_ring }
%struct.rx_ring = type { %union.i40e_rx_desc* }
%union.i40e_rx_desc = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@I40E_RXD_QW1_STATUS_MASK = common dso_local global i32 0, align 4
@I40E_RXD_QW1_STATUS_SHIFT = common dso_local global i32 0, align 4
@I40E_RX_DESC_STATUS_DD_SHIFT = common dso_local global i32 0, align 4
@I40E_RX_DESC_STATUS_EOF_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32, i32)* @ixl_isc_rxd_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixl_isc_rxd_available(i8* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ixl_vsi*, align 8
  %10 = alloca %struct.rx_ring*, align 8
  %11 = alloca %union.i40e_rx_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.ixl_vsi*
  store %struct.ixl_vsi* %18, %struct.ixl_vsi** %9, align 8
  %19 = load %struct.ixl_vsi*, %struct.ixl_vsi** %9, align 8
  %20 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store %struct.rx_ring* %24, %struct.rx_ring** %10, align 8
  %25 = load %struct.ixl_vsi*, %struct.ixl_vsi** %9, align 8
  %26 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %16, align 4
  store i32 0, i32* %14, align 4
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %15, align 4
  br label %33

33:                                               ; preds = %83, %4
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %16, align 4
  %36 = sub nsw i32 %35, 1
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp sle i32 %39, %40
  br label %42

42:                                               ; preds = %38, %33
  %43 = phi i1 [ false, %33 ], [ %41, %38 ]
  br i1 %43, label %44, label %84

44:                                               ; preds = %42
  %45 = load %struct.rx_ring*, %struct.rx_ring** %10, align 8
  %46 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %45, i32 0, i32 0
  %47 = load %union.i40e_rx_desc*, %union.i40e_rx_desc** %46, align 8
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %union.i40e_rx_desc, %union.i40e_rx_desc* %47, i64 %49
  store %union.i40e_rx_desc* %50, %union.i40e_rx_desc** %11, align 8
  %51 = load %union.i40e_rx_desc*, %union.i40e_rx_desc** %11, align 8
  %52 = bitcast %union.i40e_rx_desc* %51 to %struct.TYPE_8__*
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le64toh(i32 %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @I40E_RXD_QW1_STATUS_MASK, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @I40E_RXD_QW1_STATUS_SHIFT, align 4
  %61 = ashr i32 %59, %60
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @I40E_RX_DESC_STATUS_DD_SHIFT, align 4
  %64 = shl i32 1, %63
  %65 = and i32 %62, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %44
  br label %84

68:                                               ; preds = %44
  %69 = load i32, i32* %15, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %16, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 0, i32* %15, align 4
  br label %74

74:                                               ; preds = %73, %68
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @I40E_RX_DESC_STATUS_EOF_SHIFT, align 4
  %77 = shl i32 1, %76
  %78 = and i32 %75, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %14, align 4
  br label %83

83:                                               ; preds = %80, %74
  br label %33

84:                                               ; preds = %67, %42
  %85 = load i32, i32* %14, align 4
  ret i32 %85
}

declare dso_local i32 @le64toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
