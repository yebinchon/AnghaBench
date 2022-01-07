; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_admin_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_admin_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgb_softc = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@MGB_INTR_STS = common dso_local global i32 0, align 4
@MGB_INTR_ENBL_SET = common dso_local global i32 0, align 4
@MGB_INTR_STS_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"non-mgb interrupt triggered.\0A\00", align 1
@FILTER_SCHEDULE_THREAD = common dso_local global i32 0, align 4
@MGB_INTR_STS_TEST = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@MGB_INTR_STS_RX_ANY = common dso_local global i32 0, align 4
@MGB_INTR_STS_TX_ANY = common dso_local global i32 0, align 4
@MGB_INTR_ENBL_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mgb_admin_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgb_admin_intr(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mgb_softc*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.mgb_softc*
  store %struct.mgb_softc* %10, %struct.mgb_softc** %4, align 8
  %11 = load %struct.mgb_softc*, %struct.mgb_softc** %4, align 8
  %12 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_3__* @iflib_get_softc_ctx(i32 %13)
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %5, align 8
  %15 = load %struct.mgb_softc*, %struct.mgb_softc** %4, align 8
  %16 = load i32, i32* @MGB_INTR_STS, align 4
  %17 = call i32 @CSR_READ_REG(%struct.mgb_softc* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.mgb_softc*, %struct.mgb_softc** %4, align 8
  %19 = load i32, i32* @MGB_INTR_ENBL_SET, align 4
  %20 = call i32 @CSR_READ_REG(%struct.mgb_softc* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @MGB_INTR_STS_ANY, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %1
  %29 = load %struct.mgb_softc*, %struct.mgb_softc** %4, align 8
  %30 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @FILTER_SCHEDULE_THREAD, align 4
  store i32 %33, i32* %2, align 4
  br label %119

34:                                               ; preds = %1
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @MGB_INTR_STS_TEST, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.mgb_softc*, %struct.mgb_softc** %4, align 8
  %41 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  %42 = load %struct.mgb_softc*, %struct.mgb_softc** %4, align 8
  %43 = load i32, i32* @MGB_INTR_STS, align 4
  %44 = load i32, i32* @MGB_INTR_STS_TEST, align 4
  %45 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %42, i32 %43, i32 %44)
  %46 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %46, i32* %2, align 4
  br label %119

47:                                               ; preds = %34
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @MGB_INTR_STS_RX_ANY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %77

52:                                               ; preds = %47
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %72, %52
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %53
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @MGB_INTR_STS_RX(i32 %61)
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load %struct.mgb_softc*, %struct.mgb_softc** %4, align 8
  %67 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @iflib_rx_intr_deferred(i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %65, %59
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %53

75:                                               ; preds = %53
  %76 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %76, i32* %2, align 4
  br label %119

77:                                               ; preds = %47
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @MGB_INTR_STS_TX_ANY, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %117

82:                                               ; preds = %77
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %112, %82
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %115

89:                                               ; preds = %83
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @MGB_INTR_STS_RX(i32 %91)
  %93 = and i32 %90, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %89
  %96 = load %struct.mgb_softc*, %struct.mgb_softc** %4, align 8
  %97 = load i32, i32* @MGB_INTR_ENBL_CLR, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @MGB_INTR_STS_TX(i32 %98)
  %100 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %96, i32 %97, i32 %99)
  %101 = load %struct.mgb_softc*, %struct.mgb_softc** %4, align 8
  %102 = load i32, i32* @MGB_INTR_STS, align 4
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @MGB_INTR_STS_TX(i32 %103)
  %105 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %101, i32 %102, i32 %104)
  %106 = load %struct.mgb_softc*, %struct.mgb_softc** %4, align 8
  %107 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @iflib_tx_intr_deferred(i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %95, %89
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %8, align 4
  br label %83

115:                                              ; preds = %83
  %116 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %116, i32* %2, align 4
  br label %119

117:                                              ; preds = %77
  %118 = load i32, i32* @FILTER_SCHEDULE_THREAD, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %117, %115, %75, %39, %28
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local %struct.TYPE_3__* @iflib_get_softc_ctx(i32) #1

declare dso_local i32 @CSR_READ_REG(%struct.mgb_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @CSR_WRITE_REG(%struct.mgb_softc*, i32, i32) #1

declare dso_local i32 @MGB_INTR_STS_RX(i32) #1

declare dso_local i32 @iflib_rx_intr_deferred(i32, i32) #1

declare dso_local i32 @MGB_INTR_STS_TX(i32) #1

declare dso_local i32 @iflib_tx_intr_deferred(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
