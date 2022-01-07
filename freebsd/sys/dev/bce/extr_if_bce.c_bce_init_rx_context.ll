; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_init_rx_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_init_rx_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bce_softc = type { i32, i32* }

@BCE_VERBOSE_RESET = common dso_local global i32 0, align 4
@BCE_VERBOSE_RECV = common dso_local global i32 0, align 4
@BCE_VERBOSE_CTX = common dso_local global i32 0, align 4
@BCE_L2CTX_RX_CTX_TYPE_CTX_BD_CHN_TYPE_VALUE = common dso_local global i32 0, align 4
@BCE_L2CTX_RX_CTX_TYPE_SIZE_L2 = common dso_local global i32 0, align 4
@BCE_L2CTX_RX_BD_PRE_READ_SHIFT = common dso_local global i32 0, align 4
@BCE_CHIP_NUM_5709 = common dso_local global i64 0, align 8
@BCE_USING_TX_FLOW_CONTROL = common dso_local global i32 0, align 4
@BCE_L2CTX_RX_LO_WATER_MARK_DEFAULT = common dso_local global i32 0, align 4
@USABLE_RX_BD_ALLOC = common dso_local global i32 0, align 4
@BCE_L2CTX_RX_LO_WATER_MARK_SCALE = common dso_local global i32 0, align 4
@BCE_L2CTX_RX_HI_WATER_MARK_SCALE = common dso_local global i32 0, align 4
@BCE_L2CTX_RX_LO_WATER_MARK_SHIFT = common dso_local global i32 0, align 4
@BCE_L2CTX_RX_HI_WATER_MARK_SHIFT = common dso_local global i32 0, align 4
@RX_CID = common dso_local global i32 0, align 4
@BCE_L2CTX_RX_CTX_TYPE = common dso_local global i32 0, align 4
@BCE_MQ_MAP_L2_5 = common dso_local global i32 0, align 4
@BCE_MQ_MAP_L2_5_ARM = common dso_local global i32 0, align 4
@BCE_L2CTX_RX_NX_BDHADDR_HI = common dso_local global i32 0, align 4
@BCE_L2CTX_RX_NX_BDHADDR_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bce_softc*)* @bce_init_rx_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bce_init_rx_context(%struct.bce_softc* %0) #0 {
  %2 = alloca %struct.bce_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bce_softc* %0, %struct.bce_softc** %2, align 8
  %6 = load i32, i32* @BCE_VERBOSE_RESET, align 4
  %7 = load i32, i32* @BCE_VERBOSE_RECV, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @BCE_VERBOSE_CTX, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @DBENTER(i32 %10)
  %12 = load i32, i32* @BCE_L2CTX_RX_CTX_TYPE_CTX_BD_CHN_TYPE_VALUE, align 4
  %13 = load i32, i32* @BCE_L2CTX_RX_CTX_TYPE_SIZE_L2, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @BCE_L2CTX_RX_BD_PRE_READ_SHIFT, align 4
  %16 = shl i32 2, %15
  %17 = or i32 %14, %16
  store i32 %17, i32* %3, align 4
  %18 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %19 = call i64 @BCE_CHIP_NUM(%struct.bce_softc* %18)
  %20 = load i64, i64* @BCE_CHIP_NUM_5709, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %69

22:                                               ; preds = %1
  %23 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %24 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @BCE_USING_TX_FLOW_CONTROL, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @BCE_L2CTX_RX_LO_WATER_MARK_DEFAULT, align 4
  store i32 %30, i32* %4, align 4
  br label %32

31:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %29
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @USABLE_RX_BD_ALLOC, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %32
  %38 = load i32, i32* @USABLE_RX_BD_ALLOC, align 4
  %39 = sdiv i32 %38, 4
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %37
  %45 = load i32, i32* @BCE_L2CTX_RX_LO_WATER_MARK_SCALE, align 4
  %46 = load i32, i32* %4, align 4
  %47 = sdiv i32 %46, %45
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* @BCE_L2CTX_RX_HI_WATER_MARK_SCALE, align 4
  %49 = load i32, i32* %5, align 4
  %50 = sdiv i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp sgt i32 %51, 15
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  store i32 15, i32* %5, align 4
  br label %59

54:                                               ; preds = %44
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %54
  br label %59

59:                                               ; preds = %58, %53
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @BCE_L2CTX_RX_LO_WATER_MARK_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @BCE_L2CTX_RX_HI_WATER_MARK_SHIFT, align 4
  %65 = shl i32 %63, %64
  %66 = or i32 %62, %65
  %67 = load i32, i32* %3, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %59, %1
  %70 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %71 = load i32, i32* @RX_CID, align 4
  %72 = call i32 @GET_CID_ADDR(i32 %71)
  %73 = load i32, i32* @BCE_L2CTX_RX_CTX_TYPE, align 4
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @CTX_WR(%struct.bce_softc* %70, i32 %72, i32 %73, i32 %74)
  %76 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %77 = call i64 @BCE_CHIP_NUM(%struct.bce_softc* %76)
  %78 = load i64, i64* @BCE_CHIP_NUM_5709, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %69
  %81 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %82 = load i32, i32* @BCE_MQ_MAP_L2_5, align 4
  %83 = call i32 @REG_RD(%struct.bce_softc* %81, i32 %82)
  store i32 %83, i32* %3, align 4
  %84 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %85 = load i32, i32* @BCE_MQ_MAP_L2_5, align 4
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* @BCE_MQ_MAP_L2_5_ARM, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @REG_WR(%struct.bce_softc* %84, i32 %85, i32 %88)
  br label %90

90:                                               ; preds = %80, %69
  %91 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %92 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @BCE_ADDR_HI(i32 %95)
  store i32 %96, i32* %3, align 4
  %97 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %98 = load i32, i32* @RX_CID, align 4
  %99 = call i32 @GET_CID_ADDR(i32 %98)
  %100 = load i32, i32* @BCE_L2CTX_RX_NX_BDHADDR_HI, align 4
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @CTX_WR(%struct.bce_softc* %97, i32 %99, i32 %100, i32 %101)
  %103 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %104 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @BCE_ADDR_LO(i32 %107)
  store i32 %108, i32* %3, align 4
  %109 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %110 = load i32, i32* @RX_CID, align 4
  %111 = call i32 @GET_CID_ADDR(i32 %110)
  %112 = load i32, i32* @BCE_L2CTX_RX_NX_BDHADDR_LO, align 4
  %113 = load i32, i32* %3, align 4
  %114 = call i32 @CTX_WR(%struct.bce_softc* %109, i32 %111, i32 %112, i32 %113)
  %115 = load i32, i32* @BCE_VERBOSE_RESET, align 4
  %116 = load i32, i32* @BCE_VERBOSE_RECV, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @BCE_VERBOSE_CTX, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @DBEXIT(i32 %119)
  ret void
}

declare dso_local i32 @DBENTER(i32) #1

declare dso_local i64 @BCE_CHIP_NUM(%struct.bce_softc*) #1

declare dso_local i32 @CTX_WR(%struct.bce_softc*, i32, i32, i32) #1

declare dso_local i32 @GET_CID_ADDR(i32) #1

declare dso_local i32 @REG_RD(%struct.bce_softc*, i32) #1

declare dso_local i32 @REG_WR(%struct.bce_softc*, i32, i32) #1

declare dso_local i32 @BCE_ADDR_HI(i32) #1

declare dso_local i32 @BCE_ADDR_LO(i32) #1

declare dso_local i32 @DBEXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
