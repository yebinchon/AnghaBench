; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_miibus_readreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_miibus_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vr_softc = type { i32 }

@VR_MIIADDR = common dso_local global i32 0, align 4
@VR_MIICMD = common dso_local global i32 0, align 4
@VR_MIICMD_READ_ENB = common dso_local global i32 0, align 4
@VR_MII_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"phy read timeout %d:%d\0A\00", align 1
@VR_MIIDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @vr_miibus_readreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vr_miibus_readreg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vr_softc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.vr_softc* @device_get_softc(i32 %9)
  store %struct.vr_softc* %10, %struct.vr_softc** %7, align 8
  %11 = load %struct.vr_softc*, %struct.vr_softc** %7, align 8
  %12 = load i32, i32* @VR_MIIADDR, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @CSR_WRITE_1(%struct.vr_softc* %11, i32 %12, i32 %13)
  %15 = load %struct.vr_softc*, %struct.vr_softc** %7, align 8
  %16 = load i32, i32* @VR_MIICMD, align 4
  %17 = load i32, i32* @VR_MIICMD_READ_ENB, align 4
  %18 = call i32 @VR_SETBIT(%struct.vr_softc* %15, i32 %16, i32 %17)
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %33, %3
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @VR_MII_TIMEOUT, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = call i32 @DELAY(i32 1)
  %25 = load %struct.vr_softc*, %struct.vr_softc** %7, align 8
  %26 = load i32, i32* @VR_MIICMD, align 4
  %27 = call i32 @CSR_READ_1(%struct.vr_softc* %25, i32 %26)
  %28 = load i32, i32* @VR_MIICMD_READ_ENB, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %36

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %19

36:                                               ; preds = %31, %19
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @VR_MII_TIMEOUT, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load %struct.vr_softc*, %struct.vr_softc** %7, align 8
  %42 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %40, %36
  %48 = load %struct.vr_softc*, %struct.vr_softc** %7, align 8
  %49 = load i32, i32* @VR_MIIDATA, align 4
  %50 = call i32 @CSR_READ_2(%struct.vr_softc* %48, i32 %49)
  ret i32 %50
}

declare dso_local %struct.vr_softc* @device_get_softc(i32) #1

declare dso_local i32 @CSR_WRITE_1(%struct.vr_softc*, i32, i32) #1

declare dso_local i32 @VR_SETBIT(%struct.vr_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CSR_READ_1(%struct.vr_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @CSR_READ_2(%struct.vr_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
