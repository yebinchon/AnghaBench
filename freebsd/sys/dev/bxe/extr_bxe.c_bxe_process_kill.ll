; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_process_kill.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_process_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@PXP2_REG_RD_SR_CNT = common dso_local global i32 0, align 4
@PXP2_REG_RD_BLK_CNT = common dso_local global i32 0, align 4
@PXP2_REG_RD_PORT_IS_IDLE_0 = common dso_local global i32 0, align 4
@PXP2_REG_RD_PORT_IS_IDLE_1 = common dso_local global i32 0, align 4
@PXP2_REG_PGL_EXP_ROM2 = common dso_local global i32 0, align 4
@PGLUE_B_REG_TAGS_63_32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [191 x i8] c"ERROR: Tetris buffer didn't get empty or there are still outstanding read requests after 1s! sr_cnt=0x%08x, blk_cnt=0x%08x, port_is_idle_0=0x%08x, port_is_idle_1=0x%08x, pgl_exp_rom2=0x%08x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@MISC_REG_UNPREPARED = common dso_local global i32 0, align 4
@PGLUE_B_REG_LATCHED_ERRORS_CLR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, i32)* @bxe_process_kill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_process_kill(%struct.bxe_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1000, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %64, %2
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %16 = load i32, i32* @PXP2_REG_RD_SR_CNT, align 4
  %17 = call i32 @REG_RD(%struct.bxe_softc* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %19 = load i32, i32* @PXP2_REG_RD_BLK_CNT, align 4
  %20 = call i32 @REG_RD(%struct.bxe_softc* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %22 = load i32, i32* @PXP2_REG_RD_PORT_IS_IDLE_0, align 4
  %23 = call i32 @REG_RD(%struct.bxe_softc* %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %25 = load i32, i32* @PXP2_REG_RD_PORT_IS_IDLE_1, align 4
  %26 = call i32 @REG_RD(%struct.bxe_softc* %24, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %28 = load i32, i32* @PXP2_REG_PGL_EXP_ROM2, align 4
  %29 = call i32 @REG_RD(%struct.bxe_softc* %27, i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %31 = call i64 @CHIP_IS_E3(%struct.bxe_softc* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %14
  %34 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %35 = load i32, i32* @PGLUE_B_REG_TAGS_63_32, align 4
  %36 = call i32 @REG_RD(%struct.bxe_softc* %34, i32 %35)
  store i32 %36, i32* %13, align 4
  br label %37

37:                                               ; preds = %33, %14
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 126
  br i1 %39, label %40, label %62

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 160
  br i1 %42, label %43, label %62

43:                                               ; preds = %40
  %44 = load i32, i32* %10, align 4
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %62

47:                                               ; preds = %43
  %48 = load i32, i32* %11, align 4
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load i32, i32* %12, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %56 = call i64 @CHIP_IS_E3(%struct.bxe_softc* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* %13, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %62

61:                                               ; preds = %58, %54
  br label %68

62:                                               ; preds = %58, %51, %47, %43, %40, %37
  %63 = call i32 @DELAY(i32 1000)
  br label %64

64:                                               ; preds = %62
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %6, align 4
  %67 = icmp sgt i32 %65, 0
  br i1 %67, label %14, label %68

68:                                               ; preds = %64, %61
  %69 = load i32, i32* %6, align 4
  %70 = icmp sle i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @BLOGE(%struct.bxe_softc* %72, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %74, i32 %75, i32 %76, i32 %77)
  store i32 -1, i32* %3, align 4
  br label %132

79:                                               ; preds = %68
  %80 = call i32 (...) @mb()
  %81 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %82 = load i32, i32* @TRUE, align 4
  %83 = call i32 @bxe_set_234_gates(%struct.bxe_softc* %81, i32 %82)
  %84 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %85 = call i32 @CHIP_IS_E1x(%struct.bxe_softc* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %79
  %88 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %89 = call i64 @bxe_er_poll_igu_vq(%struct.bxe_softc* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 -1, i32* %3, align 4
  br label %132

92:                                               ; preds = %87, %79
  %93 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %94 = load i32, i32* @MISC_REG_UNPREPARED, align 4
  %95 = call i32 @REG_WR(%struct.bxe_softc* %93, i32 %94, i32 0)
  %96 = call i32 (...) @mb()
  %97 = call i32 (...) @wmb()
  %98 = call i32 @DELAY(i32 1000)
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %92
  %102 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %103 = call i32 @bxe_reset_mcp_prep(%struct.bxe_softc* %102, i32* %7)
  br label %104

104:                                              ; preds = %101, %92
  %105 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %106 = call i32 @bxe_pxp_prep(%struct.bxe_softc* %105)
  %107 = call i32 (...) @mb()
  %108 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @bxe_process_kill_chip_reset(%struct.bxe_softc* %108, i32 %109)
  %111 = call i32 (...) @mb()
  %112 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %113 = call i32 @CHIP_IS_E1(%struct.bxe_softc* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %104
  %116 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %117 = load i32, i32* @PGLUE_B_REG_LATCHED_ERRORS_CLR, align 4
  %118 = call i32 @REG_WR(%struct.bxe_softc* %116, i32 %117, i32 127)
  br label %119

119:                                              ; preds = %115, %104
  %120 = load i32, i32* %5, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %119
  %123 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %124 = load i32, i32* %7, align 4
  %125 = call i64 @bxe_reset_mcp_comp(%struct.bxe_softc* %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  store i32 -1, i32* %3, align 4
  br label %132

128:                                              ; preds = %122, %119
  %129 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %130 = load i32, i32* @FALSE, align 4
  %131 = call i32 @bxe_set_234_gates(%struct.bxe_softc* %129, i32 %130)
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %128, %127, %91, %71
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i64 @CHIP_IS_E3(%struct.bxe_softc*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @bxe_set_234_gates(%struct.bxe_softc*, i32) #1

declare dso_local i32 @CHIP_IS_E1x(%struct.bxe_softc*) #1

declare dso_local i64 @bxe_er_poll_igu_vq(%struct.bxe_softc*) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @bxe_reset_mcp_prep(%struct.bxe_softc*, i32*) #1

declare dso_local i32 @bxe_pxp_prep(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_process_kill_chip_reset(%struct.bxe_softc*, i32) #1

declare dso_local i32 @CHIP_IS_E1(%struct.bxe_softc*) #1

declare dso_local i64 @bxe_reset_mcp_comp(%struct.bxe_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
