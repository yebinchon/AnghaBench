; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_grc_is_mem_included.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_grc_is_mem_included.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_defs = type { i64, i64 }
%struct.big_ram_defs = type { i64, i64, i32 }
%struct.ecore_hwfn = type { i32 }

@s_block_defs = common dso_local global %struct.block_defs** null, align 8
@NUM_BIG_RAM_TYPES = common dso_local global i64 0, align 8
@s_big_ram_defs = common dso_local global %struct.big_ram_defs* null, align 8
@DBG_GRC_PARAM_DUMP_PXP = common dso_local global i32 0, align 4
@DBG_GRC_PARAM_DUMP_RAM = common dso_local global i32 0, align 4
@DBG_GRC_PARAM_DUMP_PBUF = common dso_local global i32 0, align 4
@DBG_GRC_PARAM_DUMP_CAU = common dso_local global i32 0, align 4
@DBG_GRC_PARAM_DUMP_QM = common dso_local global i32 0, align 4
@DBG_GRC_PARAM_DUMP_CFC = common dso_local global i32 0, align 4
@DBG_GRC_PARAM_DUMP_CM_CTX = common dso_local global i32 0, align 4
@DBG_GRC_PARAM_DUMP_IGU = common dso_local global i32 0, align 4
@DBG_GRC_PARAM_DUMP_MULD = common dso_local global i32 0, align 4
@DBG_GRC_PARAM_DUMP_PRS = common dso_local global i32 0, align 4
@DBG_GRC_PARAM_DUMP_DMAE = common dso_local global i32 0, align 4
@DBG_GRC_PARAM_DUMP_TM = common dso_local global i32 0, align 4
@DBG_GRC_PARAM_DUMP_SDM = common dso_local global i32 0, align 4
@DBG_GRC_PARAM_DUMP_DIF = common dso_local global i32 0, align 4
@DBG_GRC_PARAM_DUMP_CM = common dso_local global i32 0, align 4
@DBG_GRC_PARAM_DUMP_IOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, i32, i64)* @ecore_grc_is_mem_included to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_grc_is_mem_included(%struct.ecore_hwfn* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.block_defs*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.big_ram_defs*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load %struct.block_defs**, %struct.block_defs*** @s_block_defs, align 8
  %12 = load i32, i32* %6, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.block_defs*, %struct.block_defs** %11, i64 %13
  %15 = load %struct.block_defs*, %struct.block_defs** %14, align 8
  store %struct.block_defs* %15, %struct.block_defs** %8, align 8
  %16 = load %struct.block_defs*, %struct.block_defs** %8, align 8
  %17 = getelementptr inbounds %struct.block_defs, %struct.block_defs* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %22 = load %struct.block_defs*, %struct.block_defs** %8, align 8
  %23 = getelementptr inbounds %struct.block_defs, %struct.block_defs* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @ecore_grc_is_storm_included(%struct.ecore_hwfn* %21, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %131

29:                                               ; preds = %20, %3
  store i64 0, i64* %9, align 8
  br label %30

30:                                               ; preds = %56, %29
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @NUM_BIG_RAM_TYPES, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %59

34:                                               ; preds = %30
  %35 = load %struct.big_ram_defs*, %struct.big_ram_defs** @s_big_ram_defs, align 8
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds %struct.big_ram_defs, %struct.big_ram_defs* %35, i64 %36
  store %struct.big_ram_defs* %37, %struct.big_ram_defs** %10, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.big_ram_defs*, %struct.big_ram_defs** %10, align 8
  %40 = getelementptr inbounds %struct.big_ram_defs, %struct.big_ram_defs* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %34
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.big_ram_defs*, %struct.big_ram_defs** %10, align 8
  %46 = getelementptr inbounds %struct.big_ram_defs, %struct.big_ram_defs* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %43, %34
  %50 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %51 = load %struct.big_ram_defs*, %struct.big_ram_defs** %10, align 8
  %52 = getelementptr inbounds %struct.big_ram_defs, %struct.big_ram_defs* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @ecore_grc_is_included(%struct.ecore_hwfn* %50, i32 %53)
  store i32 %54, i32* %4, align 4
  br label %131

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %9, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %9, align 8
  br label %30

59:                                               ; preds = %30
  %60 = load i64, i64* %7, align 8
  switch i64 %60, label %130 [
    i64 136, label %61
    i64 135, label %61
    i64 133, label %65
    i64 138, label %69
    i64 149, label %73
    i64 147, label %73
    i64 148, label %73
    i64 134, label %77
    i64 146, label %81
    i64 144, label %81
    i64 130, label %81
    i64 142, label %94
    i64 141, label %94
    i64 139, label %98
    i64 137, label %102
    i64 143, label %106
    i64 128, label %110
    i64 131, label %114
    i64 129, label %118
    i64 132, label %118
    i64 145, label %122
    i64 140, label %126
  ]

61:                                               ; preds = %59, %59
  %62 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %63 = load i32, i32* @DBG_GRC_PARAM_DUMP_PXP, align 4
  %64 = call i32 @ecore_grc_is_included(%struct.ecore_hwfn* %62, i32 %63)
  store i32 %64, i32* %4, align 4
  br label %131

65:                                               ; preds = %59
  %66 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %67 = load i32, i32* @DBG_GRC_PARAM_DUMP_RAM, align 4
  %68 = call i32 @ecore_grc_is_included(%struct.ecore_hwfn* %66, i32 %67)
  store i32 %68, i32* %4, align 4
  br label %131

69:                                               ; preds = %59
  %70 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %71 = load i32, i32* @DBG_GRC_PARAM_DUMP_PBUF, align 4
  %72 = call i32 @ecore_grc_is_included(%struct.ecore_hwfn* %70, i32 %71)
  store i32 %72, i32* %4, align 4
  br label %131

73:                                               ; preds = %59, %59, %59
  %74 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %75 = load i32, i32* @DBG_GRC_PARAM_DUMP_CAU, align 4
  %76 = call i32 @ecore_grc_is_included(%struct.ecore_hwfn* %74, i32 %75)
  store i32 %76, i32* %4, align 4
  br label %131

77:                                               ; preds = %59
  %78 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %79 = load i32, i32* @DBG_GRC_PARAM_DUMP_QM, align 4
  %80 = call i32 @ecore_grc_is_included(%struct.ecore_hwfn* %78, i32 %79)
  store i32 %80, i32* %4, align 4
  br label %131

81:                                               ; preds = %59, %59, %59
  %82 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %83 = load i32, i32* @DBG_GRC_PARAM_DUMP_CFC, align 4
  %84 = call i32 @ecore_grc_is_included(%struct.ecore_hwfn* %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %88 = load i32, i32* @DBG_GRC_PARAM_DUMP_CM_CTX, align 4
  %89 = call i32 @ecore_grc_is_included(%struct.ecore_hwfn* %87, i32 %88)
  %90 = icmp ne i32 %89, 0
  br label %91

91:                                               ; preds = %86, %81
  %92 = phi i1 [ true, %81 ], [ %90, %86 ]
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %4, align 4
  br label %131

94:                                               ; preds = %59, %59
  %95 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %96 = load i32, i32* @DBG_GRC_PARAM_DUMP_IGU, align 4
  %97 = call i32 @ecore_grc_is_included(%struct.ecore_hwfn* %95, i32 %96)
  store i32 %97, i32* %4, align 4
  br label %131

98:                                               ; preds = %59
  %99 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %100 = load i32, i32* @DBG_GRC_PARAM_DUMP_MULD, align 4
  %101 = call i32 @ecore_grc_is_included(%struct.ecore_hwfn* %99, i32 %100)
  store i32 %101, i32* %4, align 4
  br label %131

102:                                              ; preds = %59
  %103 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %104 = load i32, i32* @DBG_GRC_PARAM_DUMP_PRS, align 4
  %105 = call i32 @ecore_grc_is_included(%struct.ecore_hwfn* %103, i32 %104)
  store i32 %105, i32* %4, align 4
  br label %131

106:                                              ; preds = %59
  %107 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %108 = load i32, i32* @DBG_GRC_PARAM_DUMP_DMAE, align 4
  %109 = call i32 @ecore_grc_is_included(%struct.ecore_hwfn* %107, i32 %108)
  store i32 %109, i32* %4, align 4
  br label %131

110:                                              ; preds = %59
  %111 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %112 = load i32, i32* @DBG_GRC_PARAM_DUMP_TM, align 4
  %113 = call i32 @ecore_grc_is_included(%struct.ecore_hwfn* %111, i32 %112)
  store i32 %113, i32* %4, align 4
  br label %131

114:                                              ; preds = %59
  %115 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %116 = load i32, i32* @DBG_GRC_PARAM_DUMP_SDM, align 4
  %117 = call i32 @ecore_grc_is_included(%struct.ecore_hwfn* %115, i32 %116)
  store i32 %117, i32* %4, align 4
  br label %131

118:                                              ; preds = %59, %59
  %119 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %120 = load i32, i32* @DBG_GRC_PARAM_DUMP_DIF, align 4
  %121 = call i32 @ecore_grc_is_included(%struct.ecore_hwfn* %119, i32 %120)
  store i32 %121, i32* %4, align 4
  br label %131

122:                                              ; preds = %59
  %123 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %124 = load i32, i32* @DBG_GRC_PARAM_DUMP_CM, align 4
  %125 = call i32 @ecore_grc_is_included(%struct.ecore_hwfn* %123, i32 %124)
  store i32 %125, i32* %4, align 4
  br label %131

126:                                              ; preds = %59
  %127 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %128 = load i32, i32* @DBG_GRC_PARAM_DUMP_IOR, align 4
  %129 = call i32 @ecore_grc_is_included(%struct.ecore_hwfn* %127, i32 %128)
  store i32 %129, i32* %4, align 4
  br label %131

130:                                              ; preds = %59
  store i32 1, i32* %4, align 4
  br label %131

131:                                              ; preds = %130, %126, %122, %118, %114, %110, %106, %102, %98, %94, %91, %77, %73, %69, %65, %61, %49, %28
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @ecore_grc_is_storm_included(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @ecore_grc_is_included(%struct.ecore_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
