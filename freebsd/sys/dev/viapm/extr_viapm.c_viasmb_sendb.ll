; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/viapm/extr_viapm.c_viasmb_sendb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/viapm/extr_viapm.c_viasmb_sendb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.viapm_softc = type { i32 }

@SMB_EBUSY = common dso_local global i32 0, align 4
@SMBHADDR = common dso_local global i32 0, align 4
@LSB = common dso_local global i32 0, align 4
@SMBHCMD = common dso_local global i32 0, align 4
@SMBHCTRL = common dso_local global i32 0, align 4
@SMBHCTRL_START = common dso_local global i8 0, align 1
@SMBHCTRL_SENDRECV = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [45 x i8] c"viapm: SENDB to 0x%x, byte=0x%x, error=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8)* @viasmb_sendb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viasmb_sendb(i32 %0, i32 %1, i8 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.viapm_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @device_get_softc(i32 %10)
  %12 = inttoptr i64 %11 to %struct.viapm_softc*
  store %struct.viapm_softc* %12, %struct.viapm_softc** %8, align 8
  %13 = load %struct.viapm_softc*, %struct.viapm_softc** %8, align 8
  %14 = call i32 @VIAPM_LOCK(%struct.viapm_softc* %13)
  %15 = load %struct.viapm_softc*, %struct.viapm_softc** %8, align 8
  %16 = call i32 @viapm_clear(%struct.viapm_softc* %15)
  %17 = load %struct.viapm_softc*, %struct.viapm_softc** %8, align 8
  %18 = call i64 @viapm_busy(%struct.viapm_softc* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.viapm_softc*, %struct.viapm_softc** %8, align 8
  %22 = call i32 @VIAPM_UNLOCK(%struct.viapm_softc* %21)
  %23 = load i32, i32* @SMB_EBUSY, align 4
  store i32 %23, i32* %4, align 4
  br label %53

24:                                               ; preds = %3
  %25 = load i32, i32* @SMBHADDR, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @LSB, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = trunc i32 %29 to i8
  %31 = call i32 @VIAPM_OUTB(i32 %25, i8 signext %30)
  %32 = load i32, i32* @SMBHCMD, align 4
  %33 = load i8, i8* %7, align 1
  %34 = call i32 @VIAPM_OUTB(i32 %32, i8 signext %33)
  %35 = load i32, i32* @SMBHCTRL, align 4
  %36 = load i8, i8* @SMBHCTRL_START, align 1
  %37 = sext i8 %36 to i32
  %38 = load i8, i8* @SMBHCTRL_SENDRECV, align 1
  %39 = sext i8 %38 to i32
  %40 = or i32 %37, %39
  %41 = trunc i32 %40 to i8
  %42 = call i32 @VIAPM_OUTB(i32 %35, i8 signext %41)
  %43 = load %struct.viapm_softc*, %struct.viapm_softc** %8, align 8
  %44 = call i32 @viapm_wait(%struct.viapm_softc* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i8, i8* %7, align 1
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %45, i8 signext %46, i32 %47)
  %49 = call i32 @VIAPM_DEBUG(i32 %48)
  %50 = load %struct.viapm_softc*, %struct.viapm_softc** %8, align 8
  %51 = call i32 @VIAPM_UNLOCK(%struct.viapm_softc* %50)
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %24, %20
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @VIAPM_LOCK(%struct.viapm_softc*) #1

declare dso_local i32 @viapm_clear(%struct.viapm_softc*) #1

declare dso_local i64 @viapm_busy(%struct.viapm_softc*) #1

declare dso_local i32 @VIAPM_UNLOCK(%struct.viapm_softc*) #1

declare dso_local i32 @VIAPM_OUTB(i32, i8 signext) #1

declare dso_local i32 @viapm_wait(%struct.viapm_softc*) #1

declare dso_local i32 @VIAPM_DEBUG(i32) #1

declare dso_local i32 @printf(i8*, i32, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
