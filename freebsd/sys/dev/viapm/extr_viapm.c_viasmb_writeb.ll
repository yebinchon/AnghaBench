; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/viapm/extr_viapm.c_viasmb_writeb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/viapm/extr_viapm.c_viasmb_writeb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.viapm_softc = type { i32 }

@SMB_EBUSY = common dso_local global i32 0, align 4
@SMBHADDR = common dso_local global i32 0, align 4
@LSB = common dso_local global i32 0, align 4
@SMBHCMD = common dso_local global i32 0, align 4
@SMBHDATA0 = common dso_local global i32 0, align 4
@SMBHCTRL = common dso_local global i32 0, align 4
@SMBHCTRL_START = common dso_local global i8 0, align 1
@SMBHCTRL_BYTE = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [56 x i8] c"viapm: WRITEB to 0x%x, cmd=0x%x, byte=0x%x, error=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8, i8)* @viasmb_writeb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viasmb_writeb(i32 %0, i32 %1, i8 signext %2, i8 signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca %struct.viapm_softc*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8 %2, i8* %8, align 1
  store i8 %3, i8* %9, align 1
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
  br label %59

26:                                               ; preds = %4
  %27 = load i32, i32* @SMBHADDR, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @LSB, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = trunc i32 %31 to i8
  %33 = call i32 @VIAPM_OUTB(i32 %27, i8 signext %32)
  %34 = load i32, i32* @SMBHCMD, align 4
  %35 = load i8, i8* %8, align 1
  %36 = call i32 @VIAPM_OUTB(i32 %34, i8 signext %35)
  %37 = load i32, i32* @SMBHDATA0, align 4
  %38 = load i8, i8* %9, align 1
  %39 = call i32 @VIAPM_OUTB(i32 %37, i8 signext %38)
  %40 = load i32, i32* @SMBHCTRL, align 4
  %41 = load i8, i8* @SMBHCTRL_START, align 1
  %42 = sext i8 %41 to i32
  %43 = load i8, i8* @SMBHCTRL_BYTE, align 1
  %44 = sext i8 %43 to i32
  %45 = or i32 %42, %44
  %46 = trunc i32 %45 to i8
  %47 = call i32 @VIAPM_OUTB(i32 %40, i8 signext %46)
  %48 = load %struct.viapm_softc*, %struct.viapm_softc** %10, align 8
  %49 = call i32 @viapm_wait(%struct.viapm_softc* %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i8, i8* %8, align 1
  %52 = load i8, i8* %9, align 1
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %50, i8 signext %51, i8 signext %52, i32 %53)
  %55 = call i32 @VIAPM_DEBUG(i32 %54)
  %56 = load %struct.viapm_softc*, %struct.viapm_softc** %10, align 8
  %57 = call i32 @VIAPM_UNLOCK(%struct.viapm_softc* %56)
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %26, %22
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @VIAPM_LOCK(%struct.viapm_softc*) #1

declare dso_local i32 @viapm_clear(%struct.viapm_softc*) #1

declare dso_local i64 @viapm_busy(%struct.viapm_softc*) #1

declare dso_local i32 @VIAPM_UNLOCK(%struct.viapm_softc*) #1

declare dso_local i32 @VIAPM_OUTB(i32, i8 signext) #1

declare dso_local i32 @viapm_wait(%struct.viapm_softc*) #1

declare dso_local i32 @VIAPM_DEBUG(i32) #1

declare dso_local i32 @printf(i8*, i32, i8 signext, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
