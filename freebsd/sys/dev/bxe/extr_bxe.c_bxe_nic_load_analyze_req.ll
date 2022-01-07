; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_nic_load_analyze_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_nic_load_analyze_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@FW_MSG_CODE_DRV_LOAD_COMMON_CHIP = common dso_local global i64 0, align 8
@FW_MSG_CODE_DRV_LOAD_COMMON = common dso_local global i64 0, align 8
@BCM_5710_FW_MAJOR_VERSION = common dso_local global i64 0, align 8
@BCM_5710_FW_MINOR_VERSION = common dso_local global i32 0, align 4
@BCM_5710_FW_REVISION_VERSION = common dso_local global i32 0, align 4
@BCM_5710_FW_ENGINEERING_VERSION = common dso_local global i32 0, align 4
@XSEM_REG_PRAM = common dso_local global i32 0, align 4
@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"loaded FW 0x%08x / my FW 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"FW 0x%08x already loaded (mine is 0x%08x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, i64)* @bxe_nic_load_analyze_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_nic_load_analyze_req(%struct.bxe_softc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @FW_MSG_CODE_DRV_LOAD_COMMON_CHIP, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %46

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @FW_MSG_CODE_DRV_LOAD_COMMON, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %46

15:                                               ; preds = %11
  %16 = load i64, i64* @BCM_5710_FW_MAJOR_VERSION, align 8
  %17 = load i32, i32* @BCM_5710_FW_MINOR_VERSION, align 4
  %18 = shl i32 %17, 8
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %16, %19
  %21 = load i32, i32* @BCM_5710_FW_REVISION_VERSION, align 4
  %22 = shl i32 %21, 16
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %20, %23
  %25 = load i32, i32* @BCM_5710_FW_ENGINEERING_VERSION, align 4
  %26 = shl i32 %25, 24
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %24, %27
  store i64 %28, i64* %6, align 8
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %30 = load i32, i32* @XSEM_REG_PRAM, align 4
  %31 = call i64 @REG_RD(%struct.bxe_softc* %29, i32 %30)
  store i64 %31, i64* %7, align 8
  %32 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %33 = load i32, i32* @DBG_LOAD, align 4
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @BLOGD(%struct.bxe_softc* %32, i32 %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %34, i64 %35)
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %15
  %41 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @BLOGE(%struct.bxe_softc* %41, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %42, i64 %43)
  store i32 -1, i32* %3, align 4
  br label %47

45:                                               ; preds = %15
  br label %46

46:                                               ; preds = %45, %11, %2
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %40
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i64, i64) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
