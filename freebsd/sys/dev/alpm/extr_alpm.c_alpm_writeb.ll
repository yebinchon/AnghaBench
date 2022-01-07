; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alpm/extr_alpm.c_alpm_writeb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alpm/extr_alpm.c_alpm_writeb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alpm_softc = type { i32 }

@SMB_EBUSY = common dso_local global i32 0, align 4
@SMBHADDR = common dso_local global i32 0, align 4
@LSB = common dso_local global i32 0, align 4
@SMBCMD = common dso_local global i32 0, align 4
@SMBWRBYTE = common dso_local global i32 0, align 4
@SMBHDATA = common dso_local global i32 0, align 4
@SMBHCMD = common dso_local global i32 0, align 4
@SMBSTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"alpm: WRITEB to 0x%x, cmd=0x%x, byte=0x%x, error=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8, i8)* @alpm_writeb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alpm_writeb(i32 %0, i32 %1, i8 signext %2, i8 signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca %struct.alpm_softc*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8 %2, i8* %8, align 1
  store i8 %3, i8* %9, align 1
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
  br label %62

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
  %36 = load i32, i32* @SMBWRBYTE, align 4
  %37 = call i32 @ALPM_SMBOUTB(%struct.alpm_softc* %34, i32 %35, i32 %36)
  %38 = load %struct.alpm_softc*, %struct.alpm_softc** %10, align 8
  %39 = load i32, i32* @SMBHDATA, align 4
  %40 = load i8, i8* %9, align 1
  %41 = sext i8 %40 to i32
  %42 = call i32 @ALPM_SMBOUTB(%struct.alpm_softc* %38, i32 %39, i32 %41)
  %43 = load %struct.alpm_softc*, %struct.alpm_softc** %10, align 8
  %44 = load i32, i32* @SMBHCMD, align 4
  %45 = load i8, i8* %8, align 1
  %46 = sext i8 %45 to i32
  %47 = call i32 @ALPM_SMBOUTB(%struct.alpm_softc* %43, i32 %44, i32 %46)
  %48 = load %struct.alpm_softc*, %struct.alpm_softc** %10, align 8
  %49 = load i32, i32* @SMBSTART, align 4
  %50 = call i32 @ALPM_SMBOUTB(%struct.alpm_softc* %48, i32 %49, i32 255)
  %51 = load %struct.alpm_softc*, %struct.alpm_softc** %10, align 8
  %52 = call i32 @alpm_wait(%struct.alpm_softc* %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i8, i8* %8, align 1
  %55 = load i8, i8* %9, align 1
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %53, i8 signext %54, i8 signext %55, i32 %56)
  %58 = call i32 @ALPM_DEBUG(i32 %57)
  %59 = load %struct.alpm_softc*, %struct.alpm_softc** %10, align 8
  %60 = call i32 @ALPM_UNLOCK(%struct.alpm_softc* %59)
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %26, %22
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @ALPM_LOCK(%struct.alpm_softc*) #1

declare dso_local i32 @alpm_clear(%struct.alpm_softc*) #1

declare dso_local i32 @alpm_idle(%struct.alpm_softc*) #1

declare dso_local i32 @ALPM_UNLOCK(%struct.alpm_softc*) #1

declare dso_local i32 @ALPM_SMBOUTB(%struct.alpm_softc*, i32, i32) #1

declare dso_local i32 @alpm_wait(%struct.alpm_softc*) #1

declare dso_local i32 @ALPM_DEBUG(i32) #1

declare dso_local i32 @printf(i8*, i32, i8 signext, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
