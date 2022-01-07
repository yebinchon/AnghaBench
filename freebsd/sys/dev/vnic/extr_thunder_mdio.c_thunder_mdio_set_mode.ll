; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_mdio.c_thunder_mdio_set_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_mdio.c_thunder_mdio_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thunder_mdio_softc = type { i32 }

@SMI_CLK = common dso_local global i32 0, align 4
@MODE_IEEE_C22 = common dso_local global i32 0, align 4
@SMI_CLK_MODE = common dso_local global i32 0, align 4
@SMI_CLK_PREAMBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thunder_mdio_softc*, i32)* @thunder_mdio_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thunder_mdio_set_mode(%struct.thunder_mdio_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.thunder_mdio_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.thunder_mdio_softc* %0, %struct.thunder_mdio_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.thunder_mdio_softc*, %struct.thunder_mdio_softc** %3, align 8
  %7 = getelementptr inbounds %struct.thunder_mdio_softc, %struct.thunder_mdio_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %39

12:                                               ; preds = %2
  %13 = load %struct.thunder_mdio_softc*, %struct.thunder_mdio_softc** %3, align 8
  %14 = load i32, i32* @SMI_CLK, align 4
  %15 = call i32 @mdio_reg_read(%struct.thunder_mdio_softc* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @MODE_IEEE_C22, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load i32, i32* @SMI_CLK_MODE, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %28

24:                                               ; preds = %12
  %25 = load i32, i32* @SMI_CLK_MODE, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %24, %19
  %29 = load i32, i32* @SMI_CLK_PREAMBLE, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load %struct.thunder_mdio_softc*, %struct.thunder_mdio_softc** %3, align 8
  %33 = load i32, i32* @SMI_CLK, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @mdio_reg_write(%struct.thunder_mdio_softc* %32, i32 %33, i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.thunder_mdio_softc*, %struct.thunder_mdio_softc** %3, align 8
  %38 = getelementptr inbounds %struct.thunder_mdio_softc, %struct.thunder_mdio_softc* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %28, %11
  ret void
}

declare dso_local i32 @mdio_reg_read(%struct.thunder_mdio_softc*, i32) #1

declare dso_local i32 @mdio_reg_write(%struct.thunder_mdio_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
