; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/viapm/extr_viapm.c_viasmb_writew.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/viapm/extr_viapm.c_viasmb_writew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.viapm_softc = type { i32 }

@SMB_EBUSY = common dso_local global i32 0, align 4
@SMBHADDR = common dso_local global i32 0, align 4
@LSB = common dso_local global i32 0, align 4
@SMBHCMD = common dso_local global i32 0, align 4
@SMBHDATA0 = common dso_local global i32 0, align 4
@SMBHDATA1 = common dso_local global i32 0, align 4
@SMBHCTRL = common dso_local global i32 0, align 4
@SMBHCTRL_START = common dso_local global i16 0, align 2
@SMBHCTRL_WORD = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [56 x i8] c"viapm: WRITEW to 0x%x, cmd=0x%x, word=0x%x, error=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8, i16)* @viasmb_writew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viasmb_writew(i32 %0, i32 %1, i8 signext %2, i16 signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i16, align 2
  %10 = alloca %struct.viapm_softc*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8 %2, i8* %8, align 1
  store i16 %3, i16* %9, align 2
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @device_get_softc(i32 %12)
  %14 = inttoptr i64 %13 to %struct.viapm_softc*
  store %struct.viapm_softc* %14, %struct.viapm_softc** %10, align 8
  %15 = load %struct.viapm_softc*, %struct.viapm_softc** %10, align 8
  %16 = call i32 @VIAPM_LOCK(%struct.viapm_softc* %15)
  %17 = load %struct.viapm_softc*, %struct.viapm_softc** %10, align 8
  %18 = call i32 @viapm_clear(%struct.viapm_softc* %17)
  %19 = load %struct.viapm_softc*, %struct.viapm_softc** %10, align 8
  %20 = call i64 @viapm_busy(%struct.viapm_softc* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load %struct.viapm_softc*, %struct.viapm_softc** %10, align 8
  %24 = call i32 @VIAPM_UNLOCK(%struct.viapm_softc* %23)
  %25 = load i32, i32* @SMB_EBUSY, align 4
  store i32 %25, i32* %5, align 4
  br label %70

26:                                               ; preds = %4
  %27 = load i32, i32* @SMBHADDR, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @LSB, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = trunc i32 %31 to i16
  %33 = call i32 @VIAPM_OUTB(i32 %27, i16 signext %32)
  %34 = load i32, i32* @SMBHCMD, align 4
  %35 = load i8, i8* %8, align 1
  %36 = sext i8 %35 to i16
  %37 = call i32 @VIAPM_OUTB(i32 %34, i16 signext %36)
  %38 = load i32, i32* @SMBHDATA0, align 4
  %39 = load i16, i16* %9, align 2
  %40 = sext i16 %39 to i32
  %41 = and i32 %40, 255
  %42 = trunc i32 %41 to i16
  %43 = call i32 @VIAPM_OUTB(i32 %38, i16 signext %42)
  %44 = load i32, i32* @SMBHDATA1, align 4
  %45 = load i16, i16* %9, align 2
  %46 = sext i16 %45 to i32
  %47 = and i32 %46, 65280
  %48 = ashr i32 %47, 8
  %49 = trunc i32 %48 to i16
  %50 = call i32 @VIAPM_OUTB(i32 %44, i16 signext %49)
  %51 = load i32, i32* @SMBHCTRL, align 4
  %52 = load i16, i16* @SMBHCTRL_START, align 2
  %53 = sext i16 %52 to i32
  %54 = load i16, i16* @SMBHCTRL_WORD, align 2
  %55 = sext i16 %54 to i32
  %56 = or i32 %53, %55
  %57 = trunc i32 %56 to i16
  %58 = call i32 @VIAPM_OUTB(i32 %51, i16 signext %57)
  %59 = load %struct.viapm_softc*, %struct.viapm_softc** %10, align 8
  %60 = call i32 @viapm_wait(%struct.viapm_softc* %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i8, i8* %8, align 1
  %63 = load i16, i16* %9, align 2
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %61, i8 signext %62, i16 signext %63, i32 %64)
  %66 = call i32 @VIAPM_DEBUG(i32 %65)
  %67 = load %struct.viapm_softc*, %struct.viapm_softc** %10, align 8
  %68 = call i32 @VIAPM_UNLOCK(%struct.viapm_softc* %67)
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %26, %22
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @VIAPM_LOCK(%struct.viapm_softc*) #1

declare dso_local i32 @viapm_clear(%struct.viapm_softc*) #1

declare dso_local i64 @viapm_busy(%struct.viapm_softc*) #1

declare dso_local i32 @VIAPM_UNLOCK(%struct.viapm_softc*) #1

declare dso_local i32 @VIAPM_OUTB(i32, i16 signext) #1

declare dso_local i32 @viapm_wait(%struct.viapm_softc*) #1

declare dso_local i32 @VIAPM_DEBUG(i32) #1

declare dso_local i32 @printf(i8*, i32, i8 signext, i16 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
