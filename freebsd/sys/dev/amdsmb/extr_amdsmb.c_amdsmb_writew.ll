; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amdsmb/extr_amdsmb.c_amdsmb_writew.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amdsmb/extr_amdsmb.c_amdsmb_writew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdsmb_softc = type { i32 }

@SMB_CMD = common dso_local global i64 0, align 8
@SMB_DATA = common dso_local global i64 0, align 8
@SMB_ADDR = common dso_local global i64 0, align 8
@SMB_PRTCL = common dso_local global i64 0, align 8
@SMB_PRTCL_WRITE = common dso_local global i32 0, align 4
@SMB_PRTCL_WORD_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"amdsmb: WRITEW to 0x%x, cmd=0x%x, word=0x%x, error=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8, i16)* @amdsmb_writew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdsmb_writew(i32 %0, i32 %1, i8 signext %2, i16 signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i16, align 2
  %9 = alloca %struct.amdsmb_softc*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  store i16 %3, i16* %8, align 2
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @device_get_softc(i32 %11)
  %13 = inttoptr i64 %12 to %struct.amdsmb_softc*
  store %struct.amdsmb_softc* %13, %struct.amdsmb_softc** %9, align 8
  %14 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %9, align 8
  %15 = call i32 @AMDSMB_LOCK(%struct.amdsmb_softc* %14)
  %16 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %9, align 8
  %17 = load i64, i64* @SMB_CMD, align 8
  %18 = load i8, i8* %7, align 1
  %19 = sext i8 %18 to i32
  %20 = call i32 @amdsmb_ec_write(%struct.amdsmb_softc* %16, i64 %17, i32 %19)
  %21 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %9, align 8
  %22 = load i64, i64* @SMB_DATA, align 8
  %23 = load i16, i16* %8, align 2
  %24 = sext i16 %23 to i32
  %25 = call i32 @amdsmb_ec_write(%struct.amdsmb_softc* %21, i64 %22, i32 %24)
  %26 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %9, align 8
  %27 = load i64, i64* @SMB_DATA, align 8
  %28 = add nsw i64 %27, 1
  %29 = load i16, i16* %8, align 2
  %30 = sext i16 %29 to i32
  %31 = ashr i32 %30, 8
  %32 = call i32 @amdsmb_ec_write(%struct.amdsmb_softc* %26, i64 %28, i32 %31)
  %33 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %9, align 8
  %34 = load i64, i64* @SMB_ADDR, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @amdsmb_ec_write(%struct.amdsmb_softc* %33, i64 %34, i32 %35)
  %37 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %9, align 8
  %38 = load i64, i64* @SMB_PRTCL, align 8
  %39 = load i32, i32* @SMB_PRTCL_WRITE, align 4
  %40 = load i32, i32* @SMB_PRTCL_WORD_DATA, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @amdsmb_ec_write(%struct.amdsmb_softc* %37, i64 %38, i32 %41)
  %43 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %9, align 8
  %44 = call i32 @amdsmb_wait(%struct.amdsmb_softc* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i8, i8* %7, align 1
  %47 = load i16, i16* %8, align 2
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %45, i8 signext %46, i16 signext %47, i32 %48)
  %50 = call i32 @AMDSMB_DEBUG(i32 %49)
  %51 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %9, align 8
  %52 = call i32 @AMDSMB_UNLOCK(%struct.amdsmb_softc* %51)
  %53 = load i32, i32* %10, align 4
  ret i32 %53
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @AMDSMB_LOCK(%struct.amdsmb_softc*) #1

declare dso_local i32 @amdsmb_ec_write(%struct.amdsmb_softc*, i64, i32) #1

declare dso_local i32 @amdsmb_wait(%struct.amdsmb_softc*) #1

declare dso_local i32 @AMDSMB_DEBUG(i32) #1

declare dso_local i32 @printf(i8*, i32, i8 signext, i16 signext, i32) #1

declare dso_local i32 @AMDSMB_UNLOCK(%struct.amdsmb_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
