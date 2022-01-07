; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_miibus_writereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_miibus_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vr_softc = type { i32 }

@VR_MIIADDR = common dso_local global i32 0, align 4
@VR_MIIDATA = common dso_local global i32 0, align 4
@VR_MIICMD = common dso_local global i32 0, align 4
@VR_MIICMD_WRITE_ENB = common dso_local global i32 0, align 4
@VR_MII_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"phy write timeout %d:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @vr_miibus_writereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vr_miibus_writereg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vr_softc*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.vr_softc* @device_get_softc(i32 %11)
  store %struct.vr_softc* %12, %struct.vr_softc** %9, align 8
  %13 = load %struct.vr_softc*, %struct.vr_softc** %9, align 8
  %14 = load i32, i32* @VR_MIIADDR, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @CSR_WRITE_1(%struct.vr_softc* %13, i32 %14, i32 %15)
  %17 = load %struct.vr_softc*, %struct.vr_softc** %9, align 8
  %18 = load i32, i32* @VR_MIIDATA, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @CSR_WRITE_2(%struct.vr_softc* %17, i32 %18, i32 %19)
  %21 = load %struct.vr_softc*, %struct.vr_softc** %9, align 8
  %22 = load i32, i32* @VR_MIICMD, align 4
  %23 = load i32, i32* @VR_MIICMD_WRITE_ENB, align 4
  %24 = call i32 @VR_SETBIT(%struct.vr_softc* %21, i32 %22, i32 %23)
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %39, %4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @VR_MII_TIMEOUT, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = call i32 @DELAY(i32 1)
  %31 = load %struct.vr_softc*, %struct.vr_softc** %9, align 8
  %32 = load i32, i32* @VR_MIICMD, align 4
  %33 = call i32 @CSR_READ_1(%struct.vr_softc* %31, i32 %32)
  %34 = load i32, i32* @VR_MIICMD_WRITE_ENB, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %42

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %25

42:                                               ; preds = %37, %25
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @VR_MII_TIMEOUT, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load %struct.vr_softc*, %struct.vr_softc** %9, align 8
  %48 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %46, %42
  ret i32 0
}

declare dso_local %struct.vr_softc* @device_get_softc(i32) #1

declare dso_local i32 @CSR_WRITE_1(%struct.vr_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.vr_softc*, i32, i32) #1

declare dso_local i32 @VR_SETBIT(%struct.vr_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CSR_READ_1(%struct.vr_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
