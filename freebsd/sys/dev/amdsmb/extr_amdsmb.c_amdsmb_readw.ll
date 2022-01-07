; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amdsmb/extr_amdsmb.c_amdsmb_readw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amdsmb/extr_amdsmb.c_amdsmb_readw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdsmb_softc = type { i32 }

@SMB_CMD = common dso_local global i32 0, align 4
@SMB_ADDR = common dso_local global i32 0, align 4
@SMB_PRTCL = common dso_local global i32 0, align 4
@SMB_PRTCL_READ = common dso_local global i32 0, align 4
@SMB_PRTCL_WORD_DATA = common dso_local global i32 0, align 4
@SMB_ENOERR = common dso_local global i32 0, align 4
@SMB_DATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"amdsmb: READW from 0x%x, cmd=0x%x, word=0x%x, error=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8, i16*)* @amdsmb_readw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdsmb_readw(i32 %0, i32 %1, i8 signext %2, i16* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i16*, align 8
  %9 = alloca %struct.amdsmb_softc*, align 8
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  store i16* %3, i16** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @device_get_softc(i32 %12)
  %14 = inttoptr i64 %13 to %struct.amdsmb_softc*
  store %struct.amdsmb_softc* %14, %struct.amdsmb_softc** %9, align 8
  %15 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %9, align 8
  %16 = call i32 @AMDSMB_LOCK(%struct.amdsmb_softc* %15)
  %17 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %9, align 8
  %18 = load i32, i32* @SMB_CMD, align 4
  %19 = load i8, i8* %7, align 1
  %20 = sext i8 %19 to i32
  %21 = call i32 @amdsmb_ec_write(%struct.amdsmb_softc* %17, i32 %18, i32 %20)
  %22 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %9, align 8
  %23 = load i32, i32* @SMB_ADDR, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @amdsmb_ec_write(%struct.amdsmb_softc* %22, i32 %23, i32 %24)
  %26 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %9, align 8
  %27 = load i32, i32* @SMB_PRTCL, align 4
  %28 = load i32, i32* @SMB_PRTCL_READ, align 4
  %29 = load i32, i32* @SMB_PRTCL_WORD_DATA, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @amdsmb_ec_write(%struct.amdsmb_softc* %26, i32 %27, i32 %30)
  %32 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %9, align 8
  %33 = call i32 @amdsmb_wait(%struct.amdsmb_softc* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* @SMB_ENOERR, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %4
  %37 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %9, align 8
  %38 = load i64, i64* @SMB_DATA, align 8
  %39 = add nsw i64 %38, 0
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %41 = call i32 @amdsmb_ec_read(%struct.amdsmb_softc* %37, i64 %39, i32* %40)
  %42 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %9, align 8
  %43 = load i64, i64* @SMB_DATA, align 8
  %44 = add nsw i64 %43, 1
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %46 = call i32 @amdsmb_ec_read(%struct.amdsmb_softc* %42, i64 %44, i32* %45)
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 8
  %52 = or i32 %48, %51
  %53 = trunc i32 %52 to i16
  %54 = load i16*, i16** %8, align 8
  store i16 %53, i16* %54, align 2
  br label %55

55:                                               ; preds = %36, %4
  %56 = load i32, i32* %6, align 4
  %57 = load i8, i8* %7, align 1
  %58 = load i16*, i16** %8, align 8
  %59 = load i16, i16* %58, align 2
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %56, i8 signext %57, i16 zeroext %59, i32 %60)
  %62 = call i32 @AMDSMB_DEBUG(i32 %61)
  %63 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %9, align 8
  %64 = call i32 @AMDSMB_UNLOCK(%struct.amdsmb_softc* %63)
  %65 = load i32, i32* %11, align 4
  ret i32 %65
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @AMDSMB_LOCK(%struct.amdsmb_softc*) #1

declare dso_local i32 @amdsmb_ec_write(%struct.amdsmb_softc*, i32, i32) #1

declare dso_local i32 @amdsmb_wait(%struct.amdsmb_softc*) #1

declare dso_local i32 @amdsmb_ec_read(%struct.amdsmb_softc*, i64, i32*) #1

declare dso_local i32 @AMDSMB_DEBUG(i32) #1

declare dso_local i32 @printf(i8*, i32, i8 signext, i16 zeroext, i32) #1

declare dso_local i32 @AMDSMB_UNLOCK(%struct.amdsmb_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
