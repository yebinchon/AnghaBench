; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_reset_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_reset_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"bxe_reset_port called\0A\00", align 1
@NIG_REG_MASK_INTERRUPT_PORT0 = common dso_local global i64 0, align 8
@NIG_REG_LLH0_BRB1_DRV_MASK = common dso_local global i64 0, align 8
@NIG_REG_LLH1_BRB1_NOT_MCP = common dso_local global i64 0, align 8
@NIG_REG_LLH0_BRB1_NOT_MCP = common dso_local global i64 0, align 8
@MISC_REG_AEU_MASK_ATTN_FUNC_0 = common dso_local global i64 0, align 8
@BRB1_REG_PORT_NUM_OCC_BLOCKS_0 = common dso_local global i64 0, align 8
@DBG_LOAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"BRB1 is not empty, %d blocks are occupied\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_reset_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_reset_port(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %5 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %6 = call i32 @SC_PORT(%struct.bxe_softc* %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %8 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %10 = call i32 @bxe_link_reset(%struct.bxe_softc* %9)
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %12 = load i64, i64* @NIG_REG_MASK_INTERRUPT_PORT0, align 8
  %13 = load i32, i32* %3, align 4
  %14 = mul nsw i32 %13, 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %12, %15
  %17 = call i32 @REG_WR(%struct.bxe_softc* %11, i64 %16, i32 0)
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %19 = load i64, i64* @NIG_REG_LLH0_BRB1_DRV_MASK, align 8
  %20 = load i32, i32* %3, align 4
  %21 = mul nsw i32 %20, 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %19, %22
  %24 = call i32 @REG_WR(%struct.bxe_softc* %18, i64 %23, i32 0)
  %25 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i64, i64* @NIG_REG_LLH1_BRB1_NOT_MCP, align 8
  br label %32

30:                                               ; preds = %1
  %31 = load i64, i64* @NIG_REG_LLH0_BRB1_NOT_MCP, align 8
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i64 [ %29, %28 ], [ %31, %30 ]
  %34 = call i32 @REG_WR(%struct.bxe_softc* %25, i64 %33, i32 0)
  %35 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %36 = load i64, i64* @MISC_REG_AEU_MASK_ATTN_FUNC_0, align 8
  %37 = load i32, i32* %3, align 4
  %38 = mul nsw i32 %37, 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %36, %39
  %41 = call i32 @REG_WR(%struct.bxe_softc* %35, i64 %40, i32 0)
  %42 = call i32 @DELAY(i32 100000)
  %43 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %44 = load i64, i64* @BRB1_REG_PORT_NUM_OCC_BLOCKS_0, align 8
  %45 = load i32, i32* %3, align 4
  %46 = mul nsw i32 %45, 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %44, %47
  %49 = call i64 @REG_RD(%struct.bxe_softc* %43, i64 %48)
  store i64 %49, i64* %4, align 8
  %50 = load i64, i64* %4, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %32
  %53 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %54 = load i32, i32* @DBG_LOAD, align 4
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @BLOGD(%struct.bxe_softc* %53, i32 %54, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %55)
  br label %57

57:                                               ; preds = %52, %32
  ret void
}

declare dso_local i32 @SC_PORT(%struct.bxe_softc*) #1

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @bxe_link_reset(%struct.bxe_softc*) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i64 @REG_RD(%struct.bxe_softc*, i64) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
