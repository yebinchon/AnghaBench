; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_grc_dump_phy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_grc_dump_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_defs = type { i32, i32, i32, i32, i32, i32 }
%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

@s_phy_defs = common dso_local global %struct.phy_defs* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"tbus_%s\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Unexpected debug error: invalid PHY memory name\0A\00", align 1
@PHY_DUMP_SIZE_DWORDS = common dso_local global i32 0, align 4
@NUM_PHY_TBUS_ADDRESSES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32)* @ecore_grc_dump_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_grc_dump_phy(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [32 x i8], align 16
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.phy_defs*, align 8
  %19 = alloca i64*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i64 0, i64* %13, align 8
  br label %20

20:                                               ; preds = %134, %4
  %21 = load i64, i64* %13, align 8
  %22 = load %struct.phy_defs*, %struct.phy_defs** @s_phy_defs, align 8
  %23 = call i64 @OSAL_ARRAY_SIZE(%struct.phy_defs* %22)
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %25, label %137

25:                                               ; preds = %20
  %26 = load %struct.phy_defs*, %struct.phy_defs** @s_phy_defs, align 8
  %27 = load i64, i64* %13, align 8
  %28 = getelementptr inbounds %struct.phy_defs, %struct.phy_defs* %26, i64 %27
  store %struct.phy_defs* %28, %struct.phy_defs** %18, align 8
  %29 = load %struct.phy_defs*, %struct.phy_defs** %18, align 8
  %30 = getelementptr inbounds %struct.phy_defs, %struct.phy_defs* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.phy_defs*, %struct.phy_defs** %18, align 8
  %33 = getelementptr inbounds %struct.phy_defs, %struct.phy_defs* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %31, %34
  store i32 %35, i32* %14, align 4
  %36 = load %struct.phy_defs*, %struct.phy_defs** %18, align 8
  %37 = getelementptr inbounds %struct.phy_defs, %struct.phy_defs* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.phy_defs*, %struct.phy_defs** %18, align 8
  %40 = getelementptr inbounds %struct.phy_defs, %struct.phy_defs* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %38, %41
  store i32 %42, i32* %15, align 4
  %43 = load %struct.phy_defs*, %struct.phy_defs** %18, align 8
  %44 = getelementptr inbounds %struct.phy_defs, %struct.phy_defs* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.phy_defs*, %struct.phy_defs** %18, align 8
  %47 = getelementptr inbounds %struct.phy_defs, %struct.phy_defs* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %45, %48
  store i32 %49, i32* %16, align 4
  %50 = load %struct.phy_defs*, %struct.phy_defs** %18, align 8
  %51 = getelementptr inbounds %struct.phy_defs, %struct.phy_defs* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.phy_defs*, %struct.phy_defs** %18, align 8
  %54 = getelementptr inbounds %struct.phy_defs, %struct.phy_defs* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %52, %55
  store i32 %56, i32* %17, align 4
  %57 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %58 = load %struct.phy_defs*, %struct.phy_defs** %18, align 8
  %59 = getelementptr inbounds %struct.phy_defs, %struct.phy_defs* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @OSAL_SNPRINTF(i8* %57, i32 32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %25
  %64 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %65 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %64, i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %25
  %67 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %8, align 4
  %73 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %74 = load i32, i32* @PHY_DUMP_SIZE_DWORDS, align 4
  %75 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %76 = call i32 @ecore_grc_dump_mem_hdr(%struct.ecore_hwfn* %67, i32* %71, i32 %72, i8* %73, i32 0, i32 %74, i32 16, i32 1, i8* %75, i32 0, i32 0)
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %66
  %82 = load i32, i32* @PHY_DUMP_SIZE_DWORDS, align 4
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %9, align 4
  br label %134

85:                                               ; preds = %66
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = bitcast i32* %89 to i64*
  store i64* %90, i64** %19, align 8
  store i32 0, i32* %11, align 4
  br label %91

91:                                               ; preds = %127, %85
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @NUM_PHY_TBUS_ADDRESSES, align 4
  %94 = ashr i32 %93, 8
  %95 = icmp slt i32 %92, %94
  br i1 %95, label %96, label %130

96:                                               ; preds = %91
  %97 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %98 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @ecore_wr(%struct.ecore_hwfn* %97, %struct.ecore_ptt* %98, i32 %99, i32 %100)
  store i32 0, i32* %10, align 4
  br label %102

102:                                              ; preds = %123, %96
  %103 = load i32, i32* %10, align 4
  %104 = icmp slt i32 %103, 256
  br i1 %104, label %105, label %126

105:                                              ; preds = %102
  %106 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %107 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @ecore_wr(%struct.ecore_hwfn* %106, %struct.ecore_ptt* %107, i32 %108, i32 %109)
  %111 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %112 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %113 = load i32, i32* %16, align 4
  %114 = call i64 @ecore_rd(%struct.ecore_hwfn* %111, %struct.ecore_ptt* %112, i32 %113)
  %115 = load i64*, i64** %19, align 8
  %116 = getelementptr inbounds i64, i64* %115, i32 1
  store i64* %116, i64** %19, align 8
  store i64 %114, i64* %115, align 8
  %117 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %118 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %119 = load i32, i32* %17, align 4
  %120 = call i64 @ecore_rd(%struct.ecore_hwfn* %117, %struct.ecore_ptt* %118, i32 %119)
  %121 = load i64*, i64** %19, align 8
  %122 = getelementptr inbounds i64, i64* %121, i32 1
  store i64* %122, i64** %19, align 8
  store i64 %120, i64* %121, align 8
  br label %123

123:                                              ; preds = %105
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %102

126:                                              ; preds = %102
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %11, align 4
  br label %91

130:                                              ; preds = %91
  %131 = load i32, i32* @PHY_DUMP_SIZE_DWORDS, align 4
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %130, %81
  %135 = load i64, i64* %13, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %13, align 8
  br label %20

137:                                              ; preds = %20
  %138 = load i32, i32* %9, align 4
  ret i32 %138
}

declare dso_local i64 @OSAL_ARRAY_SIZE(%struct.phy_defs*) #1

declare dso_local i64 @OSAL_SNPRINTF(i8*, i32, i8*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @ecore_grc_dump_mem_hdr(%struct.ecore_hwfn*, i32*, i32, i8*, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i64 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
