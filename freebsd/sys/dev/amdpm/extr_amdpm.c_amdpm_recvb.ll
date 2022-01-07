; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amdpm/extr_amdpm.c_amdpm_recvb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amdpm/extr_amdpm.c_amdpm_recvb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdpm_softc = type { i32 }

@SMB_EBUSY = common dso_local global i32 0, align 4
@AMDSMB_HSTADDR = common dso_local global i32 0, align 4
@LSB = common dso_local global i32 0, align 4
@AMDSMB_GLOBAL_ENABLE = common dso_local global i32 0, align 4
@AMDSMB_GE_CYC_BYTE = common dso_local global i32 0, align 4
@AMDSMB_GE_HOST_STC = common dso_local global i32 0, align 4
@SMB_ENOERR = common dso_local global i32 0, align 4
@AMDSMB_HSTDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"amdpm: RECVB from 0x%x, byte=0x%x, error=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @amdpm_recvb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdpm_recvb(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.amdpm_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
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
  br label %65

25:                                               ; preds = %3
  %26 = load %struct.amdpm_softc*, %struct.amdpm_softc** %8, align 8
  %27 = load i32, i32* @AMDSMB_HSTADDR, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @LSB, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @AMDPM_SMBOUTW(%struct.amdpm_softc* %26, i32 %27, i32 %30)
  %32 = load %struct.amdpm_softc*, %struct.amdpm_softc** %8, align 8
  %33 = load i32, i32* @AMDSMB_GLOBAL_ENABLE, align 4
  %34 = call i8* @AMDPM_SMBINW(%struct.amdpm_softc* %32, i32 %33)
  %35 = ptrtoint i8* %34 to i32
  store i32 %35, i32* %10, align 4
  %36 = load %struct.amdpm_softc*, %struct.amdpm_softc** %8, align 8
  %37 = load i32, i32* @AMDSMB_GLOBAL_ENABLE, align 4
  %38 = load i32, i32* %10, align 4
  %39 = and i32 %38, 65528
  %40 = load i32, i32* @AMDSMB_GE_CYC_BYTE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @AMDSMB_GE_HOST_STC, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @AMDPM_SMBOUTW(%struct.amdpm_softc* %36, i32 %37, i32 %43)
  %45 = load %struct.amdpm_softc*, %struct.amdpm_softc** %8, align 8
  %46 = call i32 @amdpm_wait(%struct.amdpm_softc* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* @SMB_ENOERR, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %25
  %50 = load %struct.amdpm_softc*, %struct.amdpm_softc** %8, align 8
  %51 = load i32, i32* @AMDSMB_HSTDATA, align 4
  %52 = call i8* @AMDPM_SMBINW(%struct.amdpm_softc* %50, i32 %51)
  %53 = ptrtoint i8* %52 to i8
  %54 = load i8*, i8** %7, align 8
  store i8 %53, i8* %54, align 1
  br label %55

55:                                               ; preds = %49, %25
  %56 = load i32, i32* %6, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = load i8, i8* %57, align 1
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %56, i8 signext %58, i32 %59)
  %61 = call i32 @AMDPM_DEBUG(i32 %60)
  %62 = load %struct.amdpm_softc*, %struct.amdpm_softc** %8, align 8
  %63 = call i32 @AMDPM_UNLOCK(%struct.amdpm_softc* %62)
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %55, %21
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @AMDPM_LOCK(%struct.amdpm_softc*) #1

declare dso_local i32 @amdpm_clear(%struct.amdpm_softc*) #1

declare dso_local i32 @amdpm_idle(%struct.amdpm_softc*) #1

declare dso_local i32 @AMDPM_UNLOCK(%struct.amdpm_softc*) #1

declare dso_local i32 @AMDPM_SMBOUTW(%struct.amdpm_softc*, i32, i32) #1

declare dso_local i8* @AMDPM_SMBINW(%struct.amdpm_softc*, i32) #1

declare dso_local i32 @amdpm_wait(%struct.amdpm_softc*) #1

declare dso_local i32 @AMDPM_DEBUG(i32) #1

declare dso_local i32 @printf(i8*, i32, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
