; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amdpm/extr_amdpm.c_amdpm_bwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amdpm/extr_amdpm.c_amdpm_bwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdpm_softc = type { i32 }

@SMB_EINVAL = common dso_local global i32 0, align 4
@SMB_EBUSY = common dso_local global i32 0, align 4
@AMDSMB_HSTADDR = common dso_local global i32 0, align 4
@LSB = common dso_local global i32 0, align 4
@AMDSMB_HSTDATA = common dso_local global i32 0, align 4
@AMDSMB_HSTDFIFO = common dso_local global i32 0, align 4
@AMDSMB_HSTCMD = common dso_local global i32 0, align 4
@AMDSMB_GLOBAL_ENABLE = common dso_local global i32 0, align 4
@AMDSMB_GE_CYC_BLOCK = common dso_local global i32 0, align 4
@AMDSMB_GE_HOST_STC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"amdpm: WRITEBLK to 0x%x, count=0x%x, cmd=0x%x, error=0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8, i32, i8*)* @amdpm_bwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdpm_bwrite(i32 %0, i32 %1, i8 signext %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.amdpm_softc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8 %2, i8* %9, align 1
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @device_get_softc(i32 %16)
  %18 = inttoptr i64 %17 to %struct.amdpm_softc*
  store %struct.amdpm_softc* %18, %struct.amdpm_softc** %12, align 8
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* %10, align 4
  %23 = icmp sgt i32 %22, 32
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %5
  %25 = load i32, i32* @SMB_EINVAL, align 4
  store i32 %25, i32* %6, align 4
  br label %95

26:                                               ; preds = %21
  %27 = load %struct.amdpm_softc*, %struct.amdpm_softc** %12, align 8
  %28 = call i32 @AMDPM_LOCK(%struct.amdpm_softc* %27)
  %29 = load %struct.amdpm_softc*, %struct.amdpm_softc** %12, align 8
  %30 = call i32 @amdpm_clear(%struct.amdpm_softc* %29)
  %31 = load %struct.amdpm_softc*, %struct.amdpm_softc** %12, align 8
  %32 = call i32 @amdpm_idle(%struct.amdpm_softc* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %26
  %35 = load %struct.amdpm_softc*, %struct.amdpm_softc** %12, align 8
  %36 = call i32 @AMDPM_UNLOCK(%struct.amdpm_softc* %35)
  %37 = load i32, i32* @SMB_EBUSY, align 4
  store i32 %37, i32* %6, align 4
  br label %95

38:                                               ; preds = %26
  %39 = load %struct.amdpm_softc*, %struct.amdpm_softc** %12, align 8
  %40 = load i32, i32* @AMDSMB_HSTADDR, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @LSB, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = call i32 @AMDPM_SMBOUTW(%struct.amdpm_softc* %39, i32 %40, i32 %44)
  %46 = load %struct.amdpm_softc*, %struct.amdpm_softc** %12, align 8
  %47 = load i32, i32* @AMDSMB_HSTDATA, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @AMDPM_SMBOUTW(%struct.amdpm_softc* %46, i32 %47, i32 %48)
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %64, %38
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %50
  %55 = load %struct.amdpm_softc*, %struct.amdpm_softc** %12, align 8
  %56 = load i32, i32* @AMDSMB_HSTDFIFO, align 4
  %57 = load i8*, i8** %11, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = call i32 @AMDPM_SMBOUTB(%struct.amdpm_softc* %55, i32 %56, i8 signext %61)
  %63 = call i32 @DELAY(i32 2)
  br label %64

64:                                               ; preds = %54
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %13, align 4
  br label %50

67:                                               ; preds = %50
  %68 = load %struct.amdpm_softc*, %struct.amdpm_softc** %12, align 8
  %69 = load i32, i32* @AMDSMB_HSTCMD, align 4
  %70 = load i8, i8* %9, align 1
  %71 = call i32 @AMDPM_SMBOUTB(%struct.amdpm_softc* %68, i32 %69, i8 signext %70)
  %72 = load %struct.amdpm_softc*, %struct.amdpm_softc** %12, align 8
  %73 = load i32, i32* @AMDSMB_GLOBAL_ENABLE, align 4
  %74 = call i32 @AMDPM_SMBINW(%struct.amdpm_softc* %72, i32 %73)
  store i32 %74, i32* %15, align 4
  %75 = load %struct.amdpm_softc*, %struct.amdpm_softc** %12, align 8
  %76 = load i32, i32* @AMDSMB_GLOBAL_ENABLE, align 4
  %77 = load i32, i32* %15, align 4
  %78 = and i32 %77, 65528
  %79 = load i32, i32* @AMDSMB_GE_CYC_BLOCK, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @AMDSMB_GE_HOST_STC, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @AMDPM_SMBOUTW(%struct.amdpm_softc* %75, i32 %76, i32 %82)
  %84 = load %struct.amdpm_softc*, %struct.amdpm_softc** %12, align 8
  %85 = call i32 @amdpm_wait(%struct.amdpm_softc* %84)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i8, i8* %9, align 1
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %87, i8 signext %88, i32 %89)
  %91 = call i32 @AMDPM_DEBUG(i32 %90)
  %92 = load %struct.amdpm_softc*, %struct.amdpm_softc** %12, align 8
  %93 = call i32 @AMDPM_UNLOCK(%struct.amdpm_softc* %92)
  %94 = load i32, i32* %14, align 4
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %67, %34, %24
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @AMDPM_LOCK(%struct.amdpm_softc*) #1

declare dso_local i32 @amdpm_clear(%struct.amdpm_softc*) #1

declare dso_local i32 @amdpm_idle(%struct.amdpm_softc*) #1

declare dso_local i32 @AMDPM_UNLOCK(%struct.amdpm_softc*) #1

declare dso_local i32 @AMDPM_SMBOUTW(%struct.amdpm_softc*, i32, i32) #1

declare dso_local i32 @AMDPM_SMBOUTB(%struct.amdpm_softc*, i32, i8 signext) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @AMDPM_SMBINW(%struct.amdpm_softc*, i32) #1

declare dso_local i32 @amdpm_wait(%struct.amdpm_softc*) #1

declare dso_local i32 @AMDPM_DEBUG(i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
