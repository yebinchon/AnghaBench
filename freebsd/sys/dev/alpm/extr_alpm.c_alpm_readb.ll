; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alpm/extr_alpm.c_alpm_readb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alpm/extr_alpm.c_alpm_readb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alpm_softc = type { i32 }

@SMB_EBUSY = common dso_local global i32 0, align 4
@SMBHADDR = common dso_local global i32 0, align 4
@LSB = common dso_local global i32 0, align 4
@SMBCMD = common dso_local global i32 0, align 4
@SMBWRBYTE = common dso_local global i32 0, align 4
@SMBHCMD = common dso_local global i32 0, align 4
@SMBSTART = common dso_local global i32 0, align 4
@SMB_ENOERR = common dso_local global i32 0, align 4
@SMBHDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"alpm: READB from 0x%x, cmd=0x%x, byte=0x%x, error=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8, i8*)* @alpm_readb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alpm_readb(i32 %0, i32 %1, i8 signext %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca %struct.alpm_softc*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8 %2, i8* %8, align 1
  store i8* %3, i8** %9, align 8
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
  br label %65

26:                                               ; preds = %4
  %27 = load %struct.alpm_softc*, %struct.alpm_softc** %10, align 8
  %28 = load i32, i32* @SMBHADDR, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @LSB, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @ALPM_SMBOUTB(%struct.alpm_softc* %27, i32 %28, i32 %31)
  %33 = load %struct.alpm_softc*, %struct.alpm_softc** %10, align 8
  %34 = load i32, i32* @SMBCMD, align 4
  %35 = load i32, i32* @SMBWRBYTE, align 4
  %36 = call i32 @ALPM_SMBOUTB(%struct.alpm_softc* %33, i32 %34, i32 %35)
  %37 = load %struct.alpm_softc*, %struct.alpm_softc** %10, align 8
  %38 = load i32, i32* @SMBHCMD, align 4
  %39 = load i8, i8* %8, align 1
  %40 = sext i8 %39 to i32
  %41 = call i32 @ALPM_SMBOUTB(%struct.alpm_softc* %37, i32 %38, i32 %40)
  %42 = load %struct.alpm_softc*, %struct.alpm_softc** %10, align 8
  %43 = load i32, i32* @SMBSTART, align 4
  %44 = call i32 @ALPM_SMBOUTB(%struct.alpm_softc* %42, i32 %43, i32 255)
  %45 = load %struct.alpm_softc*, %struct.alpm_softc** %10, align 8
  %46 = call i32 @alpm_wait(%struct.alpm_softc* %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* @SMB_ENOERR, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %26
  %50 = load %struct.alpm_softc*, %struct.alpm_softc** %10, align 8
  %51 = load i32, i32* @SMBHDATA, align 4
  %52 = call signext i8 @ALPM_SMBINB(%struct.alpm_softc* %50, i32 %51)
  %53 = load i8*, i8** %9, align 8
  store i8 %52, i8* %53, align 1
  br label %54

54:                                               ; preds = %49, %26
  %55 = load i32, i32* %7, align 4
  %56 = load i8, i8* %8, align 1
  %57 = load i8*, i8** %9, align 8
  %58 = load i8, i8* %57, align 1
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %55, i8 signext %56, i8 signext %58, i32 %59)
  %61 = call i32 @ALPM_DEBUG(i32 %60)
  %62 = load %struct.alpm_softc*, %struct.alpm_softc** %10, align 8
  %63 = call i32 @ALPM_UNLOCK(%struct.alpm_softc* %62)
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %54, %22
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @ALPM_LOCK(%struct.alpm_softc*) #1

declare dso_local i32 @alpm_clear(%struct.alpm_softc*) #1

declare dso_local i32 @alpm_idle(%struct.alpm_softc*) #1

declare dso_local i32 @ALPM_UNLOCK(%struct.alpm_softc*) #1

declare dso_local i32 @ALPM_SMBOUTB(%struct.alpm_softc*, i32, i32) #1

declare dso_local i32 @alpm_wait(%struct.alpm_softc*) #1

declare dso_local signext i8 @ALPM_SMBINB(%struct.alpm_softc*, i32) #1

declare dso_local i32 @ALPM_DEBUG(i32) #1

declare dso_local i32 @printf(i8*, i32, i8 signext, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
