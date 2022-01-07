; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alpm/extr_alpm.c_alpm_recvb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alpm/extr_alpm.c_alpm_recvb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alpm_softc = type { i32 }

@SMB_EBUSY = common dso_local global i32 0, align 4
@SMBHADDR = common dso_local global i32 0, align 4
@LSB = common dso_local global i32 0, align 4
@SMBCMD = common dso_local global i32 0, align 4
@SMBSRBYTE = common dso_local global i32 0, align 4
@SMBSTART = common dso_local global i32 0, align 4
@SMB_ENOERR = common dso_local global i32 0, align 4
@SMBHDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"alpm: RECVB from 0x%x, byte=0x%x, error=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @alpm_recvb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alpm_recvb(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.alpm_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
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
  br label %57

24:                                               ; preds = %3
  %25 = load %struct.alpm_softc*, %struct.alpm_softc** %8, align 8
  %26 = load i32, i32* @SMBHADDR, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @LSB, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @ALPM_SMBOUTB(%struct.alpm_softc* %25, i32 %26, i32 %29)
  %31 = load %struct.alpm_softc*, %struct.alpm_softc** %8, align 8
  %32 = load i32, i32* @SMBCMD, align 4
  %33 = load i32, i32* @SMBSRBYTE, align 4
  %34 = call i32 @ALPM_SMBOUTB(%struct.alpm_softc* %31, i32 %32, i32 %33)
  %35 = load %struct.alpm_softc*, %struct.alpm_softc** %8, align 8
  %36 = load i32, i32* @SMBSTART, align 4
  %37 = call i32 @ALPM_SMBOUTB(%struct.alpm_softc* %35, i32 %36, i32 255)
  %38 = load %struct.alpm_softc*, %struct.alpm_softc** %8, align 8
  %39 = call i32 @alpm_wait(%struct.alpm_softc* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* @SMB_ENOERR, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %24
  %43 = load %struct.alpm_softc*, %struct.alpm_softc** %8, align 8
  %44 = load i32, i32* @SMBHDATA, align 4
  %45 = call signext i8 @ALPM_SMBINB(%struct.alpm_softc* %43, i32 %44)
  %46 = load i8*, i8** %7, align 8
  store i8 %45, i8* %46, align 1
  br label %47

47:                                               ; preds = %42, %24
  %48 = load i32, i32* %6, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = load i8, i8* %49, align 1
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %48, i8 signext %50, i32 %51)
  %53 = call i32 @ALPM_DEBUG(i32 %52)
  %54 = load %struct.alpm_softc*, %struct.alpm_softc** %8, align 8
  %55 = call i32 @ALPM_UNLOCK(%struct.alpm_softc* %54)
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %47, %20
  %58 = load i32, i32* %4, align 4
  ret i32 %58
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

declare dso_local i32 @printf(i8*, i32, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
