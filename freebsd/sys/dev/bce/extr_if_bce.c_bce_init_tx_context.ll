; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_init_tx_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_init_tx_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bce_softc = type { i32* }

@BCE_VERBOSE_RESET = common dso_local global i32 0, align 4
@BCE_VERBOSE_SEND = common dso_local global i32 0, align 4
@BCE_VERBOSE_CTX = common dso_local global i32 0, align 4
@BCE_CHIP_NUM_5709 = common dso_local global i64 0, align 8
@BCE_L2CTX_TX_TYPE_TYPE_L2_XI = common dso_local global i32 0, align 4
@BCE_L2CTX_TX_TYPE_SIZE_L2_XI = common dso_local global i32 0, align 4
@TX_CID = common dso_local global i32 0, align 4
@BCE_L2CTX_TX_TYPE_XI = common dso_local global i32 0, align 4
@BCE_L2CTX_TX_CMD_TYPE_TYPE_L2_XI = common dso_local global i32 0, align 4
@BCE_L2CTX_TX_CMD_TYPE_XI = common dso_local global i32 0, align 4
@BCE_L2CTX_TX_TBDR_BHADDR_HI_XI = common dso_local global i32 0, align 4
@BCE_L2CTX_TX_TBDR_BHADDR_LO_XI = common dso_local global i32 0, align 4
@BCE_L2CTX_TX_TYPE_TYPE_L2 = common dso_local global i32 0, align 4
@BCE_L2CTX_TX_TYPE_SIZE_L2 = common dso_local global i32 0, align 4
@BCE_L2CTX_TX_TYPE = common dso_local global i32 0, align 4
@BCE_L2CTX_TX_CMD_TYPE_TYPE_L2 = common dso_local global i32 0, align 4
@BCE_L2CTX_TX_CMD_TYPE = common dso_local global i32 0, align 4
@BCE_L2CTX_TX_TBDR_BHADDR_HI = common dso_local global i32 0, align 4
@BCE_L2CTX_TX_TBDR_BHADDR_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bce_softc*)* @bce_init_tx_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bce_init_tx_context(%struct.bce_softc* %0) #0 {
  %2 = alloca %struct.bce_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.bce_softc* %0, %struct.bce_softc** %2, align 8
  %4 = load i32, i32* @BCE_VERBOSE_RESET, align 4
  %5 = load i32, i32* @BCE_VERBOSE_SEND, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @BCE_VERBOSE_CTX, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @DBENTER(i32 %8)
  %10 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %11 = call i64 @BCE_CHIP_NUM(%struct.bce_softc* %10)
  %12 = load i64, i64* @BCE_CHIP_NUM_5709, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %56

14:                                               ; preds = %1
  %15 = load i32, i32* @BCE_L2CTX_TX_TYPE_TYPE_L2_XI, align 4
  %16 = load i32, i32* @BCE_L2CTX_TX_TYPE_SIZE_L2_XI, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %3, align 4
  %18 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %19 = load i32, i32* @TX_CID, align 4
  %20 = call i32 @GET_CID_ADDR(i32 %19)
  %21 = load i32, i32* @BCE_L2CTX_TX_TYPE_XI, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @CTX_WR(%struct.bce_softc* %18, i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* @BCE_L2CTX_TX_CMD_TYPE_TYPE_L2_XI, align 4
  %25 = or i32 %24, 524288
  store i32 %25, i32* %3, align 4
  %26 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %27 = load i32, i32* @TX_CID, align 4
  %28 = call i32 @GET_CID_ADDR(i32 %27)
  %29 = load i32, i32* @BCE_L2CTX_TX_CMD_TYPE_XI, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @CTX_WR(%struct.bce_softc* %26, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %33 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @BCE_ADDR_HI(i32 %36)
  store i32 %37, i32* %3, align 4
  %38 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %39 = load i32, i32* @TX_CID, align 4
  %40 = call i32 @GET_CID_ADDR(i32 %39)
  %41 = load i32, i32* @BCE_L2CTX_TX_TBDR_BHADDR_HI_XI, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @CTX_WR(%struct.bce_softc* %38, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %45 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @BCE_ADDR_LO(i32 %48)
  store i32 %49, i32* %3, align 4
  %50 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %51 = load i32, i32* @TX_CID, align 4
  %52 = call i32 @GET_CID_ADDR(i32 %51)
  %53 = load i32, i32* @BCE_L2CTX_TX_TBDR_BHADDR_LO_XI, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @CTX_WR(%struct.bce_softc* %50, i32 %52, i32 %53, i32 %54)
  br label %98

56:                                               ; preds = %1
  %57 = load i32, i32* @BCE_L2CTX_TX_TYPE_TYPE_L2, align 4
  %58 = load i32, i32* @BCE_L2CTX_TX_TYPE_SIZE_L2, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %3, align 4
  %60 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %61 = load i32, i32* @TX_CID, align 4
  %62 = call i32 @GET_CID_ADDR(i32 %61)
  %63 = load i32, i32* @BCE_L2CTX_TX_TYPE, align 4
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @CTX_WR(%struct.bce_softc* %60, i32 %62, i32 %63, i32 %64)
  %66 = load i32, i32* @BCE_L2CTX_TX_CMD_TYPE_TYPE_L2, align 4
  %67 = or i32 %66, 524288
  store i32 %67, i32* %3, align 4
  %68 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %69 = load i32, i32* @TX_CID, align 4
  %70 = call i32 @GET_CID_ADDR(i32 %69)
  %71 = load i32, i32* @BCE_L2CTX_TX_CMD_TYPE, align 4
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @CTX_WR(%struct.bce_softc* %68, i32 %70, i32 %71, i32 %72)
  %74 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %75 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @BCE_ADDR_HI(i32 %78)
  store i32 %79, i32* %3, align 4
  %80 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %81 = load i32, i32* @TX_CID, align 4
  %82 = call i32 @GET_CID_ADDR(i32 %81)
  %83 = load i32, i32* @BCE_L2CTX_TX_TBDR_BHADDR_HI, align 4
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @CTX_WR(%struct.bce_softc* %80, i32 %82, i32 %83, i32 %84)
  %86 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %87 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @BCE_ADDR_LO(i32 %90)
  store i32 %91, i32* %3, align 4
  %92 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %93 = load i32, i32* @TX_CID, align 4
  %94 = call i32 @GET_CID_ADDR(i32 %93)
  %95 = load i32, i32* @BCE_L2CTX_TX_TBDR_BHADDR_LO, align 4
  %96 = load i32, i32* %3, align 4
  %97 = call i32 @CTX_WR(%struct.bce_softc* %92, i32 %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %56, %14
  %99 = load i32, i32* @BCE_VERBOSE_RESET, align 4
  %100 = load i32, i32* @BCE_VERBOSE_SEND, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @BCE_VERBOSE_CTX, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @DBEXIT(i32 %103)
  ret void
}

declare dso_local i32 @DBENTER(i32) #1

declare dso_local i64 @BCE_CHIP_NUM(%struct.bce_softc*) #1

declare dso_local i32 @CTX_WR(%struct.bce_softc*, i32, i32, i32) #1

declare dso_local i32 @GET_CID_ADDR(i32) #1

declare dso_local i32 @BCE_ADDR_HI(i32) #1

declare dso_local i32 @BCE_ADDR_LO(i32) #1

declare dso_local i32 @DBEXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
