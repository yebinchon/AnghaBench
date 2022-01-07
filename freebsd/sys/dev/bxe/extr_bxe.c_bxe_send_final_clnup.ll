; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_send_final_clnup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_send_final_clnup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@BAR_CSTRORM_INTMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Cleanup complete was not 0 before sending\0A\00", align 1
@XSTORM_AGG_INT_FINAL_CLEANUP_INDEX = common dso_local global i32 0, align 4
@XSTORM_AGG_INT_FINAL_CLEANUP_COMP_TYPE = common dso_local global i32 0, align 4
@SDM_OP_GEN_AGG_VECT_IDX_VALID_SHIFT = common dso_local global i32 0, align 4
@DBG_LOAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"sending FW Final cleanup\0A\00", align 1
@XSDM_REG_OPERATION_GEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"FW final cleanup did not succeed\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"At timeout completion address contained %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"FLR cleanup failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, i32, i32)* @bxe_send_final_clnup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_send_final_clnup(%struct.bxe_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @BAR_CSTRORM_INTMEM, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @CSTORM_FINAL_CLEANUP_COMPLETE_OFFSET(i32 %12)
  %14 = add nsw i32 %11, %13
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i64 @REG_RD(%struct.bxe_softc* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %21 = call i32 @BLOGE(%struct.bxe_softc* %20, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %67

22:                                               ; preds = %3
  %23 = load i32, i32* @XSTORM_AGG_INT_FINAL_CLEANUP_INDEX, align 4
  %24 = call i32 @OP_GEN_PARAM(i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @XSTORM_AGG_INT_FINAL_CLEANUP_COMP_TYPE, align 4
  %28 = call i32 @OP_GEN_TYPE(i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @OP_GEN_AGG_VECT(i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @SDM_OP_GEN_AGG_VECT_IDX_VALID_SHIFT, align 4
  %36 = shl i32 1, %35
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %40 = load i32, i32* @DBG_LOAD, align 4
  %41 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %39, i32 %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %43 = load i32, i32* @XSDM_REG_OPERATION_GEN, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @REG_WR(%struct.bxe_softc* %42, i32 %43, i32 %44)
  %46 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @bxe_flr_clnup_reg_poll(%struct.bxe_softc* %46, i32 %47, i32 1, i32 %48)
  %50 = icmp ne i32 %49, 1
  br i1 %50, label %51, label %62

51:                                               ; preds = %22
  %52 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %53 = call i32 @BLOGE(%struct.bxe_softc* %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %55 = load i32, i32* @DBG_LOAD, align 4
  %56 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i64 @REG_RD(%struct.bxe_softc* %56, i32 %57)
  %59 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %54, i32 %55, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i64 %58)
  %60 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %61 = call i32 @bxe_panic(%struct.bxe_softc* %60, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %67

62:                                               ; preds = %22
  %63 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @REG_WR(%struct.bxe_softc* %63, i32 %64, i32 0)
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %62, %51, %19
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @CSTORM_FINAL_CLEANUP_COMPLETE_OFFSET(i32) #1

declare dso_local i64 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @OP_GEN_PARAM(i32) #1

declare dso_local i32 @OP_GEN_TYPE(i32) #1

declare dso_local i32 @OP_GEN_AGG_VECT(i32) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, ...) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @bxe_flr_clnup_reg_poll(%struct.bxe_softc*, i32, i32, i32) #1

declare dso_local i32 @bxe_panic(%struct.bxe_softc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
