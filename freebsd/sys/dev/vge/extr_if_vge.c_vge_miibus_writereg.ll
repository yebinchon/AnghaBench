; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_miibus_writereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_miibus_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vge_softc = type { i32 }

@VGE_MIIADDR = common dso_local global i32 0, align 4
@VGE_MIIDATA = common dso_local global i32 0, align 4
@VGE_MIICMD = common dso_local global i32 0, align 4
@VGE_MIICMD_WCMD = common dso_local global i32 0, align 4
@VGE_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"MII write timed out\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @vge_miibus_writereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vge_miibus_writereg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vge_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.vge_softc* @device_get_softc(i32 %12)
  store %struct.vge_softc* %13, %struct.vge_softc** %9, align 8
  %14 = load %struct.vge_softc*, %struct.vge_softc** %9, align 8
  %15 = call i32 @vge_miipoll_stop(%struct.vge_softc* %14)
  %16 = load %struct.vge_softc*, %struct.vge_softc** %9, align 8
  %17 = load i32, i32* @VGE_MIIADDR, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @CSR_WRITE_1(%struct.vge_softc* %16, i32 %17, i32 %18)
  %20 = load %struct.vge_softc*, %struct.vge_softc** %9, align 8
  %21 = load i32, i32* @VGE_MIIDATA, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @CSR_WRITE_2(%struct.vge_softc* %20, i32 %21, i32 %22)
  %24 = load %struct.vge_softc*, %struct.vge_softc** %9, align 8
  %25 = load i32, i32* @VGE_MIICMD, align 4
  %26 = load i32, i32* @VGE_MIICMD_WCMD, align 4
  %27 = call i32 @CSR_SETBIT_1(%struct.vge_softc* %24, i32 %25, i32 %26)
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %42, %4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @VGE_TIMEOUT, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = call i32 @DELAY(i32 1)
  %34 = load %struct.vge_softc*, %struct.vge_softc** %9, align 8
  %35 = load i32, i32* @VGE_MIICMD, align 4
  %36 = call i32 @CSR_READ_1(%struct.vge_softc* %34, i32 %35)
  %37 = load i32, i32* @VGE_MIICMD_WCMD, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %45

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %28

45:                                               ; preds = %40, %28
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @VGE_TIMEOUT, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load %struct.vge_softc*, %struct.vge_softc** %9, align 8
  %51 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @device_printf(i32 %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EIO, align 4
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %49, %45
  %56 = load %struct.vge_softc*, %struct.vge_softc** %9, align 8
  %57 = call i32 @vge_miipoll_start(%struct.vge_softc* %56)
  %58 = load i32, i32* %11, align 4
  ret i32 %58
}

declare dso_local %struct.vge_softc* @device_get_softc(i32) #1

declare dso_local i32 @vge_miipoll_stop(%struct.vge_softc*) #1

declare dso_local i32 @CSR_WRITE_1(%struct.vge_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.vge_softc*, i32, i32) #1

declare dso_local i32 @CSR_SETBIT_1(%struct.vge_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CSR_READ_1(%struct.vge_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @vge_miipoll_start(%struct.vge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
