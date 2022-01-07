; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_regwin_disable_bits.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_regwin_disable_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { i32 }

@BWI_ID_LO = common dso_local global i32 0, align 4
@BWI_ID_LO_BUSREV_MASK = common dso_local global i32 0, align 4
@BWI_DBG_ATTACH = common dso_local global i32 0, align 4
@BWI_DBG_INIT = common dso_local global i32 0, align 4
@BWI_DBG_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"bus rev %u\0A\00", align 1
@BWI_BUSREV_0 = common dso_local global i64 0, align 8
@BWI_STATE_LO_DISABLE1 = common dso_local global i64 0, align 8
@BWI_BUSREV_1 = common dso_local global i64 0, align 8
@BWI_STATE_LO_DISABLE2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bwi_softc*)* @bwi_regwin_disable_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bwi_regwin_disable_bits(%struct.bwi_softc* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.bwi_softc*, align 8
  %4 = alloca i64, align 8
  store %struct.bwi_softc* %0, %struct.bwi_softc** %3, align 8
  %5 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %6 = load i32, i32* @BWI_ID_LO, align 4
  %7 = call i32 @CSR_READ_4(%struct.bwi_softc* %5, i32 %6)
  %8 = load i32, i32* @BWI_ID_LO_BUSREV_MASK, align 4
  %9 = call i64 @__SHIFTOUT(i32 %7, i32 %8)
  store i64 %9, i64* %4, align 8
  %10 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %11 = load i32, i32* @BWI_DBG_ATTACH, align 4
  %12 = load i32, i32* @BWI_DBG_INIT, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @BWI_DBG_MISC, align 4
  %15 = or i32 %13, %14
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @DPRINTF(%struct.bwi_softc* %10, i32 %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @BWI_BUSREV_0, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i64, i64* @BWI_STATE_LO_DISABLE1, align 8
  store i64 %22, i64* %2, align 8
  br label %33

23:                                               ; preds = %1
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @BWI_BUSREV_1, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i64, i64* @BWI_STATE_LO_DISABLE2, align 8
  store i64 %28, i64* %2, align 8
  br label %33

29:                                               ; preds = %23
  %30 = load i64, i64* @BWI_STATE_LO_DISABLE1, align 8
  %31 = load i64, i64* @BWI_STATE_LO_DISABLE2, align 8
  %32 = or i64 %30, %31
  store i64 %32, i64* %2, align 8
  br label %33

33:                                               ; preds = %29, %27, %21
  %34 = load i64, i64* %2, align 8
  ret i64 %34
}

declare dso_local i64 @__SHIFTOUT(i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.bwi_softc*, i32) #1

declare dso_local i32 @DPRINTF(%struct.bwi_softc*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
