; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_config_rss_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_config_rss_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_rss_ind_tbl_cmd = type { i8*, i8*, i32, i8*, i8* }

@FW_RSS_IND_TBL_CMD = common dso_local global i32 0, align 4
@F_FW_CMD_REQUEST = common dso_local global i32 0, align 4
@F_FW_CMD_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_config_rss_range(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca %struct.fw_rss_ind_tbl_cmd, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca [3 x i64], align 16
  %24 = alloca i64*, align 8
  %25 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i64* %5, i64** %14, align 8
  store i32 %6, i32* %15, align 4
  %26 = load i64*, i64** %14, align 8
  store i64* %26, i64** %17, align 8
  %27 = load i64*, i64** %14, align 8
  %28 = load i32, i32* %15, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  store i64* %30, i64** %18, align 8
  %31 = call i32 @memset(%struct.fw_rss_ind_tbl_cmd* %19, i32 0, i32 40)
  %32 = load i32, i32* @FW_RSS_IND_TBL_CMD, align 4
  %33 = call i32 @V_FW_CMD_OP(i32 %32)
  %34 = load i32, i32* @F_FW_CMD_REQUEST, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @F_FW_CMD_WRITE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @V_FW_RSS_IND_TBL_CMD_VIID(i32 %38)
  %40 = or i32 %37, %39
  %41 = call i8* @cpu_to_be32(i32 %40)
  %42 = getelementptr inbounds %struct.fw_rss_ind_tbl_cmd, %struct.fw_rss_ind_tbl_cmd* %19, i32 0, i32 4
  store i8* %41, i8** %42, align 8
  %43 = call i32 @FW_LEN16(%struct.fw_rss_ind_tbl_cmd* byval(%struct.fw_rss_ind_tbl_cmd) align 8 %19)
  %44 = call i8* @cpu_to_be32(i32 %43)
  %45 = getelementptr inbounds %struct.fw_rss_ind_tbl_cmd, %struct.fw_rss_ind_tbl_cmd* %19, i32 0, i32 3
  store i8* %44, i8** %45, align 8
  br label %46

46:                                               ; preds = %126, %7
  %47 = load i32, i32* %13, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %127

49:                                               ; preds = %46
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @min(i32 %50, i32 32)
  store i32 %51, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %52 = getelementptr inbounds %struct.fw_rss_ind_tbl_cmd, %struct.fw_rss_ind_tbl_cmd* %19, i32 0, i32 2
  store i32* %52, i32** %22, align 8
  %53 = load i32, i32* %20, align 4
  %54 = call i8* @cpu_to_be16(i32 %53)
  %55 = getelementptr inbounds %struct.fw_rss_ind_tbl_cmd, %struct.fw_rss_ind_tbl_cmd* %19, i32 0, i32 1
  store i8* %54, i8** %55, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i8* @cpu_to_be16(i32 %56)
  %58 = getelementptr inbounds %struct.fw_rss_ind_tbl_cmd, %struct.fw_rss_ind_tbl_cmd* %19, i32 0, i32 0
  store i8* %57, i8** %58, align 8
  %59 = load i32, i32* %20, align 4
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %20, align 4
  %63 = load i32, i32* %13, align 4
  %64 = sub nsw i32 %63, %62
  store i32 %64, i32* %13, align 4
  br label %65

65:                                               ; preds = %102, %49
  %66 = load i32, i32* %20, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %118

68:                                               ; preds = %65
  %69 = getelementptr inbounds [3 x i64], [3 x i64]* %23, i64 0, i64 0
  store i64* %69, i64** %24, align 8
  %70 = load i32, i32* %20, align 4
  %71 = call i32 @min(i32 3, i32 %70)
  store i32 %71, i32* %25, align 4
  %72 = load i32, i32* %25, align 4
  %73 = load i32, i32* %20, align 4
  %74 = sub nsw i32 %73, %72
  store i32 %74, i32* %20, align 4
  %75 = getelementptr inbounds [3 x i64], [3 x i64]* %23, i64 0, i64 2
  store i64 0, i64* %75, align 16
  %76 = getelementptr inbounds [3 x i64], [3 x i64]* %23, i64 0, i64 1
  store i64 0, i64* %76, align 8
  %77 = getelementptr inbounds [3 x i64], [3 x i64]* %23, i64 0, i64 0
  store i64 0, i64* %77, align 16
  br label %78

78:                                               ; preds = %101, %68
  %79 = load i32, i32* %25, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* %21, align 4
  %83 = icmp slt i32 %82, 32
  br label %84

84:                                               ; preds = %81, %78
  %85 = phi i1 [ false, %78 ], [ %83, %81 ]
  br i1 %85, label %86, label %102

86:                                               ; preds = %84
  %87 = load i32, i32* %25, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %25, align 4
  %89 = load i32, i32* %21, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %21, align 4
  %91 = load i64*, i64** %17, align 8
  %92 = getelementptr inbounds i64, i64* %91, i32 1
  store i64* %92, i64** %17, align 8
  %93 = load i64, i64* %91, align 8
  %94 = load i64*, i64** %24, align 8
  %95 = getelementptr inbounds i64, i64* %94, i32 1
  store i64* %95, i64** %24, align 8
  store i64 %93, i64* %94, align 8
  %96 = load i64*, i64** %17, align 8
  %97 = load i64*, i64** %18, align 8
  %98 = icmp uge i64* %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %86
  %100 = load i64*, i64** %14, align 8
  store i64* %100, i64** %17, align 8
  br label %101

101:                                              ; preds = %99, %86
  br label %78

102:                                              ; preds = %84
  %103 = getelementptr inbounds [3 x i64], [3 x i64]* %23, i64 0, i64 0
  %104 = load i64, i64* %103, align 16
  %105 = call i32 @V_FW_RSS_IND_TBL_CMD_IQ0(i64 %104)
  %106 = getelementptr inbounds [3 x i64], [3 x i64]* %23, i64 0, i64 1
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @V_FW_RSS_IND_TBL_CMD_IQ1(i64 %107)
  %109 = or i32 %105, %108
  %110 = getelementptr inbounds [3 x i64], [3 x i64]* %23, i64 0, i64 2
  %111 = load i64, i64* %110, align 16
  %112 = call i32 @V_FW_RSS_IND_TBL_CMD_IQ2(i64 %111)
  %113 = or i32 %109, %112
  %114 = call i8* @cpu_to_be32(i32 %113)
  %115 = ptrtoint i8* %114 to i32
  %116 = load i32*, i32** %22, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %22, align 8
  store i32 %115, i32* %116, align 4
  br label %65

118:                                              ; preds = %65
  %119 = load %struct.adapter*, %struct.adapter** %9, align 8
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @t4_wr_mbox(%struct.adapter* %119, i32 %120, %struct.fw_rss_ind_tbl_cmd* %19, i32 40, i32* null)
  store i32 %121, i32* %16, align 4
  %122 = load i32, i32* %16, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = load i32, i32* %16, align 4
  store i32 %125, i32* %8, align 4
  br label %128

126:                                              ; preds = %118
  br label %46

127:                                              ; preds = %46
  store i32 0, i32* %8, align 4
  br label %128

128:                                              ; preds = %127, %124
  %129 = load i32, i32* %8, align 4
  ret i32 %129
}

declare dso_local i32 @memset(%struct.fw_rss_ind_tbl_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @V_FW_CMD_OP(i32) #1

declare dso_local i32 @V_FW_RSS_IND_TBL_CMD_VIID(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_rss_ind_tbl_cmd* byval(%struct.fw_rss_ind_tbl_cmd) align 8) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @V_FW_RSS_IND_TBL_CMD_IQ0(i64) #1

declare dso_local i32 @V_FW_RSS_IND_TBL_CMD_IQ1(i64) #1

declare dso_local i32 @V_FW_RSS_IND_TBL_CMD_IQ2(i64) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_rss_ind_tbl_cmd*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
