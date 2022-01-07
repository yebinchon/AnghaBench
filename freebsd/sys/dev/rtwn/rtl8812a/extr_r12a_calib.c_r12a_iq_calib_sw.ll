; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/extr_r12a_calib.c_r12a_iq_calib_sw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/extr_r12a_calib.c_r12a_iq_calib_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }

@r12a_iq_bb_regs = common dso_local global i32 0, align 4
@r12a_iq_afe_regs = common dso_local global i32 0, align 4
@r12a_iq_rf_regs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"nrxchains > %d (%d)\0A\00", align 1
@R12A_TXAGC_TABLE_SELECT = common dso_local global i32 0, align 4
@R12A_MAX_NRXCHAINS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r12a_iq_calib_sw(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [2 x i32], align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %8 = load i32, i32* @r12a_iq_bb_regs, align 4
  %9 = call i32 @nitems(i32 %8)
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = load i32, i32* @r12a_iq_afe_regs, align 4
  %14 = call i32 @nitems(i32 %13)
  %15 = zext i32 %14 to i64
  %16 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  %17 = load i32, i32* @r12a_iq_rf_regs, align 4
  %18 = call i32 @nitems(i32 %17)
  %19 = mul nsw i32 %18, 2
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %6, align 8
  %22 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %23 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sle i32 %24, 2
  %26 = zext i1 %25 to i32
  %27 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %28 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @KASSERT(i32 %26, i8* %31)
  %33 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %34 = load i32, i32* @r12a_iq_bb_regs, align 4
  %35 = load i32, i32* @r12a_iq_bb_regs, align 4
  %36 = call i32 @nitems(i32 %35)
  %37 = call i32 @r12a_save_bb_afe_vals(%struct.rtwn_softc* %33, i32* %12, i32 %34, i32 %36)
  %38 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %39 = load i32, i32* @R12A_TXAGC_TABLE_SELECT, align 4
  %40 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %38, i32 %39, i32 0, i32 -2147483648)
  %41 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %42 = call i32 @R12A_RFE(i32 0)
  %43 = call i32 @rtwn_bb_read(%struct.rtwn_softc* %41, i32 %42)
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %43, i32* %44, align 4
  %45 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %46 = call i32 @R12A_RFE(i32 1)
  %47 = call i32 @rtwn_bb_read(%struct.rtwn_softc* %45, i32 %46)
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %47, i32* %48, align 4
  %49 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %50 = load i32, i32* @r12a_iq_afe_regs, align 4
  %51 = load i32, i32* @r12a_iq_afe_regs, align 4
  %52 = call i32 @nitems(i32 %51)
  %53 = call i32 @r12a_save_bb_afe_vals(%struct.rtwn_softc* %49, i32* %16, i32 %50, i32 %52)
  %54 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %55 = load i32, i32* @r12a_iq_rf_regs, align 4
  %56 = load i32, i32* @r12a_iq_rf_regs, align 4
  %57 = call i32 @nitems(i32 %56)
  %58 = call i32 @r12a_save_rf_vals(%struct.rtwn_softc* %54, i32* %21, i32 %55, i32 %57)
  %59 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %60 = load i32, i32* @r12a_iq_rf_regs, align 4
  %61 = load i32, i32* @r12a_iq_rf_regs, align 4
  %62 = call i32 @nitems(i32 %61)
  %63 = call i32 @r12a_restore_rf_vals(%struct.rtwn_softc* %59, i32* %21, i32 %60, i32 %62)
  %64 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %65 = load i32, i32* @r12a_iq_afe_regs, align 4
  %66 = load i32, i32* @r12a_iq_afe_regs, align 4
  %67 = call i32 @nitems(i32 %66)
  %68 = call i32 @r12a_restore_bb_afe_vals(%struct.rtwn_softc* %64, i32* %16, i32 %65, i32 %67)
  %69 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %70 = load i32, i32* @R12A_TXAGC_TABLE_SELECT, align 4
  %71 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %69, i32 %70, i32 0, i32 -2147483648)
  %72 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %73 = call i32 @R12A_SLEEP_NAV(i32 0)
  %74 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %72, i32 %73, i32 0)
  %75 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %76 = call i32 @R12A_PMPD(i32 0)
  %77 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %75, i32 %76, i32 0)
  %78 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %79 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %78, i32 3208, i32 0)
  %80 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %81 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %80, i32 3212, i32 1006632960)
  %82 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %83 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %82, i32 3216, i32 0, i32 128)
  %84 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %85 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %84, i32 3268, i32 0, i32 537133056)
  %86 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %87 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %86, i32 3272, i32 0, i32 536870912)
  %88 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %89 = call i32 @R12A_SLEEP_NAV(i32 1)
  %90 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %88, i32 %89, i32 0)
  %91 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %92 = call i32 @R12A_PMPD(i32 1)
  %93 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %91, i32 %92, i32 0)
  %94 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %95 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %94, i32 3720, i32 0)
  %96 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %97 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %96, i32 3724, i32 1006632960)
  %98 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %99 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %98, i32 3728, i32 0, i32 128)
  %100 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %101 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %100, i32 3780, i32 0, i32 537133056)
  %102 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %103 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %102, i32 3784, i32 0, i32 536870912)
  %104 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %105 = call i32 @R12A_RFE(i32 0)
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %104, i32 %105, i32 %107)
  %109 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %110 = call i32 @R12A_RFE(i32 1)
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %109, i32 %110, i32 %112)
  %114 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %115 = load i32, i32* @r12a_iq_bb_regs, align 4
  %116 = load i32, i32* @r12a_iq_bb_regs, align 4
  %117 = call i32 @nitems(i32 %116)
  %118 = call i32 @r12a_restore_bb_afe_vals(%struct.rtwn_softc* %114, i32* %12, i32 %115, i32 %117)
  %119 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %119)
  ret void
}

declare dso_local i32 @nitems(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @r12a_save_bb_afe_vals(%struct.rtwn_softc*, i32*, i32, i32) #1

declare dso_local i32 @rtwn_bb_setbits(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i32 @rtwn_bb_read(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @R12A_RFE(i32) #1

declare dso_local i32 @r12a_save_rf_vals(%struct.rtwn_softc*, i32*, i32, i32) #1

declare dso_local i32 @r12a_restore_rf_vals(%struct.rtwn_softc*, i32*, i32, i32) #1

declare dso_local i32 @r12a_restore_bb_afe_vals(%struct.rtwn_softc*, i32*, i32, i32) #1

declare dso_local i32 @rtwn_bb_write(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @R12A_SLEEP_NAV(i32) #1

declare dso_local i32 @R12A_PMPD(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
