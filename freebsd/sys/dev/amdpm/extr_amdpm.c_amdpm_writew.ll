; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amdpm/extr_amdpm.c_amdpm_writew.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amdpm/extr_amdpm.c_amdpm_writew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdpm_softc = type { i32 }

@SMB_EBUSY = common dso_local global i32 0, align 4
@AMDSMB_HSTADDR = common dso_local global i32 0, align 4
@LSB = common dso_local global i32 0, align 4
@AMDSMB_HSTDATA = common dso_local global i32 0, align 4
@AMDSMB_HSTCMD = common dso_local global i32 0, align 4
@AMDSMB_GLOBAL_ENABLE = common dso_local global i32 0, align 4
@AMDSMB_GE_CYC_WDATA = common dso_local global i32 0, align 4
@AMDSMB_GE_HOST_STC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"amdpm: WRITEW to 0x%x, cmd=0x%x, word=0x%x, error=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8, i16)* @amdpm_writew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdpm_writew(i32 %0, i32 %1, i8 signext %2, i16 signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i16, align 2
  %10 = alloca %struct.amdpm_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8 %2, i8* %8, align 1
  store i16 %3, i16* %9, align 2
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
  br label %67

27:                                               ; preds = %4
  %28 = load %struct.amdpm_softc*, %struct.amdpm_softc** %10, align 8
  %29 = load i32, i32* @AMDSMB_HSTADDR, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @LSB, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = call i32 @AMDPM_SMBOUTW(%struct.amdpm_softc* %28, i32 %29, i32 %33)
  %35 = load %struct.amdpm_softc*, %struct.amdpm_softc** %10, align 8
  %36 = load i32, i32* @AMDSMB_HSTDATA, align 4
  %37 = load i16, i16* %9, align 2
  %38 = sext i16 %37 to i32
  %39 = call i32 @AMDPM_SMBOUTW(%struct.amdpm_softc* %35, i32 %36, i32 %38)
  %40 = load %struct.amdpm_softc*, %struct.amdpm_softc** %10, align 8
  %41 = load i32, i32* @AMDSMB_HSTCMD, align 4
  %42 = load i8, i8* %8, align 1
  %43 = call i32 @AMDPM_SMBOUTB(%struct.amdpm_softc* %40, i32 %41, i8 signext %42)
  %44 = load %struct.amdpm_softc*, %struct.amdpm_softc** %10, align 8
  %45 = load i32, i32* @AMDSMB_GLOBAL_ENABLE, align 4
  %46 = call i32 @AMDPM_SMBINW(%struct.amdpm_softc* %44, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load %struct.amdpm_softc*, %struct.amdpm_softc** %10, align 8
  %48 = load i32, i32* @AMDSMB_GLOBAL_ENABLE, align 4
  %49 = load i32, i32* %12, align 4
  %50 = and i32 %49, 65528
  %51 = load i32, i32* @AMDSMB_GE_CYC_WDATA, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @AMDSMB_GE_HOST_STC, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @AMDPM_SMBOUTW(%struct.amdpm_softc* %47, i32 %48, i32 %54)
  %56 = load %struct.amdpm_softc*, %struct.amdpm_softc** %10, align 8
  %57 = call i32 @amdpm_wait(%struct.amdpm_softc* %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i8, i8* %8, align 1
  %60 = load i16, i16* %9, align 2
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %58, i8 signext %59, i16 signext %60, i32 %61)
  %63 = call i32 @AMDPM_DEBUG(i32 %62)
  %64 = load %struct.amdpm_softc*, %struct.amdpm_softc** %10, align 8
  %65 = call i32 @AMDPM_UNLOCK(%struct.amdpm_softc* %64)
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %27, %23
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @AMDPM_LOCK(%struct.amdpm_softc*) #1

declare dso_local i32 @amdpm_clear(%struct.amdpm_softc*) #1

declare dso_local i32 @amdpm_idle(%struct.amdpm_softc*) #1

declare dso_local i32 @AMDPM_UNLOCK(%struct.amdpm_softc*) #1

declare dso_local i32 @AMDPM_SMBOUTW(%struct.amdpm_softc*, i32, i32) #1

declare dso_local i32 @AMDPM_SMBOUTB(%struct.amdpm_softc*, i32, i8 signext) #1

declare dso_local i32 @AMDPM_SMBINW(%struct.amdpm_softc*, i32) #1

declare dso_local i32 @amdpm_wait(%struct.amdpm_softc*) #1

declare dso_local i32 @AMDPM_DEBUG(i32) #1

declare dso_local i32 @printf(i8*, i32, i8 signext, i16 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
