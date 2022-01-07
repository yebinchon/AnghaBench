; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/viapm/extr_viapm.c_viasmb_readb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/viapm/extr_viapm.c_viasmb_readb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.viapm_softc = type { i32 }

@SMB_EBUSY = common dso_local global i32 0, align 4
@SMBHADDR = common dso_local global i32 0, align 4
@LSB = common dso_local global i32 0, align 4
@SMBHCMD = common dso_local global i32 0, align 4
@SMBHCTRL = common dso_local global i32 0, align 4
@SMBHCTRL_START = common dso_local global i8 0, align 1
@SMBHCTRL_BYTE = common dso_local global i8 0, align 1
@SMB_ENOERR = common dso_local global i32 0, align 4
@SMBHDATA0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"viapm: READB from 0x%x, cmd=0x%x, byte=0x%x, error=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8, i8*)* @viasmb_readb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viasmb_readb(i32 %0, i32 %1, i8 signext %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca %struct.viapm_softc*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8 %2, i8* %8, align 1
  store i8* %3, i8** %9, align 8
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
  br label %63

26:                                               ; preds = %4
  %27 = load i32, i32* @SMBHADDR, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @LSB, align 4
  %30 = or i32 %28, %29
  %31 = trunc i32 %30 to i8
  %32 = call i32 @VIAPM_OUTB(i32 %27, i8 signext %31)
  %33 = load i32, i32* @SMBHCMD, align 4
  %34 = load i8, i8* %8, align 1
  %35 = call i32 @VIAPM_OUTB(i32 %33, i8 signext %34)
  %36 = load i32, i32* @SMBHCTRL, align 4
  %37 = load i8, i8* @SMBHCTRL_START, align 1
  %38 = sext i8 %37 to i32
  %39 = load i8, i8* @SMBHCTRL_BYTE, align 1
  %40 = sext i8 %39 to i32
  %41 = or i32 %38, %40
  %42 = trunc i32 %41 to i8
  %43 = call i32 @VIAPM_OUTB(i32 %36, i8 signext %42)
  %44 = load %struct.viapm_softc*, %struct.viapm_softc** %10, align 8
  %45 = call i32 @viapm_wait(%struct.viapm_softc* %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* @SMB_ENOERR, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %26
  %49 = load i32, i32* @SMBHDATA0, align 4
  %50 = call signext i8 @VIAPM_INB(i32 %49)
  %51 = load i8*, i8** %9, align 8
  store i8 %50, i8* %51, align 1
  br label %52

52:                                               ; preds = %48, %26
  %53 = load i32, i32* %7, align 4
  %54 = load i8, i8* %8, align 1
  %55 = load i8*, i8** %9, align 8
  %56 = load i8, i8* %55, align 1
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %53, i8 signext %54, i8 signext %56, i32 %57)
  %59 = call i32 @VIAPM_DEBUG(i32 %58)
  %60 = load %struct.viapm_softc*, %struct.viapm_softc** %10, align 8
  %61 = call i32 @VIAPM_UNLOCK(%struct.viapm_softc* %60)
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %52, %22
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @VIAPM_LOCK(%struct.viapm_softc*) #1

declare dso_local i32 @viapm_clear(%struct.viapm_softc*) #1

declare dso_local i64 @viapm_busy(%struct.viapm_softc*) #1

declare dso_local i32 @VIAPM_UNLOCK(%struct.viapm_softc*) #1

declare dso_local i32 @VIAPM_OUTB(i32, i8 signext) #1

declare dso_local i32 @viapm_wait(%struct.viapm_softc*) #1

declare dso_local signext i8 @VIAPM_INB(i32) #1

declare dso_local i32 @VIAPM_DEBUG(i32) #1

declare dso_local i32 @printf(i8*, i32, i8 signext, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
