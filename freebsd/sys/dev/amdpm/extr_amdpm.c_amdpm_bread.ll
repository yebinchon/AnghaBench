; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amdpm/extr_amdpm.c_amdpm_bread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amdpm/extr_amdpm.c_amdpm_bread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdpm_softc = type { i32 }

@SMB_EINVAL = common dso_local global i32 0, align 4
@SMB_EBUSY = common dso_local global i32 0, align 4
@AMDSMB_HSTADDR = common dso_local global i32 0, align 4
@LSB = common dso_local global i32 0, align 4
@AMDSMB_HSTCMD = common dso_local global i32 0, align 4
@AMDSMB_GLOBAL_ENABLE = common dso_local global i32 0, align 4
@AMDSMB_GE_CYC_BLOCK = common dso_local global i32 0, align 4
@AMDSMB_GE_HOST_STC = common dso_local global i32 0, align 4
@SMB_ENOERR = common dso_local global i32 0, align 4
@AMDSMB_HSTDATA = common dso_local global i32 0, align 4
@AMDSMB_HSTDFIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"amdpm: READBLK to 0x%x, count=0x%x, cmd=0x%x, error=0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8, i32*, i8*)* @amdpm_bread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdpm_bread(i32 %0, i32 %1, i8 signext %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.amdpm_softc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8 %2, i8* %9, align 1
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @device_get_softc(i32 %18)
  %20 = inttoptr i64 %19 to %struct.amdpm_softc*
  store %struct.amdpm_softc* %20, %struct.amdpm_softc** %12, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %28, label %24

24:                                               ; preds = %5
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 32
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %5
  %29 = load i32, i32* @SMB_EINVAL, align 4
  store i32 %29, i32* %6, align 4
  br label %112

30:                                               ; preds = %24
  %31 = load %struct.amdpm_softc*, %struct.amdpm_softc** %12, align 8
  %32 = call i32 @AMDPM_LOCK(%struct.amdpm_softc* %31)
  %33 = load %struct.amdpm_softc*, %struct.amdpm_softc** %12, align 8
  %34 = call i32 @amdpm_clear(%struct.amdpm_softc* %33)
  %35 = load %struct.amdpm_softc*, %struct.amdpm_softc** %12, align 8
  %36 = call i32 @amdpm_idle(%struct.amdpm_softc* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %30
  %39 = load %struct.amdpm_softc*, %struct.amdpm_softc** %12, align 8
  %40 = call i32 @AMDPM_UNLOCK(%struct.amdpm_softc* %39)
  %41 = load i32, i32* @SMB_EBUSY, align 4
  store i32 %41, i32* %6, align 4
  br label %112

42:                                               ; preds = %30
  %43 = load %struct.amdpm_softc*, %struct.amdpm_softc** %12, align 8
  %44 = load i32, i32* @AMDSMB_HSTADDR, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @LSB, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @AMDPM_SMBOUTW(%struct.amdpm_softc* %43, i32 %44, i32 %47)
  %49 = load %struct.amdpm_softc*, %struct.amdpm_softc** %12, align 8
  %50 = load i32, i32* @AMDSMB_HSTCMD, align 4
  %51 = load i8, i8* %9, align 1
  %52 = call i32 @AMDPM_SMBOUTB(%struct.amdpm_softc* %49, i32 %50, i8 signext %51)
  %53 = load %struct.amdpm_softc*, %struct.amdpm_softc** %12, align 8
  %54 = load i32, i32* @AMDSMB_GLOBAL_ENABLE, align 4
  %55 = call i32 @AMDPM_SMBINW(%struct.amdpm_softc* %53, i32 %54)
  store i32 %55, i32* %17, align 4
  %56 = load %struct.amdpm_softc*, %struct.amdpm_softc** %12, align 8
  %57 = load i32, i32* @AMDSMB_GLOBAL_ENABLE, align 4
  %58 = load i32, i32* %17, align 4
  %59 = and i32 %58, 65528
  %60 = load i32, i32* @AMDSMB_GE_CYC_BLOCK, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @AMDSMB_GE_HOST_STC, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @AMDPM_SMBOUTW(%struct.amdpm_softc* %56, i32 %57, i32 %63)
  %65 = load %struct.amdpm_softc*, %struct.amdpm_softc** %12, align 8
  %66 = call i32 @amdpm_wait(%struct.amdpm_softc* %65)
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* @SMB_ENOERR, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %42
  br label %101

70:                                               ; preds = %42
  %71 = load %struct.amdpm_softc*, %struct.amdpm_softc** %12, align 8
  %72 = load i32, i32* @AMDSMB_HSTDATA, align 4
  %73 = call i32 @AMDPM_SMBINW(%struct.amdpm_softc* %71, i32 %72)
  store i32 %73, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %74

74:                                               ; preds = %95, %70
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %98

78:                                               ; preds = %74
  %79 = load %struct.amdpm_softc*, %struct.amdpm_softc** %12, align 8
  %80 = load i32, i32* @AMDSMB_HSTDFIFO, align 4
  %81 = call i32 @AMDPM_SMBINB(%struct.amdpm_softc* %79, i32 %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %15, align 4
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %82, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %78
  %87 = load i32, i32* %13, align 4
  %88 = trunc i32 %87 to i8
  %89 = load i8*, i8** %11, align 8
  %90 = load i32, i32* %15, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  store i8 %88, i8* %92, align 1
  br label %93

93:                                               ; preds = %86, %78
  %94 = call i32 @DELAY(i32 2)
  br label %95

95:                                               ; preds = %93
  %96 = load i32, i32* %15, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %15, align 4
  br label %74

98:                                               ; preds = %74
  %99 = load i32, i32* %14, align 4
  %100 = load i32*, i32** %10, align 8
  store i32 %99, i32* %100, align 4
  br label %101

101:                                              ; preds = %98, %69
  %102 = load i32, i32* %8, align 4
  %103 = load i32*, i32** %10, align 8
  %104 = load i32, i32* %103, align 4
  %105 = load i8, i8* %9, align 1
  %106 = load i32, i32* %16, align 4
  %107 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %102, i32 %104, i8 signext %105, i32 %106)
  %108 = call i32 @AMDPM_DEBUG(i32 %107)
  %109 = load %struct.amdpm_softc*, %struct.amdpm_softc** %12, align 8
  %110 = call i32 @AMDPM_UNLOCK(%struct.amdpm_softc* %109)
  %111 = load i32, i32* %16, align 4
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %101, %38, %28
  %113 = load i32, i32* %6, align 4
  ret i32 %113
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

declare dso_local i32 @AMDPM_SMBINB(%struct.amdpm_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @AMDPM_DEBUG(i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
