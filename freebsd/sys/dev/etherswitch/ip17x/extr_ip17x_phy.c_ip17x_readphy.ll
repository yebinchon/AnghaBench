; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/ip17x/extr_ip17x_phy.c_ip17x_readphy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/ip17x/extr_ip17x_phy.c_ip17x_readphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip17x_softc = type { i32 }

@MA_NOTOWNED = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip17x_readphy(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ip17x_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.ip17x_softc* @device_get_softc(i32 %10)
  store %struct.ip17x_softc* %11, %struct.ip17x_softc** %8, align 8
  %12 = load %struct.ip17x_softc*, %struct.ip17x_softc** %8, align 8
  %13 = load i32, i32* @MA_NOTOWNED, align 4
  %14 = call i32 @IP17X_LOCK_ASSERT(%struct.ip17x_softc* %12, i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp sge i32 %18, 32
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %3
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %4, align 4
  br label %41

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = icmp sge i32 %26, 32
  br i1 %27, label %28, label %30

28:                                               ; preds = %25, %22
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %4, align 4
  br label %41

30:                                               ; preds = %25
  %31 = load %struct.ip17x_softc*, %struct.ip17x_softc** %8, align 8
  %32 = call i32 @IP17X_LOCK(%struct.ip17x_softc* %31)
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @device_get_parent(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @MDIO_READREG(i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.ip17x_softc*, %struct.ip17x_softc** %8, align 8
  %39 = call i32 @IP17X_UNLOCK(%struct.ip17x_softc* %38)
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %30, %28, %20
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.ip17x_softc* @device_get_softc(i32) #1

declare dso_local i32 @IP17X_LOCK_ASSERT(%struct.ip17x_softc*, i32) #1

declare dso_local i32 @IP17X_LOCK(%struct.ip17x_softc*) #1

declare dso_local i32 @MDIO_READREG(i32, i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @IP17X_UNLOCK(%struct.ip17x_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
