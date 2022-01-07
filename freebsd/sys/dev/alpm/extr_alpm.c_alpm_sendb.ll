; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alpm/extr_alpm.c_alpm_sendb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alpm/extr_alpm.c_alpm_sendb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alpm_softc = type { i32 }

@SMB_EBUSY = common dso_local global i32 0, align 4
@SMBHADDR = common dso_local global i32 0, align 4
@LSB = common dso_local global i32 0, align 4
@SMBCMD = common dso_local global i32 0, align 4
@SMBSRBYTE = common dso_local global i32 0, align 4
@SMBHDATA = common dso_local global i32 0, align 4
@SMBSTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"alpm: SENDB to 0x%x, byte=0x%x, error=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8)* @alpm_sendb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alpm_sendb(i32 %0, i32 %1, i8 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.alpm_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @device_get_softc(i32 %10)
  %12 = inttoptr i64 %11 to %struct.alpm_softc*
  store %struct.alpm_softc* %12, %struct.alpm_softc** %8, align 8
  %13 = load %struct.alpm_softc*, %struct.alpm_softc** %8, align 8
  %14 = call i32 @ALPM_LOCK(%struct.alpm_softc* %13)
  %15 = load %struct.alpm_softc*, %struct.alpm_softc** %8, align 8
  %16 = call i32 @alpm_clear(%struct.alpm_softc* %15)
  %17 = load %struct.alpm_softc*, %struct.alpm_softc** %8, align 8
  %18 = call i32 @alpm_idle(%struct.alpm_softc* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load %struct.alpm_softc*, %struct.alpm_softc** %8, align 8
  %22 = call i32 @ALPM_UNLOCK(%struct.alpm_softc* %21)
  %23 = load i32, i32* @SMB_EBUSY, align 4
  store i32 %23, i32* %4, align 4
  br label %54

24:                                               ; preds = %3
  %25 = load %struct.alpm_softc*, %struct.alpm_softc** %8, align 8
  %26 = load i32, i32* @SMBHADDR, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @LSB, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = call i32 @ALPM_SMBOUTB(%struct.alpm_softc* %25, i32 %26, i32 %30)
  %32 = load %struct.alpm_softc*, %struct.alpm_softc** %8, align 8
  %33 = load i32, i32* @SMBCMD, align 4
  %34 = load i32, i32* @SMBSRBYTE, align 4
  %35 = call i32 @ALPM_SMBOUTB(%struct.alpm_softc* %32, i32 %33, i32 %34)
  %36 = load %struct.alpm_softc*, %struct.alpm_softc** %8, align 8
  %37 = load i32, i32* @SMBHDATA, align 4
  %38 = load i8, i8* %7, align 1
  %39 = sext i8 %38 to i32
  %40 = call i32 @ALPM_SMBOUTB(%struct.alpm_softc* %36, i32 %37, i32 %39)
  %41 = load %struct.alpm_softc*, %struct.alpm_softc** %8, align 8
  %42 = load i32, i32* @SMBSTART, align 4
  %43 = call i32 @ALPM_SMBOUTB(%struct.alpm_softc* %41, i32 %42, i32 255)
  %44 = load %struct.alpm_softc*, %struct.alpm_softc** %8, align 8
  %45 = call i32 @alpm_wait(%struct.alpm_softc* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i8, i8* %7, align 1
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %46, i8 signext %47, i32 %48)
  %50 = call i32 @ALPM_DEBUG(i32 %49)
  %51 = load %struct.alpm_softc*, %struct.alpm_softc** %8, align 8
  %52 = call i32 @ALPM_UNLOCK(%struct.alpm_softc* %51)
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %24, %20
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @ALPM_LOCK(%struct.alpm_softc*) #1

declare dso_local i32 @alpm_clear(%struct.alpm_softc*) #1

declare dso_local i32 @alpm_idle(%struct.alpm_softc*) #1

declare dso_local i32 @ALPM_UNLOCK(%struct.alpm_softc*) #1

declare dso_local i32 @ALPM_SMBOUTB(%struct.alpm_softc*, i32, i32) #1

declare dso_local i32 @alpm_wait(%struct.alpm_softc*) #1

declare dso_local i32 @ALPM_DEBUG(i32) #1

declare dso_local i32 @printf(i8*, i32, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
