; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_handle_hwerr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_handle_hwerr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msk_if_softc = type { i32, i32, i32, i32, %struct.msk_softc* }
%struct.msk_softc = type { i32 }

@Y2_IS_PAR_RD1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"RAM buffer read parity error\0A\00", align 1
@B3_RI_CTRL = common dso_local global i32 0, align 4
@RI_CLR_RD_PERR = common dso_local global i32 0, align 4
@Y2_IS_PAR_WR1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"RAM buffer write parity error\0A\00", align 1
@RI_CLR_WR_PERR = common dso_local global i32 0, align 4
@Y2_IS_PAR_MAC1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Tx MAC parity error\0A\00", align 1
@TX_GMF_CTRL_T = common dso_local global i32 0, align 4
@GMF_CLI_TX_PE = common dso_local global i32 0, align 4
@Y2_IS_PAR_RX1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Rx parity error\0A\00", align 1
@Q_CSR = common dso_local global i32 0, align 4
@BMU_CLR_IRQ_PAR = common dso_local global i32 0, align 4
@Y2_IS_TCP_TXS1 = common dso_local global i32 0, align 4
@Y2_IS_TCP_TXA1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"TCP segmentation error\0A\00", align 1
@BMU_CLR_IRQ_TCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msk_if_softc*, i32)* @msk_handle_hwerr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msk_handle_hwerr(%struct.msk_if_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.msk_if_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.msk_softc*, align 8
  store %struct.msk_if_softc* %0, %struct.msk_if_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %7 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %6, i32 0, i32 4
  %8 = load %struct.msk_softc*, %struct.msk_softc** %7, align 8
  store %struct.msk_softc* %8, %struct.msk_softc** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @Y2_IS_PAR_RD1, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %15 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.msk_softc*, %struct.msk_softc** %5, align 8
  %19 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %20 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @B3_RI_CTRL, align 4
  %23 = call i32 @SELECT_RAM_BUFFER(i32 %21, i32 %22)
  %24 = load i32, i32* @RI_CLR_RD_PERR, align 4
  %25 = call i32 @CSR_WRITE_2(%struct.msk_softc* %18, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %13, %2
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @Y2_IS_PAR_WR1, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %33 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.msk_softc*, %struct.msk_softc** %5, align 8
  %37 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %38 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @B3_RI_CTRL, align 4
  %41 = call i32 @SELECT_RAM_BUFFER(i32 %39, i32 %40)
  %42 = load i32, i32* @RI_CLR_WR_PERR, align 4
  %43 = call i32 @CSR_WRITE_2(%struct.msk_softc* %36, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %31, %26
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @Y2_IS_PAR_MAC1, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %44
  %50 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %51 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @device_printf(i32 %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.msk_softc*, %struct.msk_softc** %5, align 8
  %55 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %56 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @TX_GMF_CTRL_T, align 4
  %59 = call i32 @MR_ADDR(i32 %57, i32 %58)
  %60 = load i32, i32* @GMF_CLI_TX_PE, align 4
  %61 = call i32 @CSR_WRITE_4(%struct.msk_softc* %54, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %49, %44
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @Y2_IS_PAR_RX1, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %62
  %68 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %69 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @device_printf(i32 %70, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %72 = load %struct.msk_softc*, %struct.msk_softc** %5, align 8
  %73 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %74 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @Q_CSR, align 4
  %77 = call i32 @Q_ADDR(i32 %75, i32 %76)
  %78 = load i32, i32* @BMU_CLR_IRQ_PAR, align 4
  %79 = call i32 @CSR_WRITE_4(%struct.msk_softc* %72, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %67, %62
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @Y2_IS_TCP_TXS1, align 4
  %83 = load i32, i32* @Y2_IS_TCP_TXA1, align 4
  %84 = or i32 %82, %83
  %85 = and i32 %81, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %80
  %88 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %89 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @device_printf(i32 %90, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %92 = load %struct.msk_softc*, %struct.msk_softc** %5, align 8
  %93 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %94 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @Q_CSR, align 4
  %97 = call i32 @Q_ADDR(i32 %95, i32 %96)
  %98 = load i32, i32* @BMU_CLR_IRQ_TCP, align 4
  %99 = call i32 @CSR_WRITE_4(%struct.msk_softc* %92, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %87, %80
  ret void
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @CSR_WRITE_2(%struct.msk_softc*, i32, i32) #1

declare dso_local i32 @SELECT_RAM_BUFFER(i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.msk_softc*, i32, i32) #1

declare dso_local i32 @MR_ADDR(i32, i32) #1

declare dso_local i32 @Q_ADDR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
