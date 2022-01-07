; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_elink_cb_fw_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_elink_cb_fw_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.bxe_softc = type { i32 }

@func_mb = common dso_local global %struct.TYPE_2__* null, align 8
@DBG_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"wrote command 0x%08x to FW MB param 0x%08x\0A\00", align 1
@FW_MSG_SEQ_NUMBER_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"[after %d ms] read 0x%x seq 0x%x from FW MB\0A\00", align 1
@FW_MSG_CODE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"FW failed to respond!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elink_cb_fw_command(%struct.bxe_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %13 = call i32 @SC_FW_MB_IDX(%struct.bxe_softc* %12)
  store i32 %13, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %14 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %15 = call i64 @CHIP_REV_IS_SLOW(%struct.bxe_softc* %14)
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 100, i32 10
  store i32 %18, i32* %11, align 4
  %19 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %20 = call i32 @BXE_FWMB_LOCK(%struct.bxe_softc* %19)
  %21 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %22 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  store i32 %24, i32* %8, align 4
  %25 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @func_mb, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @SHMEM_WR(%struct.bxe_softc* %25, i32 %31, i32 %32)
  %34 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @func_mb, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @SHMEM_WR(%struct.bxe_softc* %34, i32 %40, i32 %43)
  %45 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %46 = load i32, i32* @DBG_PHY, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %8, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %6, align 4
  %51 = call i32 (%struct.bxe_softc*, i32, i8*, i32, i32, ...) @BLOGD(%struct.bxe_softc* %45, i32 %46, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %74, %3
  %53 = load i32, i32* %11, align 4
  %54 = mul nsw i32 %53, 1000
  %55 = call i32 @DELAY(i32 %54)
  %56 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @func_mb, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @SHMEM_RD(%struct.bxe_softc* %56, i32 %62)
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %52
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @FW_MSG_SEQ_NUMBER_MASK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %65, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  %73 = icmp slt i32 %71, 500
  br label %74

74:                                               ; preds = %70, %64
  %75 = phi i1 [ false, %64 ], [ %73, %70 ]
  br i1 %75, label %52, label %76

76:                                               ; preds = %74
  %77 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %78 = load i32, i32* @DBG_PHY, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = mul nsw i32 %79, %80
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 (%struct.bxe_softc*, i32, i8*, i32, i32, ...) @BLOGD(%struct.bxe_softc* %77, i32 %78, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %82, i32 %83)
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @FW_MSG_SEQ_NUMBER_MASK, align 4
  %88 = and i32 %86, %87
  %89 = icmp eq i32 %85, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %76
  %91 = load i32, i32* @FW_MSG_CODE_MASK, align 4
  %92 = load i32, i32* %9, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %9, align 4
  br label %97

94:                                               ; preds = %76
  %95 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %96 = call i32 @BLOGE(%struct.bxe_softc* %95, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %97

97:                                               ; preds = %94, %90
  %98 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %99 = call i32 @BXE_FWMB_UNLOCK(%struct.bxe_softc* %98)
  %100 = load i32, i32* %9, align 4
  ret i32 %100
}

declare dso_local i32 @SC_FW_MB_IDX(%struct.bxe_softc*) #1

declare dso_local i64 @CHIP_REV_IS_SLOW(%struct.bxe_softc*) #1

declare dso_local i32 @BXE_FWMB_LOCK(%struct.bxe_softc*) #1

declare dso_local i32 @SHMEM_WR(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @SHMEM_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @BXE_FWMB_UNLOCK(%struct.bxe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
