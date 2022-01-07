; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_fw_funcs.c_ecore_init_nig_ets.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_fw_funcs.c_ecore_init_nig_ets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.init_ets_req = type { i32, %struct.init_ets_tc_req* }
%struct.init_ets_tc_req = type { i64, i32, i64 }

@NUM_OF_TCS = common dso_local global i64 0, align 8
@NUM_OF_PHYS_TCS = common dso_local global i64 0, align 8
@NIG_LB_ETS_CLIENT_OFFSET = common dso_local global i64 0, align 8
@NIG_TX_ETS_CLIENT_OFFSET = common dso_local global i64 0, align 8
@NIG_REG_LB_ARB_CREDIT_WEIGHT_0 = common dso_local global i64 0, align 8
@NIG_REG_TX_ARB_CREDIT_WEIGHT_0 = common dso_local global i64 0, align 8
@NIG_REG_LB_ARB_CREDIT_WEIGHT_1 = common dso_local global i64 0, align 8
@NIG_REG_TX_ARB_CREDIT_WEIGHT_1 = common dso_local global i64 0, align 8
@NIG_REG_LB_ARB_CREDIT_UPPER_BOUND_0 = common dso_local global i64 0, align 8
@NIG_REG_TX_ARB_CREDIT_UPPER_BOUND_0 = common dso_local global i64 0, align 8
@NIG_REG_LB_ARB_CREDIT_UPPER_BOUND_1 = common dso_local global i64 0, align 8
@NIG_REG_TX_ARB_CREDIT_UPPER_BOUND_1 = common dso_local global i64 0, align 8
@NIG_REG_LB_ARB_CLIENT_IS_STRICT = common dso_local global i64 0, align 8
@NIG_REG_TX_ARB_CLIENT_IS_STRICT = common dso_local global i64 0, align 8
@NIG_REG_LB_ARB_CLIENT_IS_SUBJECT2WFQ = common dso_local global i64 0, align 8
@NIG_REG_TX_ARB_CLIENT_IS_SUBJECT2WFQ = common dso_local global i64 0, align 8
@NIG_ETS_MIN_WFQ_BYTES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_init_nig_ets(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.init_ets_req* %2, i32 %3) #0 {
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca %struct.init_ets_req*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.init_ets_tc_req*, align 8
  %20 = alloca %struct.init_ets_tc_req*, align 8
  %21 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store %struct.init_ets_req* %2, %struct.init_ets_req** %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i64, i64* @NUM_OF_TCS, align 8
  br label %28

26:                                               ; preds = %4
  %27 = load i64, i64* @NUM_OF_PHYS_TCS, align 8
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i64 [ %25, %24 ], [ %27, %26 ]
  store i64 %29, i64* %17, align 8
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i64, i64* @NIG_LB_ETS_CLIENT_OFFSET, align 8
  br label %36

34:                                               ; preds = %28
  %35 = load i64, i64* @NIG_TX_ETS_CLIENT_OFFSET, align 8
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i64 [ %33, %32 ], [ %35, %34 ]
  store i64 %37, i64* %18, align 8
  store i64 4294967295, i64* %9, align 8
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i64, i64* @NIG_REG_LB_ARB_CREDIT_WEIGHT_0, align 8
  br label %44

42:                                               ; preds = %36
  %43 = load i64, i64* @NIG_REG_TX_ARB_CREDIT_WEIGHT_0, align 8
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i64 [ %41, %40 ], [ %43, %42 ]
  store i64 %45, i64* %10, align 8
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i64, i64* @NIG_REG_LB_ARB_CREDIT_WEIGHT_1, align 8
  %50 = load i64, i64* @NIG_REG_LB_ARB_CREDIT_WEIGHT_0, align 8
  %51 = sub i64 %49, %50
  br label %56

52:                                               ; preds = %44
  %53 = load i64, i64* @NIG_REG_TX_ARB_CREDIT_WEIGHT_1, align 8
  %54 = load i64, i64* @NIG_REG_TX_ARB_CREDIT_WEIGHT_0, align 8
  %55 = sub i64 %53, %54
  br label %56

56:                                               ; preds = %52, %48
  %57 = phi i64 [ %51, %48 ], [ %55, %52 ]
  store i64 %57, i64* %11, align 8
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i64, i64* @NIG_REG_LB_ARB_CREDIT_UPPER_BOUND_0, align 8
  br label %64

62:                                               ; preds = %56
  %63 = load i64, i64* @NIG_REG_TX_ARB_CREDIT_UPPER_BOUND_0, align 8
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i64 [ %61, %60 ], [ %63, %62 ]
  store i64 %65, i64* %12, align 8
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i64, i64* @NIG_REG_LB_ARB_CREDIT_UPPER_BOUND_1, align 8
  %70 = load i64, i64* @NIG_REG_LB_ARB_CREDIT_UPPER_BOUND_0, align 8
  %71 = sub i64 %69, %70
  br label %76

72:                                               ; preds = %64
  %73 = load i64, i64* @NIG_REG_TX_ARB_CREDIT_UPPER_BOUND_1, align 8
  %74 = load i64, i64* @NIG_REG_TX_ARB_CREDIT_UPPER_BOUND_0, align 8
  %75 = sub i64 %73, %74
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi i64 [ %71, %68 ], [ %75, %72 ]
  store i64 %77, i64* %13, align 8
  store i64 0, i64* %16, align 8
  br label %78

78:                                               ; preds = %122, %76
  %79 = load i64, i64* %16, align 8
  %80 = load i64, i64* %17, align 8
  %81 = icmp ult i64 %79, %80
  br i1 %81, label %82, label %125

82:                                               ; preds = %78
  %83 = load %struct.init_ets_req*, %struct.init_ets_req** %7, align 8
  %84 = getelementptr inbounds %struct.init_ets_req, %struct.init_ets_req* %83, i32 0, i32 1
  %85 = load %struct.init_ets_tc_req*, %struct.init_ets_tc_req** %84, align 8
  %86 = load i64, i64* %16, align 8
  %87 = getelementptr inbounds %struct.init_ets_tc_req, %struct.init_ets_tc_req* %85, i64 %86
  store %struct.init_ets_tc_req* %87, %struct.init_ets_tc_req** %19, align 8
  %88 = load %struct.init_ets_tc_req*, %struct.init_ets_tc_req** %19, align 8
  %89 = getelementptr inbounds %struct.init_ets_tc_req, %struct.init_ets_tc_req* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %82
  %93 = load i64, i64* %16, align 8
  %94 = trunc i64 %93 to i32
  %95 = shl i32 1, %94
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* %14, align 8
  %98 = or i64 %97, %96
  store i64 %98, i64* %14, align 8
  br label %99

99:                                               ; preds = %92, %82
  %100 = load %struct.init_ets_tc_req*, %struct.init_ets_tc_req** %19, align 8
  %101 = getelementptr inbounds %struct.init_ets_tc_req, %struct.init_ets_tc_req* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %99
  br label %122

105:                                              ; preds = %99
  %106 = load i64, i64* %16, align 8
  %107 = trunc i64 %106 to i32
  %108 = shl i32 1, %107
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* %15, align 8
  %111 = or i64 %110, %109
  store i64 %111, i64* %15, align 8
  %112 = load %struct.init_ets_tc_req*, %struct.init_ets_tc_req** %19, align 8
  %113 = getelementptr inbounds %struct.init_ets_tc_req, %struct.init_ets_tc_req* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %9, align 8
  %116 = icmp ult i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %105
  %118 = load %struct.init_ets_tc_req*, %struct.init_ets_tc_req** %19, align 8
  %119 = getelementptr inbounds %struct.init_ets_tc_req, %struct.init_ets_tc_req* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %9, align 8
  br label %121

121:                                              ; preds = %117, %105
  br label %122

122:                                              ; preds = %121, %104
  %123 = load i64, i64* %16, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %16, align 8
  br label %78

125:                                              ; preds = %78
  %126 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %127 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = load i64, i64* @NIG_REG_LB_ARB_CLIENT_IS_STRICT, align 8
  br label %134

132:                                              ; preds = %125
  %133 = load i64, i64* @NIG_REG_TX_ARB_CLIENT_IS_STRICT, align 8
  br label %134

134:                                              ; preds = %132, %130
  %135 = phi i64 [ %131, %130 ], [ %133, %132 ]
  %136 = load i64, i64* %14, align 8
  %137 = load i64, i64* %18, align 8
  %138 = shl i64 %136, %137
  %139 = call i32 @ecore_wr(%struct.ecore_hwfn* %126, %struct.ecore_ptt* %127, i64 %135, i64 %138)
  %140 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %141 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %134
  %145 = load i64, i64* @NIG_REG_LB_ARB_CLIENT_IS_SUBJECT2WFQ, align 8
  br label %148

146:                                              ; preds = %134
  %147 = load i64, i64* @NIG_REG_TX_ARB_CLIENT_IS_SUBJECT2WFQ, align 8
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi i64 [ %145, %144 ], [ %147, %146 ]
  %150 = load i64, i64* %15, align 8
  %151 = load i64, i64* %18, align 8
  %152 = shl i64 %150, %151
  %153 = call i32 @ecore_wr(%struct.ecore_hwfn* %140, %struct.ecore_ptt* %141, i64 %149, i64 %152)
  store i64 0, i64* %16, align 8
  br label %154

154:                                              ; preds = %199, %148
  %155 = load i64, i64* %16, align 8
  %156 = load i64, i64* %17, align 8
  %157 = icmp ult i64 %155, %156
  br i1 %157, label %158, label %204

158:                                              ; preds = %154
  %159 = load %struct.init_ets_req*, %struct.init_ets_req** %7, align 8
  %160 = getelementptr inbounds %struct.init_ets_req, %struct.init_ets_req* %159, i32 0, i32 1
  %161 = load %struct.init_ets_tc_req*, %struct.init_ets_tc_req** %160, align 8
  %162 = load i64, i64* %16, align 8
  %163 = getelementptr inbounds %struct.init_ets_tc_req, %struct.init_ets_tc_req* %161, i64 %162
  store %struct.init_ets_tc_req* %163, %struct.init_ets_tc_req** %20, align 8
  %164 = load %struct.init_ets_tc_req*, %struct.init_ets_tc_req** %20, align 8
  %165 = getelementptr inbounds %struct.init_ets_tc_req, %struct.init_ets_tc_req* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %158
  br label %199

169:                                              ; preds = %158
  %170 = load i64, i64* @NIG_ETS_MIN_WFQ_BYTES, align 8
  %171 = load %struct.init_ets_tc_req*, %struct.init_ets_tc_req** %20, align 8
  %172 = getelementptr inbounds %struct.init_ets_tc_req, %struct.init_ets_tc_req* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = mul i64 %170, %173
  %175 = load i64, i64* %9, align 8
  %176 = udiv i64 %174, %175
  store i64 %176, i64* %21, align 8
  %177 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %178 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %179 = load i64, i64* %10, align 8
  %180 = load i64, i64* %11, align 8
  %181 = load i64, i64* %18, align 8
  %182 = mul i64 %180, %181
  %183 = add i64 %179, %182
  %184 = load i64, i64* %21, align 8
  %185 = call i32 @ecore_wr(%struct.ecore_hwfn* %177, %struct.ecore_ptt* %178, i64 %183, i64 %184)
  %186 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %187 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %188 = load i64, i64* %12, align 8
  %189 = load i64, i64* %13, align 8
  %190 = load i64, i64* %18, align 8
  %191 = mul i64 %189, %190
  %192 = add i64 %188, %191
  %193 = load i64, i64* %21, align 8
  %194 = load %struct.init_ets_req*, %struct.init_ets_req** %7, align 8
  %195 = getelementptr inbounds %struct.init_ets_req, %struct.init_ets_req* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i64 @NIG_ETS_UP_BOUND(i64 %193, i32 %196)
  %198 = call i32 @ecore_wr(%struct.ecore_hwfn* %186, %struct.ecore_ptt* %187, i64 %192, i64 %197)
  br label %199

199:                                              ; preds = %169, %168
  %200 = load i64, i64* %16, align 8
  %201 = add i64 %200, 1
  store i64 %201, i64* %16, align 8
  %202 = load i64, i64* %18, align 8
  %203 = add i64 %202, 1
  store i64 %203, i64* %18, align 8
  br label %154

204:                                              ; preds = %154
  ret void
}

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i64) #1

declare dso_local i64 @NIG_ETS_UP_BOUND(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
