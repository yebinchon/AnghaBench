; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_stats.c_bxe_hw_stats_post.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_stats.c_bxe_hw_stats_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i64, i64, i32, %struct.dmae_cmd }
%struct.dmae_cmd = type { i32, i32, i32, i32, i64, i64, i32, i32, i64 }

@DMAE_COMP_VAL = common dso_local global i64 0, align 8
@func_stats = common dso_local global i32 0, align 4
@DMAE_SRC_PCI = common dso_local global i32 0, align 4
@DMAE_DST_GRC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@DMAE_COMP_GRC = common dso_local global i32 0, align 4
@DMAE_REG_CMD_MEM = common dso_local global i32 0, align 4
@dmae_reg_go_c = common dso_local global i32* null, align 8
@stats_comp = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_hw_stats_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_hw_stats_post(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca %struct.dmae_cmd*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %7 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %8 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %7, i32 0, i32 3
  store %struct.dmae_cmd* %8, %struct.dmae_cmd** %3, align 8
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %10 = load i64*, i64** %4, align 8
  %11 = ptrtoint i64* %10 to i32
  %12 = call i64* @BXE_SP(%struct.bxe_softc* %9, i32 %11)
  store i64* %12, i64** %4, align 8
  %13 = load i64, i64* @DMAE_COMP_VAL, align 8
  %14 = load i64*, i64** %4, align 8
  store i64 %13, i64* %14, align 8
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %16 = call i64 @CHIP_REV_IS_SLOW(%struct.bxe_softc* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %121

19:                                               ; preds = %1
  %20 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %21 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %26 = load i32, i32* @func_stats, align 4
  %27 = call i64* @BXE_SP(%struct.bxe_softc* %25, i32 %26)
  %28 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %29 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %28, i32 0, i32 2
  %30 = call i32 @memcpy(i64* %27, i32* %29, i32 4)
  br label %31

31:                                               ; preds = %24, %19
  %32 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %33 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %108

36:                                               ; preds = %31
  %37 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %38 = call i32 @PMF_DMAE_C(%struct.bxe_softc* %37)
  store i32 %38, i32* %5, align 4
  %39 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %40 = load i32, i32* @DMAE_SRC_PCI, align 4
  %41 = load i32, i32* @DMAE_DST_GRC, align 4
  %42 = load i32, i32* @TRUE, align 4
  %43 = load i32, i32* @DMAE_COMP_GRC, align 4
  %44 = call i64 @bxe_dmae_opcode(%struct.bxe_softc* %39, i32 %40, i32 %41, i32 %42, i32 %43)
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @bxe_dmae_opcode_clr_src_reset(i64 %45)
  store i64 %46, i64* %6, align 8
  %47 = load %struct.dmae_cmd*, %struct.dmae_cmd** %3, align 8
  %48 = call i32 @memset(%struct.dmae_cmd* %47, i32 0, i32 48)
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.dmae_cmd*, %struct.dmae_cmd** %3, align 8
  %51 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %50, i32 0, i32 8
  store i64 %49, i64* %51, align 8
  %52 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %53 = load %struct.dmae_cmd*, %struct.dmae_cmd** %3, align 8
  %54 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %53, i64 0
  %55 = call i32 @BXE_SP_MAPPING(%struct.bxe_softc* %52, %struct.dmae_cmd* byval(%struct.dmae_cmd) align 8 %54)
  %56 = call i32 @U64_LO(i32 %55)
  %57 = load %struct.dmae_cmd*, %struct.dmae_cmd** %3, align 8
  %58 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %57, i32 0, i32 7
  store i32 %56, i32* %58, align 4
  %59 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %60 = load %struct.dmae_cmd*, %struct.dmae_cmd** %3, align 8
  %61 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %60, i64 0
  %62 = call i32 @BXE_SP_MAPPING(%struct.bxe_softc* %59, %struct.dmae_cmd* byval(%struct.dmae_cmd) align 8 %61)
  %63 = call i32 @U64_HI(i32 %62)
  %64 = load %struct.dmae_cmd*, %struct.dmae_cmd** %3, align 8
  %65 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @DMAE_REG_CMD_MEM, align 4
  %67 = sext i32 %66 to i64
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = mul i64 48, %70
  %72 = add i64 %67, %71
  %73 = lshr i64 %72, 2
  %74 = trunc i64 %73 to i32
  %75 = load %struct.dmae_cmd*, %struct.dmae_cmd** %3, align 8
  %76 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.dmae_cmd*, %struct.dmae_cmd** %3, align 8
  %78 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %77, i32 0, i32 5
  store i64 0, i64* %78, align 8
  %79 = load %struct.dmae_cmd*, %struct.dmae_cmd** %3, align 8
  %80 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %79, i32 0, i32 1
  store i32 12, i32* %80, align 4
  %81 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %82 = call i64 @CHIP_IS_E1(%struct.bxe_softc* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %36
  %85 = load %struct.dmae_cmd*, %struct.dmae_cmd** %3, align 8
  %86 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %84, %36
  %90 = load i32*, i32** @dmae_reg_go_c, align 8
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = ashr i32 %95, 2
  %97 = load %struct.dmae_cmd*, %struct.dmae_cmd** %3, align 8
  %98 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load %struct.dmae_cmd*, %struct.dmae_cmd** %3, align 8
  %100 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %99, i32 0, i32 4
  store i64 0, i64* %100, align 8
  %101 = load %struct.dmae_cmd*, %struct.dmae_cmd** %3, align 8
  %102 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %101, i32 0, i32 3
  store i32 1, i32* %102, align 4
  %103 = load i64*, i64** %4, align 8
  store i64 0, i64* %103, align 8
  %104 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %105 = load %struct.dmae_cmd*, %struct.dmae_cmd** %3, align 8
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @bxe_post_dmae(%struct.bxe_softc* %104, %struct.dmae_cmd* %105, i32 %106)
  br label %121

108:                                              ; preds = %31
  %109 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %110 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %108
  %114 = load i64*, i64** %4, align 8
  store i64 0, i64* %114, align 8
  %115 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %116 = load %struct.dmae_cmd*, %struct.dmae_cmd** %3, align 8
  %117 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %118 = call i32 @INIT_DMAE_C(%struct.bxe_softc* %117)
  %119 = call i32 @bxe_post_dmae(%struct.bxe_softc* %115, %struct.dmae_cmd* %116, i32 %118)
  br label %120

120:                                              ; preds = %113, %108
  br label %121

121:                                              ; preds = %18, %120, %89
  ret void
}

declare dso_local i64* @BXE_SP(%struct.bxe_softc*, i32) #1

declare dso_local i64 @CHIP_REV_IS_SLOW(%struct.bxe_softc*) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i32 @PMF_DMAE_C(%struct.bxe_softc*) #1

declare dso_local i64 @bxe_dmae_opcode(%struct.bxe_softc*, i32, i32, i32, i32) #1

declare dso_local i64 @bxe_dmae_opcode_clr_src_reset(i64) #1

declare dso_local i32 @memset(%struct.dmae_cmd*, i32, i32) #1

declare dso_local i32 @U64_LO(i32) #1

declare dso_local i32 @BXE_SP_MAPPING(%struct.bxe_softc*, %struct.dmae_cmd* byval(%struct.dmae_cmd) align 8) #1

declare dso_local i32 @U64_HI(i32) #1

declare dso_local i64 @CHIP_IS_E1(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_post_dmae(%struct.bxe_softc*, %struct.dmae_cmd*, i32) #1

declare dso_local i32 @INIT_DMAE_C(%struct.bxe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
