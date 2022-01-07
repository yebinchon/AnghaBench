; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/viapm/extr_viapm.c_viasmb_readw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/viapm/extr_viapm.c_viasmb_readw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.viapm_softc = type { i32 }

@SMB_EBUSY = common dso_local global i32 0, align 4
@SMBHADDR = common dso_local global i32 0, align 4
@LSB = common dso_local global i32 0, align 4
@SMBHCMD = common dso_local global i32 0, align 4
@SMBHCTRL = common dso_local global i32 0, align 4
@SMBHCTRL_START = common dso_local global i8 0, align 1
@SMBHCTRL_WORD = common dso_local global i8 0, align 1
@SMB_ENOERR = common dso_local global i32 0, align 4
@SMBHDATA0 = common dso_local global i32 0, align 4
@SMBHDATA1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"viapm: READW from 0x%x, cmd=0x%x, word=0x%x, error=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8, i16*)* @viasmb_readw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viasmb_readw(i32 %0, i32 %1, i8 signext %2, i16* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i16*, align 8
  %10 = alloca %struct.viapm_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8 %2, i8* %8, align 1
  store i16* %3, i16** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @device_get_softc(i32 %14)
  %16 = inttoptr i64 %15 to %struct.viapm_softc*
  store %struct.viapm_softc* %16, %struct.viapm_softc** %10, align 8
  %17 = load %struct.viapm_softc*, %struct.viapm_softc** %10, align 8
  %18 = call i32 @VIAPM_LOCK(%struct.viapm_softc* %17)
  %19 = load %struct.viapm_softc*, %struct.viapm_softc** %10, align 8
  %20 = call i32 @viapm_clear(%struct.viapm_softc* %19)
  %21 = load %struct.viapm_softc*, %struct.viapm_softc** %10, align 8
  %22 = call i64 @viapm_busy(%struct.viapm_softc* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load %struct.viapm_softc*, %struct.viapm_softc** %10, align 8
  %26 = call i32 @VIAPM_UNLOCK(%struct.viapm_softc* %25)
  %27 = load i32, i32* @SMB_EBUSY, align 4
  store i32 %27, i32* %5, align 4
  br label %74

28:                                               ; preds = %4
  %29 = load i32, i32* @SMBHADDR, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @LSB, align 4
  %32 = or i32 %30, %31
  %33 = trunc i32 %32 to i8
  %34 = call i32 @VIAPM_OUTB(i32 %29, i8 signext %33)
  %35 = load i32, i32* @SMBHCMD, align 4
  %36 = load i8, i8* %8, align 1
  %37 = call i32 @VIAPM_OUTB(i32 %35, i8 signext %36)
  %38 = load i32, i32* @SMBHCTRL, align 4
  %39 = load i8, i8* @SMBHCTRL_START, align 1
  %40 = sext i8 %39 to i32
  %41 = load i8, i8* @SMBHCTRL_WORD, align 1
  %42 = sext i8 %41 to i32
  %43 = or i32 %40, %42
  %44 = trunc i32 %43 to i8
  %45 = call i32 @VIAPM_OUTB(i32 %38, i8 signext %44)
  %46 = load %struct.viapm_softc*, %struct.viapm_softc** %10, align 8
  %47 = call i32 @viapm_wait(%struct.viapm_softc* %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* @SMB_ENOERR, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %28
  %51 = load i32, i32* @SMBHDATA0, align 4
  %52 = call i32 @VIAPM_INB(i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* @SMBHDATA1, align 4
  %54 = call i32 @VIAPM_INB(i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = and i32 %55, 255
  %57 = shl i32 %56, 8
  %58 = load i32, i32* %13, align 4
  %59 = and i32 %58, 255
  %60 = or i32 %57, %59
  %61 = trunc i32 %60 to i16
  %62 = load i16*, i16** %9, align 8
  store i16 %61, i16* %62, align 2
  br label %63

63:                                               ; preds = %50, %28
  %64 = load i32, i32* %7, align 4
  %65 = load i8, i8* %8, align 1
  %66 = load i16*, i16** %9, align 8
  %67 = load i16, i16* %66, align 2
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %64, i8 signext %65, i16 signext %67, i32 %68)
  %70 = call i32 @VIAPM_DEBUG(i32 %69)
  %71 = load %struct.viapm_softc*, %struct.viapm_softc** %10, align 8
  %72 = call i32 @VIAPM_UNLOCK(%struct.viapm_softc* %71)
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %63, %24
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @VIAPM_LOCK(%struct.viapm_softc*) #1

declare dso_local i32 @viapm_clear(%struct.viapm_softc*) #1

declare dso_local i64 @viapm_busy(%struct.viapm_softc*) #1

declare dso_local i32 @VIAPM_UNLOCK(%struct.viapm_softc*) #1

declare dso_local i32 @VIAPM_OUTB(i32, i8 signext) #1

declare dso_local i32 @viapm_wait(%struct.viapm_softc*) #1

declare dso_local i32 @VIAPM_INB(i32) #1

declare dso_local i32 @VIAPM_DEBUG(i32) #1

declare dso_local i32 @printf(i8*, i32, i8 signext, i16 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
