; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_attn_int_deasserted0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_attn_int_deasserted0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@MISC_REG_AEU_ENABLE1_FUNC_1_OUT_0 = common dso_local global i32 0, align 4
@MISC_REG_AEU_ENABLE1_FUNC_0_OUT_0 = common dso_local global i32 0, align 4
@AEU_INPUTS_ATTN_BITS_SPIO5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"SPIO5 hw attention\0A\00", align 1
@HW_INTERRUT_ASSERT_SET_0 = common dso_local global i32 0, align 4
@BXE_ERR_MISC = common dso_local global i32 0, align 4
@taskqueue_thread = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"FATAL HW block attention set0 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, i32)* @bxe_attn_int_deasserted0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_attn_int_deasserted0(%struct.bxe_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %9 = call i32 @SC_PORT(%struct.bxe_softc* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @MISC_REG_AEU_ENABLE1_FUNC_1_OUT_0, align 4
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @MISC_REG_AEU_ENABLE1_FUNC_0_OUT_0, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @AEU_INPUTS_ATTN_BITS_SPIO5, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %16
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @REG_RD(%struct.bxe_softc* %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @AEU_INPUTS_ATTN_BITS_SPIO5, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @REG_WR(%struct.bxe_softc* %30, i32 %31, i32 %32)
  %34 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %35 = call i32 @BLOGW(%struct.bxe_softc* %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %37 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %36, i32 0, i32 1
  %38 = call i32 @elink_hw_reset_phy(i32* %37)
  %39 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %40 = call i32 @bxe_fan_failure(%struct.bxe_softc* %39)
  br label %41

41:                                               ; preds = %22, %16
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %44 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %42, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %41
  %50 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %51 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %57 = call i32 @bxe_acquire_phy_lock(%struct.bxe_softc* %56)
  %58 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %59 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %58, i32 0, i32 1
  %60 = call i32 @elink_handle_module_detect_int(i32* %59)
  %61 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %62 = call i32 @bxe_release_phy_lock(%struct.bxe_softc* %61)
  br label %63

63:                                               ; preds = %55, %49, %41
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @HW_INTERRUT_ASSERT_SET_0, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %98

68:                                               ; preds = %63
  %69 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @REG_RD(%struct.bxe_softc* %69, i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @HW_INTERRUT_ASSERT_SET_0, align 4
  %74 = and i32 %72, %73
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %7, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %7, align 4
  %78 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @REG_WR(%struct.bxe_softc* %78, i32 %79, i32 %80)
  %82 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %83 = load i32, i32* @BXE_ERR_MISC, align 4
  %84 = call i32 @BXE_SET_ERROR_BIT(%struct.bxe_softc* %82, i32 %83)
  %85 = load i32, i32* @taskqueue_thread, align 4
  %86 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %87 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %86, i32 0, i32 0
  %88 = load i32, i32* @hz, align 4
  %89 = sdiv i32 %88, 10
  %90 = call i32 @taskqueue_enqueue_timeout(i32 %85, i32* %87, i32 %89)
  %91 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @HW_INTERRUT_ASSERT_SET_0, align 4
  %94 = and i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i8*
  %97 = call i32 @bxe_panic(%struct.bxe_softc* %91, i8* %96)
  br label %98

98:                                               ; preds = %68, %63
  ret void
}

declare dso_local i32 @SC_PORT(%struct.bxe_softc*) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @BLOGW(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @elink_hw_reset_phy(i32*) #1

declare dso_local i32 @bxe_fan_failure(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_acquire_phy_lock(%struct.bxe_softc*) #1

declare dso_local i32 @elink_handle_module_detect_int(i32*) #1

declare dso_local i32 @bxe_release_phy_lock(%struct.bxe_softc*) #1

declare dso_local i32 @BXE_SET_ERROR_BIT(%struct.bxe_softc*, i32) #1

declare dso_local i32 @taskqueue_enqueue_timeout(i32, i32*, i32) #1

declare dso_local i32 @bxe_panic(%struct.bxe_softc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
