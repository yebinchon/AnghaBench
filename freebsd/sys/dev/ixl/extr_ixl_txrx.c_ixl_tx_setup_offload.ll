; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_txrx.c_ixl_tx_setup_offload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_txrx.c_ixl_tx_setup_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_tx_queue = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@I40E_TX_DESC_LENGTH_MACLEN_SHIFT = common dso_local global i32 0, align 4
@I40E_TX_DESC_LENGTH_IPLEN_SHIFT = common dso_local global i32 0, align 4
@IXL_CSUM_TCP = common dso_local global i32 0, align 4
@I40E_TX_DESC_CMD_L4T_EOFT_TCP = common dso_local global i32 0, align 4
@I40E_TX_DESC_LENGTH_L4_FC_LEN_SHIFT = common dso_local global i32 0, align 4
@IXL_CSUM_UDP = common dso_local global i32 0, align 4
@I40E_TX_DESC_CMD_L4T_EOFT_UDP = common dso_local global i32 0, align 4
@IXL_CSUM_SCTP = common dso_local global i32 0, align 4
@I40E_TX_DESC_CMD_L4T_EOFT_SCTP = common dso_local global i32 0, align 4
@I40E_TX_DESC_CMD_IIPT_IPV4 = common dso_local global i32 0, align 4
@I40E_TX_DESC_CMD_IIPT_IPV4_CSUM = common dso_local global i32 0, align 4
@I40E_TX_DESC_CMD_IIPT_IPV6 = common dso_local global i32 0, align 4
@IXL_CSUM_IPV4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixl_tx_queue*, %struct.TYPE_3__*, i32*, i32*)* @ixl_tx_setup_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixl_tx_setup_offload(%struct.ixl_tx_queue* %0, %struct.TYPE_3__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.ixl_tx_queue*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.ixl_tx_queue* %0, %struct.ixl_tx_queue** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %12 [
  ]

12:                                               ; preds = %4
  br label %13

13:                                               ; preds = %12
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = ashr i32 %16, 1
  %18 = load i32, i32* @I40E_TX_DESC_LENGTH_MACLEN_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %19
  store i32 %22, i32* %20, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 2
  %27 = load i32, i32* @I40E_TX_DESC_LENGTH_IPLEN_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %28
  store i32 %31, i32* %29, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %105 [
    i32 129, label %35
    i32 128, label %63
    i32 130, label %84
  ]

35:                                               ; preds = %13
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IXL_CSUM_TCP, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %35
  %43 = load i32, i32* @I40E_TX_DESC_CMD_L4T_EOFT_TCP, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, 2
  %51 = load i32, i32* @I40E_TX_DESC_LENGTH_L4_FC_LEN_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %52
  store i32 %55, i32* %53, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @MPASS(i32 %60)
  br label %62

62:                                               ; preds = %42, %35
  br label %106

63:                                               ; preds = %13
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @IXL_CSUM_UDP, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %63
  %71 = load i32, i32* @I40E_TX_DESC_CMD_L4T_EOFT_UDP, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %71
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* @I40E_TX_DESC_LENGTH_L4_FC_LEN_SHIFT, align 4
  %76 = zext i32 %75 to i64
  %77 = shl i64 1, %76
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = or i64 %80, %77
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %78, align 4
  br label %83

83:                                               ; preds = %70, %63
  br label %106

84:                                               ; preds = %13
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @IXL_CSUM_SCTP, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %84
  %92 = load i32, i32* @I40E_TX_DESC_CMD_L4T_EOFT_SCTP, align 4
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %92
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* @I40E_TX_DESC_LENGTH_L4_FC_LEN_SHIFT, align 4
  %97 = zext i32 %96 to i64
  %98 = shl i64 1, %97
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = or i64 %101, %98
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %99, align 4
  br label %104

104:                                              ; preds = %91, %84
  br label %105

105:                                              ; preds = %13, %104
  br label %106

106:                                              ; preds = %105, %83, %62
  ret void
}

declare dso_local i32 @MPASS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
