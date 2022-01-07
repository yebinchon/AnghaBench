; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_if_are.c_are_miibus_writereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_if_are.c_are_miibus_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.are_softc = type { i32 }

@CSR_MIIDATA = common dso_local global i32 0, align 4
@MIIADDR_PHY_SHIFT = common dso_local global i32 0, align 4
@MIIADDR_REG_SHIFT = common dso_local global i32 0, align 4
@MIIADDR_WRITE = common dso_local global i32 0, align 4
@CSR_MIIADDR = common dso_local global i32 0, align 4
@MIIADDR_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @are_miibus_writereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @are_miibus_writereg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.are_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.are_softc* @device_get_softc(i32 %12)
  store %struct.are_softc* %13, %struct.are_softc** %9, align 8
  %14 = load %struct.are_softc*, %struct.are_softc** %9, align 8
  %15 = load i32, i32* @CSR_MIIDATA, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @CSR_WRITE_4(%struct.are_softc* %14, i32 %15, i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @MIIADDR_PHY_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @MIIADDR_REG_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = or i32 %20, %23
  %25 = load i32, i32* @MIIADDR_WRITE, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load %struct.are_softc*, %struct.are_softc** %9, align 8
  %28 = load i32, i32* @CSR_MIIADDR, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @CSR_WRITE_4(%struct.are_softc* %27, i32 %28, i32 %29)
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %43, %4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 100000000
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load %struct.are_softc*, %struct.are_softc** %9, align 8
  %36 = load i32, i32* @CSR_MIIADDR, align 4
  %37 = call i32 @CSR_READ_4(%struct.are_softc* %35, i32 %36)
  %38 = load i32, i32* @MIIADDR_BUSY, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %46

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %31

46:                                               ; preds = %41, %31
  ret i32 0
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
