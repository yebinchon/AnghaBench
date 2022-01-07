; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axe.c_axe_miibus_writereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axe.c_axe_miibus_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axe_softc = type { i32 }

@AXE_CMD_MII_OPMODE_SW = common dso_local global i32 0, align 4
@AXE_CMD_MII_WRITE_REG = common dso_local global i32 0, align 4
@AXE_CMD_MII_OPMODE_HW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @axe_miibus_writereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axe_miibus_writereg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.axe_softc*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.axe_softc* @device_get_softc(i32 %11)
  store %struct.axe_softc* %12, %struct.axe_softc** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @htole32(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.axe_softc*, %struct.axe_softc** %9, align 8
  %16 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %15, i32 0, i32 0
  %17 = call i32 @mtx_owned(i32* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load %struct.axe_softc*, %struct.axe_softc** %9, align 8
  %22 = call i32 @AXE_LOCK(%struct.axe_softc* %21)
  br label %23

23:                                               ; preds = %20, %4
  %24 = load %struct.axe_softc*, %struct.axe_softc** %9, align 8
  %25 = load i32, i32* @AXE_CMD_MII_OPMODE_SW, align 4
  %26 = call i32 @axe_cmd(%struct.axe_softc* %24, i32 %25, i32 0, i32 0, i32* null)
  %27 = load %struct.axe_softc*, %struct.axe_softc** %9, align 8
  %28 = load i32, i32* @AXE_CMD_MII_WRITE_REG, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @axe_cmd(%struct.axe_softc* %27, i32 %28, i32 %29, i32 %30, i32* %8)
  %32 = load %struct.axe_softc*, %struct.axe_softc** %9, align 8
  %33 = load i32, i32* @AXE_CMD_MII_OPMODE_HW, align 4
  %34 = call i32 @axe_cmd(%struct.axe_softc* %32, i32 %33, i32 0, i32 0, i32* null)
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %23
  %38 = load %struct.axe_softc*, %struct.axe_softc** %9, align 8
  %39 = call i32 @AXE_UNLOCK(%struct.axe_softc* %38)
  br label %40

40:                                               ; preds = %37, %23
  ret i32 0
}

declare dso_local %struct.axe_softc* @device_get_softc(i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @mtx_owned(i32*) #1

declare dso_local i32 @AXE_LOCK(%struct.axe_softc*) #1

declare dso_local i32 @axe_cmd(%struct.axe_softc*, i32, i32, i32, i32*) #1

declare dso_local i32 @AXE_UNLOCK(%struct.axe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
