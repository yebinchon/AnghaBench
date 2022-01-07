; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amdpm/extr_amdpm.c_amdpm_readw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amdpm/extr_amdpm.c_amdpm_readw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdpm_softc = type { i32 }

@SMB_EBUSY = common dso_local global i32 0, align 4
@AMDSMB_HSTADDR = common dso_local global i32 0, align 4
@LSB = common dso_local global i32 0, align 4
@AMDSMB_HSTCMD = common dso_local global i32 0, align 4
@AMDSMB_GLOBAL_ENABLE = common dso_local global i32 0, align 4
@AMDSMB_GE_CYC_WDATA = common dso_local global i32 0, align 4
@AMDSMB_GE_HOST_STC = common dso_local global i32 0, align 4
@SMB_ENOERR = common dso_local global i32 0, align 4
@AMDSMB_HSTDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"amdpm: READW from 0x%x, cmd=0x%x, word=0x%x, error=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8, i16*)* @amdpm_readw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdpm_readw(i32 %0, i32 %1, i8 signext %2, i16* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i16*, align 8
  %10 = alloca %struct.amdpm_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8 %2, i8* %8, align 1
  store i16* %3, i16** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @device_get_softc(i32 %13)
  %15 = inttoptr i64 %14 to %struct.amdpm_softc*
  store %struct.amdpm_softc* %15, %struct.amdpm_softc** %10, align 8
  %16 = load %struct.amdpm_softc*, %struct.amdpm_softc** %10, align 8
  %17 = call i32 @AMDPM_LOCK(%struct.amdpm_softc* %16)
  %18 = load %struct.amdpm_softc*, %struct.amdpm_softc** %10, align 8
  %19 = call i32 @amdpm_clear(%struct.amdpm_softc* %18)
  %20 = load %struct.amdpm_softc*, %struct.amdpm_softc** %10, align 8
  %21 = call i32 @amdpm_idle(%struct.amdpm_softc* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %4
  %24 = load %struct.amdpm_softc*, %struct.amdpm_softc** %10, align 8
  %25 = call i32 @AMDPM_UNLOCK(%struct.amdpm_softc* %24)
  %26 = load i32, i32* @SMB_EBUSY, align 4
  store i32 %26, i32* %5, align 4
  br label %72

27:                                               ; preds = %4
  %28 = load %struct.amdpm_softc*, %struct.amdpm_softc** %10, align 8
  %29 = load i32, i32* @AMDSMB_HSTADDR, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @LSB, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @AMDPM_SMBOUTW(%struct.amdpm_softc* %28, i32 %29, i32 %32)
  %34 = load %struct.amdpm_softc*, %struct.amdpm_softc** %10, align 8
  %35 = load i32, i32* @AMDSMB_HSTCMD, align 4
  %36 = load i8, i8* %8, align 1
  %37 = call i32 @AMDPM_SMBOUTB(%struct.amdpm_softc* %34, i32 %35, i8 signext %36)
  %38 = load %struct.amdpm_softc*, %struct.amdpm_softc** %10, align 8
  %39 = load i32, i32* @AMDSMB_GLOBAL_ENABLE, align 4
  %40 = call i8* @AMDPM_SMBINW(%struct.amdpm_softc* %38, i32 %39)
  %41 = ptrtoint i8* %40 to i32
  store i32 %41, i32* %12, align 4
  %42 = load %struct.amdpm_softc*, %struct.amdpm_softc** %10, align 8
  %43 = load i32, i32* @AMDSMB_GLOBAL_ENABLE, align 4
  %44 = load i32, i32* %12, align 4
  %45 = and i32 %44, 65528
  %46 = load i32, i32* @AMDSMB_GE_CYC_WDATA, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @AMDSMB_GE_HOST_STC, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @AMDPM_SMBOUTW(%struct.amdpm_softc* %42, i32 %43, i32 %49)
  %51 = load %struct.amdpm_softc*, %struct.amdpm_softc** %10, align 8
  %52 = call i32 @amdpm_wait(%struct.amdpm_softc* %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* @SMB_ENOERR, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %27
  %56 = load %struct.amdpm_softc*, %struct.amdpm_softc** %10, align 8
  %57 = load i32, i32* @AMDSMB_HSTDATA, align 4
  %58 = call i8* @AMDPM_SMBINW(%struct.amdpm_softc* %56, i32 %57)
  %59 = ptrtoint i8* %58 to i16
  %60 = load i16*, i16** %9, align 8
  store i16 %59, i16* %60, align 2
  br label %61

61:                                               ; preds = %55, %27
  %62 = load i32, i32* %7, align 4
  %63 = load i8, i8* %8, align 1
  %64 = load i16*, i16** %9, align 8
  %65 = load i16, i16* %64, align 2
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %62, i8 signext %63, i16 signext %65, i32 %66)
  %68 = call i32 @AMDPM_DEBUG(i32 %67)
  %69 = load %struct.amdpm_softc*, %struct.amdpm_softc** %10, align 8
  %70 = call i32 @AMDPM_UNLOCK(%struct.amdpm_softc* %69)
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %61, %23
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @AMDPM_LOCK(%struct.amdpm_softc*) #1

declare dso_local i32 @amdpm_clear(%struct.amdpm_softc*) #1

declare dso_local i32 @amdpm_idle(%struct.amdpm_softc*) #1

declare dso_local i32 @AMDPM_UNLOCK(%struct.amdpm_softc*) #1

declare dso_local i32 @AMDPM_SMBOUTW(%struct.amdpm_softc*, i32, i32) #1

declare dso_local i32 @AMDPM_SMBOUTB(%struct.amdpm_softc*, i32, i8 signext) #1

declare dso_local i8* @AMDPM_SMBINW(%struct.amdpm_softc*, i32) #1

declare dso_local i32 @amdpm_wait(%struct.amdpm_softc*) #1

declare dso_local i32 @AMDPM_DEBUG(i32) #1

declare dso_local i32 @printf(i8*, i32, i8 signext, i16 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
