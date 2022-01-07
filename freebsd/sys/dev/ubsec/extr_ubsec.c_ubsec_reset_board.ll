; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_reset_board.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_reset_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubsec_softc = type { i32 }

@BS_CTRL = common dso_local global i32 0, align 4
@BS_CTRL_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubsec_softc*)* @ubsec_reset_board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubsec_reset_board(%struct.ubsec_softc* %0) #0 {
  %2 = alloca %struct.ubsec_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.ubsec_softc* %0, %struct.ubsec_softc** %2, align 8
  %4 = load %struct.ubsec_softc*, %struct.ubsec_softc** %2, align 8
  %5 = load i32, i32* @BS_CTRL, align 4
  %6 = call i32 @READ_REG(%struct.ubsec_softc* %4, i32 %5)
  store volatile i32 %6, i32* %3, align 4
  %7 = load volatile i32, i32* @BS_CTRL_RESET, align 4
  %8 = load volatile i32, i32* %3, align 4
  %9 = or i32 %8, %7
  store volatile i32 %9, i32* %3, align 4
  %10 = load %struct.ubsec_softc*, %struct.ubsec_softc** %2, align 8
  %11 = load i32, i32* @BS_CTRL, align 4
  %12 = load volatile i32, i32* %3, align 4
  %13 = call i32 @WRITE_REG(%struct.ubsec_softc* %10, i32 %11, i32 %12)
  %14 = call i32 @DELAY(i32 10)
  ret void
}

declare dso_local i32 @READ_REG(%struct.ubsec_softc*, i32) #1

declare dso_local i32 @WRITE_REG(%struct.ubsec_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
