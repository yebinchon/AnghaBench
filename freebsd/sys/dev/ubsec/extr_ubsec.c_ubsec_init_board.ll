; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_init_board.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_init_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubsec_softc = type { i32 }

@BS_CTRL = common dso_local global i32 0, align 4
@BS_CTRL_BE32 = common dso_local global i32 0, align 4
@BS_CTRL_BE64 = common dso_local global i32 0, align 4
@BS_CTRL_LITTLE_ENDIAN = common dso_local global i32 0, align 4
@BS_CTRL_MCR1INT = common dso_local global i32 0, align 4
@UBS_FLAGS_KEY = common dso_local global i32 0, align 4
@UBS_FLAGS_RNG = common dso_local global i32 0, align 4
@BS_CTRL_MCR2INT = common dso_local global i32 0, align 4
@UBS_FLAGS_HWNORM = common dso_local global i32 0, align 4
@BS_CTRL_SWNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubsec_softc*)* @ubsec_init_board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubsec_init_board(%struct.ubsec_softc* %0) #0 {
  %2 = alloca %struct.ubsec_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.ubsec_softc* %0, %struct.ubsec_softc** %2, align 8
  %4 = load %struct.ubsec_softc*, %struct.ubsec_softc** %2, align 8
  %5 = load i32, i32* @BS_CTRL, align 4
  %6 = call i32 @READ_REG(%struct.ubsec_softc* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @BS_CTRL_BE32, align 4
  %8 = load i32, i32* @BS_CTRL_BE64, align 4
  %9 = or i32 %7, %8
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @BS_CTRL_LITTLE_ENDIAN, align 4
  %14 = load i32, i32* @BS_CTRL_MCR1INT, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load %struct.ubsec_softc*, %struct.ubsec_softc** %2, align 8
  %19 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @UBS_FLAGS_KEY, align 4
  %22 = load i32, i32* @UBS_FLAGS_RNG, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load i32, i32* @BS_CTRL_MCR2INT, align 4
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %35

30:                                               ; preds = %1
  %31 = load i32, i32* @BS_CTRL_MCR2INT, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %30, %26
  %36 = load %struct.ubsec_softc*, %struct.ubsec_softc** %2, align 8
  %37 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @UBS_FLAGS_HWNORM, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load i32, i32* @BS_CTRL_SWNORM, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %3, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %42, %35
  %48 = load %struct.ubsec_softc*, %struct.ubsec_softc** %2, align 8
  %49 = load i32, i32* @BS_CTRL, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @WRITE_REG(%struct.ubsec_softc* %48, i32 %49, i32 %50)
  ret void
}

declare dso_local i32 @READ_REG(%struct.ubsec_softc*, i32) #1

declare dso_local i32 @WRITE_REG(%struct.ubsec_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
