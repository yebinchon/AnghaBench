; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_do_flr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_do_flr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"FLR not supported in E1/E1H\0A\00", align 1
@REQ_BC_VER_4_INITIATE_FLR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"FLR not supported by BC_VER: 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"PCIE transaction is not cleared, proceeding with reset anyway\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Initiating FLR\0A\00", align 1
@DRV_MSG_CODE_INITIATE_FLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*)* @bxe_do_flr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_do_flr(%struct.bxe_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  %5 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %6 = call i64 @CHIP_IS_E1x(%struct.bxe_softc* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %10 = load i32, i32* @DBG_LOAD, align 4
  %11 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %9, i32 %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %60

12:                                               ; preds = %1
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %14 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @REQ_BC_VER_4_INITIATE_FLR, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %12
  %20 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %21 = load i32, i32* @DBG_LOAD, align 4
  %22 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %23 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %20, i32 %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  store i32 -1, i32* %2, align 4
  br label %60

27:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %47, %27
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %50

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = sub nsw i32 %35, 1
  %37 = shl i32 1, %36
  %38 = mul nsw i32 %37, 100
  %39 = mul nsw i32 %38, 1000
  %40 = call i32 @DELAY(i32 %39)
  br label %41

41:                                               ; preds = %34, %31
  %42 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %43 = call i32 @bxe_is_pcie_pending(%struct.bxe_softc* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  br label %53

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %28

50:                                               ; preds = %28
  %51 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %52 = call i32 @BLOGE(%struct.bxe_softc* %51, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %45
  %54 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %55 = load i32, i32* @DBG_LOAD, align 4
  %56 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %54, i32 %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %57 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %58 = load i32, i32* @DRV_MSG_CODE_INITIATE_FLR, align 4
  %59 = call i32 @bxe_fw_command(%struct.bxe_softc* %57, i32 %58, i32 0)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %53, %19, %8
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i64 @CHIP_IS_E1x(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, ...) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @bxe_is_pcie_pending(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @bxe_fw_command(%struct.bxe_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
