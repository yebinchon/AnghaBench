; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_pbt_tables.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_pbt_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { i32 (i8*)*, i64, %struct.adapter* }
%struct.adapter = type { i32 }
%struct.cudbg_buffer = type { i32, i64 }
%struct.cudbg_error = type { i32 }
%struct.cudbg_pbt_tables = type { i32*, i32*, i32*, i32* }

@CUDBG_CHAC_PBT_ADDR = common dso_local global i32 0, align 4
@CUDBG_PBT_DYNAMIC_ENTRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"BUSY timeout readingCIM_HOST_ACC_CTRL\0A\00", align 1
@CUDBG_PBT_STATIC_ENTRIES = common dso_local global i32 0, align 4
@CUDBG_CHAC_PBT_LRF = common dso_local global i32 0, align 4
@CUDBG_LRF_ENTRIES = common dso_local global i32 0, align 4
@CUDBG_CHAC_PBT_DATA = common dso_local global i32 0, align 4
@CUDBG_PBT_DATA_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_error*)* @collect_pbt_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_pbt_tables(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_error* %2) #0 {
  %4 = alloca %struct.cudbg_init*, align 8
  %5 = alloca %struct.cudbg_buffer*, align 8
  %6 = alloca %struct.cudbg_error*, align 8
  %7 = alloca %struct.cudbg_buffer, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca %struct.cudbg_pbt_tables*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cudbg_init* %0, %struct.cudbg_init** %4, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %5, align 8
  store %struct.cudbg_error* %2, %struct.cudbg_error** %6, align 8
  %14 = load %struct.cudbg_init*, %struct.cudbg_init** %4, align 8
  %15 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %14, i32 0, i32 2
  %16 = load %struct.adapter*, %struct.adapter** %15, align 8
  store %struct.adapter* %16, %struct.adapter** %8, align 8
  store %struct.cudbg_pbt_tables* null, %struct.cudbg_pbt_tables** %9, align 8
  store i32 32, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %7, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %20 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %7, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @get_scratch_buff(%struct.cudbg_buffer* %19, i32 %21, %struct.cudbg_buffer* %7)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %186

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %7, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.cudbg_pbt_tables*
  store %struct.cudbg_pbt_tables* %29, %struct.cudbg_pbt_tables** %9, align 8
  %30 = load i32, i32* @CUDBG_CHAC_PBT_ADDR, align 4
  store i32 %30, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %62, %26
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @CUDBG_PBT_DYNAMIC_ENTRIES, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %65

35:                                               ; preds = %31
  %36 = load %struct.adapter*, %struct.adapter** %8, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = mul nsw i32 %38, 4
  %40 = add nsw i32 %37, %39
  %41 = load %struct.cudbg_pbt_tables*, %struct.cudbg_pbt_tables** %9, align 8
  %42 = getelementptr inbounds %struct.cudbg_pbt_tables, %struct.cudbg_pbt_tables* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = call i32 @cim_ha_rreg(%struct.adapter* %36, i32 %40, i32* %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %35
  %51 = load %struct.cudbg_init*, %struct.cudbg_init** %4, align 8
  %52 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.cudbg_init*, %struct.cudbg_init** %4, align 8
  %57 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %56, i32 0, i32 0
  %58 = load i32 (i8*)*, i32 (i8*)** %57, align 8
  %59 = call i32 %58(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %55, %50
  br label %183

61:                                               ; preds = %35
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %12, align 4
  br label %31

65:                                               ; preds = %31
  %66 = load i32, i32* @CUDBG_CHAC_PBT_ADDR, align 4
  %67 = add nsw i32 %66, 64
  store i32 %67, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %68

68:                                               ; preds = %99, %65
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @CUDBG_PBT_STATIC_ENTRIES, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %102

72:                                               ; preds = %68
  %73 = load %struct.adapter*, %struct.adapter** %8, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %12, align 4
  %76 = mul nsw i32 %75, 4
  %77 = add nsw i32 %74, %76
  %78 = load %struct.cudbg_pbt_tables*, %struct.cudbg_pbt_tables** %9, align 8
  %79 = getelementptr inbounds %struct.cudbg_pbt_tables, %struct.cudbg_pbt_tables* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = call i32 @cim_ha_rreg(%struct.adapter* %73, i32 %77, i32* %83)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %72
  %88 = load %struct.cudbg_init*, %struct.cudbg_init** %4, align 8
  %89 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.cudbg_init*, %struct.cudbg_init** %4, align 8
  %94 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %93, i32 0, i32 0
  %95 = load i32 (i8*)*, i32 (i8*)** %94, align 8
  %96 = call i32 %95(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %97

97:                                               ; preds = %92, %87
  br label %183

98:                                               ; preds = %72
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %12, align 4
  br label %68

102:                                              ; preds = %68
  %103 = load i32, i32* @CUDBG_CHAC_PBT_LRF, align 4
  store i32 %103, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %104

104:                                              ; preds = %135, %102
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* @CUDBG_LRF_ENTRIES, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %138

108:                                              ; preds = %104
  %109 = load %struct.adapter*, %struct.adapter** %8, align 8
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %12, align 4
  %112 = mul nsw i32 %111, 4
  %113 = add nsw i32 %110, %112
  %114 = load %struct.cudbg_pbt_tables*, %struct.cudbg_pbt_tables** %9, align 8
  %115 = getelementptr inbounds %struct.cudbg_pbt_tables, %struct.cudbg_pbt_tables* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = call i32 @cim_ha_rreg(%struct.adapter* %109, i32 %113, i32* %119)
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %108
  %124 = load %struct.cudbg_init*, %struct.cudbg_init** %4, align 8
  %125 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load %struct.cudbg_init*, %struct.cudbg_init** %4, align 8
  %130 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %129, i32 0, i32 0
  %131 = load i32 (i8*)*, i32 (i8*)** %130, align 8
  %132 = call i32 %131(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %133

133:                                              ; preds = %128, %123
  br label %183

134:                                              ; preds = %108
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %12, align 4
  br label %104

138:                                              ; preds = %104
  %139 = load i32, i32* @CUDBG_CHAC_PBT_DATA, align 4
  store i32 %139, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %140

140:                                              ; preds = %171, %138
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* @CUDBG_PBT_DATA_ENTRIES, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %174

144:                                              ; preds = %140
  %145 = load %struct.adapter*, %struct.adapter** %8, align 8
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %12, align 4
  %148 = mul nsw i32 %147, 4
  %149 = add nsw i32 %146, %148
  %150 = load %struct.cudbg_pbt_tables*, %struct.cudbg_pbt_tables** %9, align 8
  %151 = getelementptr inbounds %struct.cudbg_pbt_tables, %struct.cudbg_pbt_tables* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = call i32 @cim_ha_rreg(%struct.adapter* %145, i32 %149, i32* %155)
  store i32 %156, i32* %13, align 4
  %157 = load i32, i32* %13, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %170

159:                                              ; preds = %144
  %160 = load %struct.cudbg_init*, %struct.cudbg_init** %4, align 8
  %161 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %159
  %165 = load %struct.cudbg_init*, %struct.cudbg_init** %4, align 8
  %166 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %165, i32 0, i32 0
  %167 = load i32 (i8*)*, i32 (i8*)** %166, align 8
  %168 = call i32 %167(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %169

169:                                              ; preds = %164, %159
  br label %183

170:                                              ; preds = %144
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %12, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %12, align 4
  br label %140

174:                                              ; preds = %140
  %175 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %176 = call i32 @write_compression_hdr(%struct.cudbg_buffer* %7, %struct.cudbg_buffer* %175)
  store i32 %176, i32* %13, align 4
  %177 = load i32, i32* %13, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  br label %183

180:                                              ; preds = %174
  %181 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %182 = call i32 @compress_buff(%struct.cudbg_buffer* %7, %struct.cudbg_buffer* %181)
  store i32 %182, i32* %13, align 4
  br label %183

183:                                              ; preds = %180, %179, %169, %133, %97, %60
  %184 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %185 = call i32 @release_scratch_buff(%struct.cudbg_buffer* %7, %struct.cudbg_buffer* %184)
  br label %186

186:                                              ; preds = %183, %25
  %187 = load i32, i32* %13, align 4
  ret i32 %187
}

declare dso_local i32 @get_scratch_buff(%struct.cudbg_buffer*, i32, %struct.cudbg_buffer*) #1

declare dso_local i32 @cim_ha_rreg(%struct.adapter*, i32, i32*) #1

declare dso_local i32 @write_compression_hdr(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

declare dso_local i32 @compress_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

declare dso_local i32 @release_scratch_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
