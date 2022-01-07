; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_idma_monitor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_idma_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.sge_idma_monitor_state = type { i32, i32*, i32*, i32*, i32* }

@A_SGE_DEBUG_INDEX = common dso_local global i32 0, align 4
@A_SGE_DEBUG_DATA_HIGH = common dso_local global i32 0, align 4
@A_SGE_DEBUG_DATA_LOW = common dso_local global i32 0, align 4
@SGE_IDMA_WARN_THRESH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"SGE idma%d, queue %u, resumed after %d seconds\0A\00", align 1
@SGE_IDMA_WARN_REPEAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [95 x i8] c"SGE idma%u, queue %u, potentially stuck in  state %u for %d seconds (debug0=%#x, debug11=%#x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_idma_monitor(%struct.adapter* %0, %struct.sge_idma_monitor_state* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.sge_idma_monitor_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.sge_idma_monitor_state* %1, %struct.sge_idma_monitor_state** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.adapter*, %struct.adapter** %5, align 8
  %14 = load i32, i32* @A_SGE_DEBUG_INDEX, align 4
  %15 = call i32 @t4_write_reg(%struct.adapter* %13, i32 %14, i32 13)
  %16 = load %struct.adapter*, %struct.adapter** %5, align 8
  %17 = load i32, i32* @A_SGE_DEBUG_DATA_HIGH, align 4
  %18 = call i32 @t4_read_reg(%struct.adapter* %16, i32 %17)
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %18, i32* %19, align 4
  %20 = load %struct.adapter*, %struct.adapter** %5, align 8
  %21 = load i32, i32* @A_SGE_DEBUG_DATA_LOW, align 4
  %22 = call i32 @t4_read_reg(%struct.adapter* %20, i32 %21)
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %22, i32* %23, align 4
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %221, %4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %224

27:                                               ; preds = %24
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sge_idma_monitor_state*, %struct.sge_idma_monitor_state** %6, align 8
  %33 = getelementptr inbounds %struct.sge_idma_monitor_state, %struct.sge_idma_monitor_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %75

36:                                               ; preds = %27
  %37 = load %struct.sge_idma_monitor_state*, %struct.sge_idma_monitor_state** %6, align 8
  %38 = getelementptr inbounds %struct.sge_idma_monitor_state, %struct.sge_idma_monitor_state* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SGE_IDMA_WARN_THRESH, align 4
  %45 = load i32, i32* %7, align 4
  %46 = mul nsw i32 %44, %45
  %47 = icmp sge i32 %43, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %36
  %49 = load %struct.adapter*, %struct.adapter** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.sge_idma_monitor_state*, %struct.sge_idma_monitor_state** %6, align 8
  %52 = getelementptr inbounds %struct.sge_idma_monitor_state, %struct.sge_idma_monitor_state* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.sge_idma_monitor_state*, %struct.sge_idma_monitor_state** %6, align 8
  %59 = getelementptr inbounds %struct.sge_idma_monitor_state, %struct.sge_idma_monitor_state* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = sdiv i32 %64, %65
  %67 = call i32 (%struct.adapter*, i8*, i32, i32, i32, ...) @CH_WARN(%struct.adapter* %49, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %57, i32 %66)
  br label %68

68:                                               ; preds = %48, %36
  %69 = load %struct.sge_idma_monitor_state*, %struct.sge_idma_monitor_state** %6, align 8
  %70 = getelementptr inbounds %struct.sge_idma_monitor_state, %struct.sge_idma_monitor_state* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 0, i32* %74, align 4
  br label %221

75:                                               ; preds = %27
  %76 = load %struct.sge_idma_monitor_state*, %struct.sge_idma_monitor_state** %6, align 8
  %77 = getelementptr inbounds %struct.sge_idma_monitor_state, %struct.sge_idma_monitor_state* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %75
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.sge_idma_monitor_state*, %struct.sge_idma_monitor_state** %6, align 8
  %87 = getelementptr inbounds %struct.sge_idma_monitor_state, %struct.sge_idma_monitor_state* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %85, i32* %91, align 4
  %92 = load %struct.sge_idma_monitor_state*, %struct.sge_idma_monitor_state** %6, align 8
  %93 = getelementptr inbounds %struct.sge_idma_monitor_state, %struct.sge_idma_monitor_state* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 0, i32* %97, align 4
  br label %117

98:                                               ; preds = %75
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.sge_idma_monitor_state*, %struct.sge_idma_monitor_state** %6, align 8
  %101 = getelementptr inbounds %struct.sge_idma_monitor_state, %struct.sge_idma_monitor_state* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, %99
  store i32 %107, i32* %105, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.sge_idma_monitor_state*, %struct.sge_idma_monitor_state** %6, align 8
  %110 = getelementptr inbounds %struct.sge_idma_monitor_state, %struct.sge_idma_monitor_state* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %115, %108
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %98, %84
  %118 = load %struct.sge_idma_monitor_state*, %struct.sge_idma_monitor_state** %6, align 8
  %119 = getelementptr inbounds %struct.sge_idma_monitor_state, %struct.sge_idma_monitor_state* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @SGE_IDMA_WARN_THRESH, align 4
  %126 = load i32, i32* %7, align 4
  %127 = mul nsw i32 %125, %126
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %117
  br label %221

130:                                              ; preds = %117
  %131 = load %struct.sge_idma_monitor_state*, %struct.sge_idma_monitor_state** %6, align 8
  %132 = getelementptr inbounds %struct.sge_idma_monitor_state, %struct.sge_idma_monitor_state* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %130
  br label %221

140:                                              ; preds = %130
  %141 = load i32, i32* @SGE_IDMA_WARN_REPEAT, align 4
  %142 = load i32, i32* %7, align 4
  %143 = mul nsw i32 %141, %142
  %144 = load %struct.sge_idma_monitor_state*, %struct.sge_idma_monitor_state** %6, align 8
  %145 = getelementptr inbounds %struct.sge_idma_monitor_state, %struct.sge_idma_monitor_state* %144, i32 0, i32 3
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32 %143, i32* %149, align 4
  %150 = load %struct.adapter*, %struct.adapter** %5, align 8
  %151 = load i32, i32* @A_SGE_DEBUG_INDEX, align 4
  %152 = call i32 @t4_write_reg(%struct.adapter* %150, i32 %151, i32 0)
  %153 = load %struct.adapter*, %struct.adapter** %5, align 8
  %154 = load i32, i32* @A_SGE_DEBUG_DATA_LOW, align 4
  %155 = call i32 @t4_read_reg(%struct.adapter* %153, i32 %154)
  store i32 %155, i32* %11, align 4
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %9, align 4
  %158 = mul nsw i32 %157, 9
  %159 = ashr i32 %156, %158
  %160 = and i32 %159, 63
  %161 = load %struct.sge_idma_monitor_state*, %struct.sge_idma_monitor_state** %6, align 8
  %162 = getelementptr inbounds %struct.sge_idma_monitor_state, %struct.sge_idma_monitor_state* %161, i32 0, i32 4
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %9, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  store i32 %160, i32* %166, align 4
  %167 = load %struct.adapter*, %struct.adapter** %5, align 8
  %168 = load i32, i32* @A_SGE_DEBUG_INDEX, align 4
  %169 = call i32 @t4_write_reg(%struct.adapter* %167, i32 %168, i32 11)
  %170 = load %struct.adapter*, %struct.adapter** %5, align 8
  %171 = load i32, i32* @A_SGE_DEBUG_DATA_LOW, align 4
  %172 = call i32 @t4_read_reg(%struct.adapter* %170, i32 %171)
  store i32 %172, i32* %12, align 4
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* %9, align 4
  %175 = mul nsw i32 %174, 16
  %176 = ashr i32 %173, %175
  %177 = and i32 %176, 65535
  %178 = load %struct.sge_idma_monitor_state*, %struct.sge_idma_monitor_state** %6, align 8
  %179 = getelementptr inbounds %struct.sge_idma_monitor_state, %struct.sge_idma_monitor_state* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  store i32 %177, i32* %183, align 4
  %184 = load %struct.adapter*, %struct.adapter** %5, align 8
  %185 = load i32, i32* %9, align 4
  %186 = load %struct.sge_idma_monitor_state*, %struct.sge_idma_monitor_state** %6, align 8
  %187 = getelementptr inbounds %struct.sge_idma_monitor_state, %struct.sge_idma_monitor_state* %186, i32 0, i32 2
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %9, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.sge_idma_monitor_state*, %struct.sge_idma_monitor_state** %6, align 8
  %194 = getelementptr inbounds %struct.sge_idma_monitor_state, %struct.sge_idma_monitor_state* %193, i32 0, i32 4
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %9, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.sge_idma_monitor_state*, %struct.sge_idma_monitor_state** %6, align 8
  %201 = getelementptr inbounds %struct.sge_idma_monitor_state, %struct.sge_idma_monitor_state* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %7, align 4
  %208 = sdiv i32 %206, %207
  %209 = load i32, i32* %11, align 4
  %210 = load i32, i32* %12, align 4
  %211 = call i32 (%struct.adapter*, i8*, i32, i32, i32, ...) @CH_WARN(%struct.adapter* %184, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.1, i64 0, i64 0), i32 %185, i32 %192, i32 %199, i32 %208, i32 %209, i32 %210)
  %212 = load %struct.adapter*, %struct.adapter** %5, align 8
  %213 = load %struct.sge_idma_monitor_state*, %struct.sge_idma_monitor_state** %6, align 8
  %214 = getelementptr inbounds %struct.sge_idma_monitor_state, %struct.sge_idma_monitor_state* %213, i32 0, i32 4
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %9, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @t4_sge_decode_idma_state(%struct.adapter* %212, i32 %219)
  br label %221

221:                                              ; preds = %140, %139, %129, %68
  %222 = load i32, i32* %9, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %9, align 4
  br label %24

224:                                              ; preds = %24
  ret void
}

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @CH_WARN(%struct.adapter*, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @t4_sge_decode_idma_state(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
