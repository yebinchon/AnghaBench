; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amdpm/extr_amdpm.c_amdpm_sendb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amdpm/extr_amdpm.c_amdpm_sendb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdpm_softc = type { i32 }

@SMB_EBUSY = common dso_local global i32 0, align 4
@AMDSMB_HSTADDR = common dso_local global i32 0, align 4
@LSB = common dso_local global i32 0, align 4
@AMDSMB_HSTDATA = common dso_local global i32 0, align 4
@AMDSMB_GLOBAL_ENABLE = common dso_local global i32 0, align 4
@AMDSMB_GE_CYC_BYTE = common dso_local global i32 0, align 4
@AMDSMB_GE_HOST_STC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"amdpm: SENDB to 0x%x, byte=0x%x, error=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8)* @amdpm_sendb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdpm_sendb(i32 %0, i32 %1, i8 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.amdpm_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @device_get_softc(i32 %11)
  %13 = inttoptr i64 %12 to %struct.amdpm_softc*
  store %struct.amdpm_softc* %13, %struct.amdpm_softc** %8, align 8
  %14 = load %struct.amdpm_softc*, %struct.amdpm_softc** %8, align 8
  %15 = call i32 @AMDPM_LOCK(%struct.amdpm_softc* %14)
  %16 = load %struct.amdpm_softc*, %struct.amdpm_softc** %8, align 8
  %17 = call i32 @amdpm_clear(%struct.amdpm_softc* %16)
  %18 = load %struct.amdpm_softc*, %struct.amdpm_softc** %8, align 8
  %19 = call i32 @amdpm_idle(%struct.amdpm_softc* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load %struct.amdpm_softc*, %struct.amdpm_softc** %8, align 8
  %23 = call i32 @AMDPM_UNLOCK(%struct.amdpm_softc* %22)
  %24 = load i32, i32* @SMB_EBUSY, align 4
  store i32 %24, i32* %4, align 4
  br label %60

25:                                               ; preds = %3
  %26 = load %struct.amdpm_softc*, %struct.amdpm_softc** %8, align 8
  %27 = load i32, i32* @AMDSMB_HSTADDR, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @LSB, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = call i32 @AMDPM_SMBOUTW(%struct.amdpm_softc* %26, i32 %27, i32 %31)
  %33 = load %struct.amdpm_softc*, %struct.amdpm_softc** %8, align 8
  %34 = load i32, i32* @AMDSMB_HSTDATA, align 4
  %35 = load i8, i8* %7, align 1
  %36 = sext i8 %35 to i32
  %37 = call i32 @AMDPM_SMBOUTW(%struct.amdpm_softc* %33, i32 %34, i32 %36)
  %38 = load %struct.amdpm_softc*, %struct.amdpm_softc** %8, align 8
  %39 = load i32, i32* @AMDSMB_GLOBAL_ENABLE, align 4
  %40 = call i32 @AMDPM_SMBINW(%struct.amdpm_softc* %38, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load %struct.amdpm_softc*, %struct.amdpm_softc** %8, align 8
  %42 = load i32, i32* @AMDSMB_GLOBAL_ENABLE, align 4
  %43 = load i32, i32* %10, align 4
  %44 = and i32 %43, 65528
  %45 = load i32, i32* @AMDSMB_GE_CYC_BYTE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @AMDSMB_GE_HOST_STC, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @AMDPM_SMBOUTW(%struct.amdpm_softc* %41, i32 %42, i32 %48)
  %50 = load %struct.amdpm_softc*, %struct.amdpm_softc** %8, align 8
  %51 = call i32 @amdpm_wait(%struct.amdpm_softc* %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i8, i8* %7, align 1
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %52, i8 signext %53, i32 %54)
  %56 = call i32 @AMDPM_DEBUG(i32 %55)
  %57 = load %struct.amdpm_softc*, %struct.amdpm_softc** %8, align 8
  %58 = call i32 @AMDPM_UNLOCK(%struct.amdpm_softc* %57)
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %25, %21
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @AMDPM_LOCK(%struct.amdpm_softc*) #1

declare dso_local i32 @amdpm_clear(%struct.amdpm_softc*) #1

declare dso_local i32 @amdpm_idle(%struct.amdpm_softc*) #1

declare dso_local i32 @AMDPM_UNLOCK(%struct.amdpm_softc*) #1

declare dso_local i32 @AMDPM_SMBOUTW(%struct.amdpm_softc*, i32, i32) #1

declare dso_local i32 @AMDPM_SMBINW(%struct.amdpm_softc*, i32) #1

declare dso_local i32 @amdpm_wait(%struct.amdpm_softc*) #1

declare dso_local i32 @AMDPM_DEBUG(i32) #1

declare dso_local i32 @printf(i8*, i32, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
