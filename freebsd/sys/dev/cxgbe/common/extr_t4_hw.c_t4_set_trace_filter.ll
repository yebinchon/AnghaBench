; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_set_trace_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_set_trace_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.trace_params = type { i32, i32, i32, i64, i64, i64, i32*, i32* }

@F_TRCMULTIFILTER = common dso_local global i32 0, align 4
@F_TFEN = common dso_local global i32 0, align 4
@F_T5_TFEN = common dso_local global i32 0, align 4
@NTRACE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@A_MPS_TRC_FILTER_MATCH_CTL_A = common dso_local global i32 0, align 4
@A_MPS_TRC_CFG = common dso_local global i32 0, align 4
@M_TFLENGTH = common dso_local global i64 0, align 8
@M_TFOFFSET = common dso_local global i64 0, align 8
@M_TFMINPKTSIZE = common dso_local global i64 0, align 8
@A_MPS_TRC_FILTER1_MATCH = common dso_local global i32 0, align 4
@A_MPS_TRC_FILTER0_MATCH = common dso_local global i32 0, align 4
@A_MPS_TRC_FILTER0_DONT_CARE = common dso_local global i32 0, align 4
@TRACE_LEN = common dso_local global i32 0, align 4
@A_MPS_TRC_FILTER_MATCH_CTL_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_set_trace_filter(%struct.adapter* %0, %struct.trace_params* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.trace_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store %struct.trace_params* %1, %struct.trace_params** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = mul nsw i32 %17, 4
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* @F_TRCMULTIFILTER, align 4
  store i32 %19, i32* %15, align 4
  %20 = load %struct.adapter*, %struct.adapter** %6, align 8
  %21 = call i64 @is_t4(%struct.adapter* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @F_TFEN, align 4
  br label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @F_T5_TFEN, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @NTRACE, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %27
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %232

38:                                               ; preds = %31
  %39 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %40 = icmp eq %struct.trace_params* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %58, label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.adapter*, %struct.adapter** %6, align 8
  %46 = load i32, i32* @A_MPS_TRC_FILTER_MATCH_CTL_A, align 4
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* %16, align 4
  br label %55

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i32 [ %53, %52 ], [ 0, %54 ]
  %57 = call i32 @t4_set_reg_field(%struct.adapter* %45, i32 %48, i32 %49, i32 %56)
  store i32 0, i32* %5, align 4
  br label %232

58:                                               ; preds = %41
  %59 = load %struct.adapter*, %struct.adapter** %6, align 8
  %60 = load i32, i32* @A_MPS_TRC_CFG, align 4
  %61 = call i32 @t4_read_reg(%struct.adapter* %59, i32 %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* @F_TRCMULTIFILTER, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %58
  %67 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %68 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp sgt i32 %69, 2544
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %232

74:                                               ; preds = %66
  br label %87

75:                                               ; preds = %58
  store i32 0, i32* %15, align 4
  %76 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %77 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp sgt i32 %78, 9600
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80, %75
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  br label %232

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %86, %74
  %88 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %89 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.adapter*, %struct.adapter** %6, align 8
  %92 = call i64 @is_t4(%struct.adapter* %91)
  %93 = icmp ne i64 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 11, i32 19
  %96 = icmp sgt i32 %90, %95
  br i1 %96, label %120, label %97

97:                                               ; preds = %87
  %98 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %99 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = icmp sgt i32 %100, 1
  br i1 %101, label %120, label %102

102:                                              ; preds = %97
  %103 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %104 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @M_TFLENGTH, align 8
  %107 = icmp sgt i64 %105, %106
  br i1 %107, label %120, label %108

108:                                              ; preds = %102
  %109 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %110 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @M_TFOFFSET, align 8
  %113 = icmp sgt i64 %111, %112
  br i1 %113, label %120, label %114

114:                                              ; preds = %108
  %115 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %116 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %115, i32 0, i32 5
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @M_TFMINPKTSIZE, align 8
  %119 = icmp sgt i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %114, %108, %102, %97, %87
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %5, align 4
  br label %232

123:                                              ; preds = %114
  %124 = load %struct.adapter*, %struct.adapter** %6, align 8
  %125 = load i32, i32* @A_MPS_TRC_FILTER_MATCH_CTL_A, align 4
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %125, %126
  %128 = load i32, i32* %16, align 4
  %129 = call i32 @t4_set_reg_field(%struct.adapter* %124, i32 %127, i32 %128, i32 0)
  %130 = load i32, i32* @A_MPS_TRC_FILTER1_MATCH, align 4
  %131 = load i32, i32* @A_MPS_TRC_FILTER0_MATCH, align 4
  %132 = sub nsw i32 %130, %131
  %133 = load i32, i32* %8, align 4
  %134 = mul nsw i32 %133, %132
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* @A_MPS_TRC_FILTER0_MATCH, align 4
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %135, %136
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* @A_MPS_TRC_FILTER0_DONT_CARE, align 4
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %138, %139
  store i32 %140, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %141

141:                                              ; preds = %168, %123
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* @TRACE_LEN, align 4
  %144 = sdiv i32 %143, 4
  %145 = icmp slt i32 %142, %144
  br i1 %145, label %146, label %175

146:                                              ; preds = %141
  %147 = load %struct.adapter*, %struct.adapter** %6, align 8
  %148 = load i32, i32* %12, align 4
  %149 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %150 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %149, i32 0, i32 6
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @t4_write_reg(%struct.adapter* %147, i32 %148, i32 %155)
  %157 = load %struct.adapter*, %struct.adapter** %6, align 8
  %158 = load i32, i32* %13, align 4
  %159 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %160 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %159, i32 0, i32 7
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = xor i32 %165, -1
  %167 = call i32 @t4_write_reg(%struct.adapter* %157, i32 %158, i32 %166)
  br label %168

168:                                              ; preds = %146
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* %12, align 4
  %172 = add nsw i32 %171, 4
  store i32 %172, i32* %12, align 4
  %173 = load i32, i32* %13, align 4
  %174 = add nsw i32 %173, 4
  store i32 %174, i32* %13, align 4
  br label %141

175:                                              ; preds = %141
  %176 = load %struct.adapter*, %struct.adapter** %6, align 8
  %177 = load i32, i32* @A_MPS_TRC_FILTER_MATCH_CTL_B, align 4
  %178 = load i32, i32* %11, align 4
  %179 = add nsw i32 %177, %178
  %180 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %181 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @V_TFCAPTUREMAX(i32 %182)
  %184 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %185 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %184, i32 0, i32 5
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @V_TFMINPKTSIZE(i64 %186)
  %188 = or i32 %183, %187
  %189 = call i32 @t4_write_reg(%struct.adapter* %176, i32 %179, i32 %188)
  %190 = load %struct.adapter*, %struct.adapter** %6, align 8
  %191 = load i32, i32* @A_MPS_TRC_FILTER_MATCH_CTL_A, align 4
  %192 = load i32, i32* %11, align 4
  %193 = add nsw i32 %191, %192
  %194 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %195 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %194, i32 0, i32 4
  %196 = load i64, i64* %195, align 8
  %197 = call i32 @V_TFOFFSET(i64 %196)
  %198 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %199 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = call i32 @V_TFLENGTH(i64 %200)
  %202 = or i32 %197, %201
  %203 = load i32, i32* %16, align 4
  %204 = or i32 %202, %203
  %205 = load %struct.adapter*, %struct.adapter** %6, align 8
  %206 = call i64 @is_t4(%struct.adapter* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %218

208:                                              ; preds = %175
  %209 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %210 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @V_TFPORT(i32 %211)
  %213 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %214 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @V_TFINVERTMATCH(i32 %215)
  %217 = or i32 %212, %216
  br label %228

218:                                              ; preds = %175
  %219 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %220 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @V_T5_TFPORT(i32 %221)
  %223 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %224 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @V_T5_TFINVERTMATCH(i32 %225)
  %227 = or i32 %222, %226
  br label %228

228:                                              ; preds = %218, %208
  %229 = phi i32 [ %217, %208 ], [ %227, %218 ]
  %230 = or i32 %204, %229
  %231 = call i32 @t4_write_reg(%struct.adapter* %190, i32 %193, i32 %230)
  store i32 0, i32* %5, align 4
  br label %232

232:                                              ; preds = %228, %120, %83, %71, %55, %35
  %233 = load i32, i32* %5, align 4
  ret i32 %233
}

declare dso_local i64 @is_t4(%struct.adapter*) #1

declare dso_local i32 @t4_set_reg_field(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @V_TFCAPTUREMAX(i32) #1

declare dso_local i32 @V_TFMINPKTSIZE(i64) #1

declare dso_local i32 @V_TFOFFSET(i64) #1

declare dso_local i32 @V_TFLENGTH(i64) #1

declare dso_local i32 @V_TFPORT(i32) #1

declare dso_local i32 @V_TFINVERTMATCH(i32) #1

declare dso_local i32 @V_T5_TFPORT(i32) #1

declare dso_local i32 @V_T5_TFINVERTMATCH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
