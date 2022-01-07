; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_if_are.c_are_miibus_readreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_if_are.c_are_miibus_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.are_softc = type { i32 }

@MIIADDR_PHY_SHIFT = common dso_local global i32 0, align 4
@MIIADDR_REG_SHIFT = common dso_local global i32 0, align 4
@CSR_MIIADDR = common dso_local global i32 0, align 4
@MIIADDR_BUSY = common dso_local global i32 0, align 4
@CSR_MIIDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @are_miibus_readreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @are_miibus_readreg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.are_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.are_softc* @device_get_softc(i32 %10)
  store %struct.are_softc* %11, %struct.are_softc** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MIIADDR_PHY_SHIFT, align 4
  %14 = shl i32 %12, %13
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @MIIADDR_REG_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = or i32 %14, %17
  store i32 %18, i32* %8, align 4
  %19 = load %struct.are_softc*, %struct.are_softc** %7, align 8
  %20 = load i32, i32* @CSR_MIIADDR, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @CSR_WRITE_4(%struct.are_softc* %19, i32 %20, i32 %21)
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %35, %3
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 100000000
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load %struct.are_softc*, %struct.are_softc** %7, align 8
  %28 = load i32, i32* @CSR_MIIADDR, align 4
  %29 = call i32 @CSR_READ_4(%struct.are_softc* %27, i32 %28)
  %30 = load i32, i32* @MIIADDR_BUSY, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %38

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %23

38:                                               ; preds = %33, %23
  %39 = load %struct.are_softc*, %struct.are_softc** %7, align 8
  %40 = load i32, i32* @CSR_MIIDATA, align 4
  %41 = call i32 @CSR_READ_4(%struct.are_softc* %39, i32 %40)
  %42 = and i32 %41, 65535
  ret i32 %42
}

declare dso_local %struct.are_softc* @device_get_softc(i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.are_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.are_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
