; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alpm/extr_alpm.c_alpm_bread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alpm/extr_alpm.c_alpm_bread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alpm_softc = type { i32 }

@SMB_EINVAL = common dso_local global i32 0, align 4
@SMB_EBUSY = common dso_local global i32 0, align 4
@SMBHADDR = common dso_local global i32 0, align 4
@LSB = common dso_local global i32 0, align 4
@SMBCMD = common dso_local global i32 0, align 4
@SMBWRBLOCK = common dso_local global i32 0, align 4
@SMB_BLK_CLR = common dso_local global i32 0, align 4
@SMBHCMD = common dso_local global i32 0, align 4
@SMBSTART = common dso_local global i32 0, align 4
@SMB_ENOERR = common dso_local global i32 0, align 4
@SMBHDATA = common dso_local global i32 0, align 4
@SMBHBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"alpm: READBLK to 0x%x, count=0x%x, cmd=0x%x, error=0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8, i32*, i8*)* @alpm_bread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alpm_bread(i32 %0, i32 %1, i8 signext %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.alpm_softc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8 %2, i8* %9, align 1
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @device_get_softc(i32 %17)
  %19 = inttoptr i64 %18 to %struct.alpm_softc*
  store %struct.alpm_softc* %19, %struct.alpm_softc** %12, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %27, label %23

23:                                               ; preds = %5
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 32
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %5
  %28 = load i32, i32* @SMB_EINVAL, align 4
  store i32 %28, i32* %6, align 4
  br label %109

29:                                               ; preds = %23
  %30 = load %struct.alpm_softc*, %struct.alpm_softc** %12, align 8
  %31 = call i32 @ALPM_LOCK(%struct.alpm_softc* %30)
  %32 = load %struct.alpm_softc*, %struct.alpm_softc** %12, align 8
  %33 = call i32 @alpm_clear(%struct.alpm_softc* %32)
  %34 = load %struct.alpm_softc*, %struct.alpm_softc** %12, align 8
  %35 = call i32 @alpm_idle(%struct.alpm_softc* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %29
  %38 = load %struct.alpm_softc*, %struct.alpm_softc** %12, align 8
  %39 = call i32 @ALPM_UNLOCK(%struct.alpm_softc* %38)
  %40 = load i32, i32* @SMB_EBUSY, align 4
  store i32 %40, i32* %6, align 4
  br label %109

41:                                               ; preds = %29
  %42 = load %struct.alpm_softc*, %struct.alpm_softc** %12, align 8
  %43 = load i32, i32* @SMBHADDR, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @LSB, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @ALPM_SMBOUTB(%struct.alpm_softc* %42, i32 %43, i32 %46)
  %48 = load %struct.alpm_softc*, %struct.alpm_softc** %12, align 8
  %49 = load i32, i32* @SMBCMD, align 4
  %50 = load i32, i32* @SMBWRBLOCK, align 4
  %51 = load i32, i32* @SMB_BLK_CLR, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @ALPM_SMBOUTB(%struct.alpm_softc* %48, i32 %49, i32 %52)
  %54 = load %struct.alpm_softc*, %struct.alpm_softc** %12, align 8
  %55 = load i32, i32* @SMBHCMD, align 4
  %56 = load i8, i8* %9, align 1
  %57 = sext i8 %56 to i32
  %58 = call i32 @ALPM_SMBOUTB(%struct.alpm_softc* %54, i32 %55, i32 %57)
  %59 = load %struct.alpm_softc*, %struct.alpm_softc** %12, align 8
  %60 = load i32, i32* @SMBSTART, align 4
  %61 = call i32 @ALPM_SMBOUTB(%struct.alpm_softc* %59, i32 %60, i32 255)
  %62 = load %struct.alpm_softc*, %struct.alpm_softc** %12, align 8
  %63 = call i32 @alpm_wait(%struct.alpm_softc* %62)
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* @SMB_ENOERR, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %41
  br label %98

67:                                               ; preds = %41
  %68 = load %struct.alpm_softc*, %struct.alpm_softc** %12, align 8
  %69 = load i32, i32* @SMBHDATA, align 4
  %70 = call i32 @ALPM_SMBINB(%struct.alpm_softc* %68, i32 %69)
  store i32 %70, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %71

71:                                               ; preds = %92, %67
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %95

75:                                               ; preds = %71
  %76 = load %struct.alpm_softc*, %struct.alpm_softc** %12, align 8
  %77 = load i32, i32* @SMBHBLOCK, align 4
  %78 = call i32 @ALPM_SMBINB(%struct.alpm_softc* %76, i32 %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32*, i32** %10, align 8
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %79, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %75
  %84 = load i32, i32* %13, align 4
  %85 = trunc i32 %84 to i8
  %86 = load i8*, i8** %11, align 8
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  store i8 %85, i8* %89, align 1
  br label %90

90:                                               ; preds = %83, %75
  %91 = call i32 @DELAY(i32 2)
  br label %92

92:                                               ; preds = %90
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %15, align 4
  br label %71

95:                                               ; preds = %71
  %96 = load i32, i32* %14, align 4
  %97 = load i32*, i32** %10, align 8
  store i32 %96, i32* %97, align 4
  br label %98

98:                                               ; preds = %95, %66
  %99 = load i32, i32* %8, align 4
  %100 = load i32*, i32** %10, align 8
  %101 = load i32, i32* %100, align 4
  %102 = load i8, i8* %9, align 1
  %103 = load i32, i32* %16, align 4
  %104 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %99, i32 %101, i8 signext %102, i32 %103)
  %105 = call i32 @ALPM_DEBUG(i32 %104)
  %106 = load %struct.alpm_softc*, %struct.alpm_softc** %12, align 8
  %107 = call i32 @ALPM_UNLOCK(%struct.alpm_softc* %106)
  %108 = load i32, i32* %16, align 4
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %98, %37, %27
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @ALPM_LOCK(%struct.alpm_softc*) #1

declare dso_local i32 @alpm_clear(%struct.alpm_softc*) #1

declare dso_local i32 @alpm_idle(%struct.alpm_softc*) #1

declare dso_local i32 @ALPM_UNLOCK(%struct.alpm_softc*) #1

declare dso_local i32 @ALPM_SMBOUTB(%struct.alpm_softc*, i32, i32) #1

declare dso_local i32 @alpm_wait(%struct.alpm_softc*) #1

declare dso_local i32 @ALPM_SMBINB(%struct.alpm_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ALPM_DEBUG(i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
