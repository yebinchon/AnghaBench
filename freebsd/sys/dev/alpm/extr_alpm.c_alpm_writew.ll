; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alpm/extr_alpm.c_alpm_writew.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alpm/extr_alpm.c_alpm_writew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alpm_softc = type { i32 }

@SMB_EBUSY = common dso_local global i32 0, align 4
@SMBHADDR = common dso_local global i32 0, align 4
@LSB = common dso_local global i32 0, align 4
@SMBCMD = common dso_local global i32 0, align 4
@SMBWRWORD = common dso_local global i32 0, align 4
@SMBHDATA = common dso_local global i32 0, align 4
@SMBHDATB = common dso_local global i32 0, align 4
@SMBHCMD = common dso_local global i32 0, align 4
@SMBSTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"alpm: WRITEW to 0x%x, cmd=0x%x, word=0x%x, error=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8, i16)* @alpm_writew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alpm_writew(i32 %0, i32 %1, i8 signext %2, i16 signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i16, align 2
  %10 = alloca %struct.alpm_softc*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8 %2, i8* %8, align 1
  store i16 %3, i16* %9, align 2
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @device_get_softc(i32 %12)
  %14 = inttoptr i64 %13 to %struct.alpm_softc*
  store %struct.alpm_softc* %14, %struct.alpm_softc** %10, align 8
  %15 = load %struct.alpm_softc*, %struct.alpm_softc** %10, align 8
  %16 = call i32 @ALPM_LOCK(%struct.alpm_softc* %15)
  %17 = load %struct.alpm_softc*, %struct.alpm_softc** %10, align 8
  %18 = call i32 @alpm_clear(%struct.alpm_softc* %17)
  %19 = load %struct.alpm_softc*, %struct.alpm_softc** %10, align 8
  %20 = call i32 @alpm_idle(%struct.alpm_softc* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %4
  %23 = load %struct.alpm_softc*, %struct.alpm_softc** %10, align 8
  %24 = call i32 @ALPM_UNLOCK(%struct.alpm_softc* %23)
  %25 = load i32, i32* @SMB_EBUSY, align 4
  store i32 %25, i32* %5, align 4
  br label %70

26:                                               ; preds = %4
  %27 = load %struct.alpm_softc*, %struct.alpm_softc** %10, align 8
  %28 = load i32, i32* @SMBHADDR, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @LSB, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = call i32 @ALPM_SMBOUTB(%struct.alpm_softc* %27, i32 %28, i32 %32)
  %34 = load %struct.alpm_softc*, %struct.alpm_softc** %10, align 8
  %35 = load i32, i32* @SMBCMD, align 4
  %36 = load i32, i32* @SMBWRWORD, align 4
  %37 = call i32 @ALPM_SMBOUTB(%struct.alpm_softc* %34, i32 %35, i32 %36)
  %38 = load %struct.alpm_softc*, %struct.alpm_softc** %10, align 8
  %39 = load i32, i32* @SMBHDATA, align 4
  %40 = load i16, i16* %9, align 2
  %41 = sext i16 %40 to i32
  %42 = and i32 %41, 255
  %43 = call i32 @ALPM_SMBOUTB(%struct.alpm_softc* %38, i32 %39, i32 %42)
  %44 = load %struct.alpm_softc*, %struct.alpm_softc** %10, align 8
  %45 = load i32, i32* @SMBHDATB, align 4
  %46 = load i16, i16* %9, align 2
  %47 = sext i16 %46 to i32
  %48 = and i32 %47, 65280
  %49 = ashr i32 %48, 8
  %50 = call i32 @ALPM_SMBOUTB(%struct.alpm_softc* %44, i32 %45, i32 %49)
  %51 = load %struct.alpm_softc*, %struct.alpm_softc** %10, align 8
  %52 = load i32, i32* @SMBHCMD, align 4
  %53 = load i8, i8* %8, align 1
  %54 = sext i8 %53 to i32
  %55 = call i32 @ALPM_SMBOUTB(%struct.alpm_softc* %51, i32 %52, i32 %54)
  %56 = load %struct.alpm_softc*, %struct.alpm_softc** %10, align 8
  %57 = load i32, i32* @SMBSTART, align 4
  %58 = call i32 @ALPM_SMBOUTB(%struct.alpm_softc* %56, i32 %57, i32 255)
  %59 = load %struct.alpm_softc*, %struct.alpm_softc** %10, align 8
  %60 = call i32 @alpm_wait(%struct.alpm_softc* %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i8, i8* %8, align 1
  %63 = load i16, i16* %9, align 2
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %61, i8 signext %62, i16 signext %63, i32 %64)
  %66 = call i32 @ALPM_DEBUG(i32 %65)
  %67 = load %struct.alpm_softc*, %struct.alpm_softc** %10, align 8
  %68 = call i32 @ALPM_UNLOCK(%struct.alpm_softc* %67)
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %26, %22
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @ALPM_LOCK(%struct.alpm_softc*) #1

declare dso_local i32 @alpm_clear(%struct.alpm_softc*) #1

declare dso_local i32 @alpm_idle(%struct.alpm_softc*) #1

declare dso_local i32 @ALPM_UNLOCK(%struct.alpm_softc*) #1

declare dso_local i32 @ALPM_SMBOUTB(%struct.alpm_softc*, i32, i32) #1

declare dso_local i32 @alpm_wait(%struct.alpm_softc*) #1

declare dso_local i32 @ALPM_DEBUG(i32) #1

declare dso_local i32 @printf(i8*, i32, i8 signext, i16 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
