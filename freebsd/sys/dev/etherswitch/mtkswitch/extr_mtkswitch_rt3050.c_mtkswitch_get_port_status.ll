; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_rt3050.c_mtkswitch_get_port_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch_rt3050.c_mtkswitch_get_port_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtkswitch_softc = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@MTKSWITCH_POA = common dso_local global i32 0, align 4
@MTKSWITCH_LINK_UP = common dso_local global i32 0, align 4
@MTKSWITCH_DUPLEX = common dso_local global i32 0, align 4
@MTKSWITCH_SPEED_100 = common dso_local global i32 0, align 4
@MTKSWITCH_TXFLOW = common dso_local global i32 0, align 4
@MTKSWITCH_RXFLOW = common dso_local global i32 0, align 4
@MTKSWITCH_SPEED_10 = common dso_local global i32 0, align 4
@MTKSWITCH_SPEED_1000 = common dso_local global i32 0, align 4
@POA_GE_XFC_TX_MSK = common dso_local global i32 0, align 4
@POA_GE_XFC_RX_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtkswitch_softc*, i32)* @mtkswitch_get_port_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtkswitch_get_port_status(%struct.mtkswitch_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mtkswitch_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mtkswitch_softc* %0, %struct.mtkswitch_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @MTKSWITCH_LOCK_ASSERT(%struct.mtkswitch_softc* %7, i32 %8)
  store i32 0, i32* %6, align 4
  %10 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %3, align 8
  %11 = load i32, i32* @MTKSWITCH_POA, align 4
  %12 = call i32 @MTKSWITCH_READ(%struct.mtkswitch_softc* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @POA_PRT_LINK(i32 %14)
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @MTKSWITCH_LINK_UP, align 4
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @POA_PRT_DPX(i32 %24)
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* @MTKSWITCH_DUPLEX, align 4
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %28, %22
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @MTKSWITCH_PORT_IS_100M(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @POA_FE_SPEED(i32 %38)
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i32, i32* @MTKSWITCH_SPEED_100, align 4
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %42, %36
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @POA_FE_XFC(i32 %48)
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load i32, i32* @MTKSWITCH_TXFLOW, align 4
  %54 = load i32, i32* @MTKSWITCH_RXFLOW, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %52, %46
  br label %97

59:                                               ; preds = %32
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @POA_GE_SPEED(i32 %60, i32 %61)
  switch i32 %62, label %75 [
    i32 130, label %63
    i32 129, label %67
    i32 128, label %71
  ]

63:                                               ; preds = %59
  %64 = load i32, i32* @MTKSWITCH_SPEED_10, align 4
  %65 = load i32, i32* %6, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %6, align 4
  br label %75

67:                                               ; preds = %59
  %68 = load i32, i32* @MTKSWITCH_SPEED_100, align 4
  %69 = load i32, i32* %6, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %6, align 4
  br label %75

71:                                               ; preds = %59
  %72 = load i32, i32* @MTKSWITCH_SPEED_1000, align 4
  %73 = load i32, i32* %6, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %59, %71, %67, %63
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @POA_GE_XFC(i32 %76, i32 %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @POA_GE_XFC_TX_MSK, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %75
  %84 = load i32, i32* @MTKSWITCH_TXFLOW, align 4
  %85 = load i32, i32* %6, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %83, %75
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @POA_GE_XFC_RX_MSK, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load i32, i32* @MTKSWITCH_RXFLOW, align 4
  %94 = load i32, i32* %6, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %92, %87
  br label %97

97:                                               ; preds = %96, %58
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i32 @MTKSWITCH_LOCK_ASSERT(%struct.mtkswitch_softc*, i32) #1

declare dso_local i32 @MTKSWITCH_READ(%struct.mtkswitch_softc*, i32) #1

declare dso_local i32 @POA_PRT_LINK(i32) #1

declare dso_local i32 @POA_PRT_DPX(i32) #1

declare dso_local i64 @MTKSWITCH_PORT_IS_100M(i32) #1

declare dso_local i32 @POA_FE_SPEED(i32) #1

declare dso_local i32 @POA_FE_XFC(i32) #1

declare dso_local i32 @POA_GE_SPEED(i32, i32) #1

declare dso_local i32 @POA_GE_XFC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
