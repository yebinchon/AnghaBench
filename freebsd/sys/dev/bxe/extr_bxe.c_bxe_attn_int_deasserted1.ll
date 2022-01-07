; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_attn_int_deasserted1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_attn_int_deasserted1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@AEU_INPUTS_ATTN_BITS_DOORBELLQ_HW_INTERRUPT = common dso_local global i32 0, align 4
@DORQ_REG_DORQ_INT_STS_CLR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"DB hw attention 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"FATAL error from DORQ\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@HW_INTERRUT_ASSERT_SET_1 = common dso_local global i32 0, align 4
@MISC_REG_AEU_ENABLE1_FUNC_1_OUT_1 = common dso_local global i32 0, align 4
@MISC_REG_AEU_ENABLE1_FUNC_0_OUT_1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"FATAL HW block attention set1 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"HW block attention set1\0A\00", align 1
@BXE_ERR_MISC = common dso_local global i32 0, align 4
@taskqueue_thread = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, i32)* @bxe_attn_int_deasserted1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_attn_int_deasserted1(%struct.bxe_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %10 = call i32 @SC_PORT(%struct.bxe_softc* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i64, i64* @FALSE, align 8
  store i64 %11, i64* %8, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @AEU_INPUTS_ATTN_BITS_DOORBELLQ_HW_INTERRUPT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %2
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %18 = load i32, i32* @DORQ_REG_DORQ_INT_STS_CLR, align 4
  %19 = call i32 @REG_RD(%struct.bxe_softc* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, 2
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %16
  %27 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %28 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i64, i64* @TRUE, align 8
  store i64 %29, i64* %8, align 8
  br label %30

30:                                               ; preds = %26, %16
  br label %31

31:                                               ; preds = %30, %2
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @HW_INTERRUT_ASSERT_SET_1, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %66

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @MISC_REG_AEU_ENABLE1_FUNC_1_OUT_1, align 4
  br label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @MISC_REG_AEU_ENABLE1_FUNC_0_OUT_1, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  store i32 %44, i32* %6, align 4
  %45 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @REG_RD(%struct.bxe_softc* %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @HW_INTERRUT_ASSERT_SET_1, align 4
  %50 = and i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @REG_WR(%struct.bxe_softc* %54, i32 %55, i32 %56)
  %58 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @HW_INTERRUT_ASSERT_SET_1, align 4
  %61 = and i32 %59, %60
  %62 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %58, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i64, i64* @TRUE, align 8
  store i64 %63, i64* %8, align 8
  %64 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %65 = call i32 @bxe_panic(%struct.bxe_softc* %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %66

66:                                               ; preds = %43, %31
  %67 = load i64, i64* %8, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %71 = load i32, i32* @BXE_ERR_MISC, align 4
  %72 = call i32 @BXE_SET_ERROR_BIT(%struct.bxe_softc* %70, i32 %71)
  %73 = load i32, i32* @taskqueue_thread, align 4
  %74 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %75 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %74, i32 0, i32 0
  %76 = load i32, i32* @hz, align 4
  %77 = sdiv i32 %76, 10
  %78 = call i32 @taskqueue_enqueue_timeout(i32 %73, i32* %75, i32 %77)
  br label %79

79:                                               ; preds = %69, %66
  ret void
}

declare dso_local i32 @SC_PORT(%struct.bxe_softc*) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, ...) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @bxe_panic(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @BXE_SET_ERROR_BIT(%struct.bxe_softc*, i32) #1

declare dso_local i32 @taskqueue_enqueue_timeout(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
