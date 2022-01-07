; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_fw_funcs.c_ecore_init_nig_lb_rl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_fw_funcs.c_ecore_init_nig_lb_rl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.init_nig_lb_rl_req = type { i32, i64*, i64, i64 }

@NIG_RL_BASE_TYPE = common dso_local global i32 0, align 4
@NIG_REG_TX_LB_GLBRATELIMIT_CTRL_TX_LB_GLBRATELIMIT_BASE_TYPE_SHIFT = common dso_local global i32 0, align 4
@NIG_REG_TX_LB_GLBRATELIMIT_CTRL = common dso_local global i32 0, align 4
@NIG_REG_TX_LB_GLBRATELIMIT_INC_PERIOD = common dso_local global i32 0, align 4
@NIG_RL_PERIOD_CLK_25M = common dso_local global i32 0, align 4
@NIG_REG_TX_LB_GLBRATELIMIT_INC_VALUE = common dso_local global i32 0, align 4
@NIG_REG_TX_LB_GLBRATELIMIT_MAX_VALUE = common dso_local global i32 0, align 4
@NIG_REG_TX_LB_GLBRATELIMIT_CTRL_TX_LB_GLBRATELIMIT_EN_SHIFT = common dso_local global i32 0, align 4
@NIG_REG_LB_BRBRATELIMIT_CTRL_LB_BRBRATELIMIT_BASE_TYPE_SHIFT = common dso_local global i32 0, align 4
@NIG_REG_LB_BRBRATELIMIT_CTRL = common dso_local global i32 0, align 4
@NIG_REG_LB_BRBRATELIMIT_INC_PERIOD = common dso_local global i32 0, align 4
@NIG_REG_LB_BRBRATELIMIT_INC_VALUE = common dso_local global i32 0, align 4
@NIG_REG_LB_BRBRATELIMIT_MAX_VALUE = common dso_local global i32 0, align 4
@NIG_REG_LB_BRBRATELIMIT_CTRL_LB_BRBRATELIMIT_EN_SHIFT = common dso_local global i32 0, align 4
@NUM_OF_PHYS_TCS = common dso_local global i64 0, align 8
@NIG_REG_LB_TCRATELIMIT_CTRL_0_LB_TCRATELIMIT_BASE_TYPE_0_SHIFT = common dso_local global i32 0, align 4
@NIG_REG_LB_TCRATELIMIT_CTRL_0 = common dso_local global i32 0, align 4
@NIG_REG_LB_TCRATELIMIT_INC_PERIOD_0 = common dso_local global i32 0, align 4
@NIG_REG_LB_TCRATELIMIT_INC_VALUE_0 = common dso_local global i32 0, align 4
@NIG_REG_LB_TCRATELIMIT_MAX_VALUE_0 = common dso_local global i32 0, align 4
@NIG_REG_LB_TCRATELIMIT_CTRL_0_LB_TCRATELIMIT_EN_0_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_init_nig_lb_rl(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.init_nig_lb_rl_req* %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca %struct.init_nig_lb_rl_req*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  store %struct.init_nig_lb_rl_req* %2, %struct.init_nig_lb_rl_req** %6, align 8
  %11 = load i32, i32* @NIG_RL_BASE_TYPE, align 4
  %12 = load i32, i32* @NIG_REG_TX_LB_GLBRATELIMIT_CTRL_TX_LB_GLBRATELIMIT_BASE_TYPE_SHIFT, align 4
  %13 = shl i32 %11, %12
  store i32 %13, i32* %7, align 4
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %15 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %16 = load i32, i32* @NIG_REG_TX_LB_GLBRATELIMIT_CTRL, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @ecore_wr(%struct.ecore_hwfn* %14, %struct.ecore_ptt* %15, i32 %16, i32 %17)
  %19 = load %struct.init_nig_lb_rl_req*, %struct.init_nig_lb_rl_req** %6, align 8
  %20 = getelementptr inbounds %struct.init_nig_lb_rl_req, %struct.init_nig_lb_rl_req* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %56

23:                                               ; preds = %3
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %25 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %26 = load i32, i32* @NIG_REG_TX_LB_GLBRATELIMIT_INC_PERIOD, align 4
  %27 = load i32, i32* @NIG_RL_PERIOD_CLK_25M, align 4
  %28 = call i32 @ecore_wr(%struct.ecore_hwfn* %24, %struct.ecore_ptt* %25, i32 %26, i32 %27)
  %29 = load %struct.init_nig_lb_rl_req*, %struct.init_nig_lb_rl_req** %6, align 8
  %30 = getelementptr inbounds %struct.init_nig_lb_rl_req, %struct.init_nig_lb_rl_req* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @NIG_RL_INC_VAL(i64 %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %34 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %35 = load i32, i32* @NIG_REG_TX_LB_GLBRATELIMIT_INC_VALUE, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @ecore_wr(%struct.ecore_hwfn* %33, %struct.ecore_ptt* %34, i32 %35, i32 %36)
  %38 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %39 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %40 = load i32, i32* @NIG_REG_TX_LB_GLBRATELIMIT_MAX_VALUE, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.init_nig_lb_rl_req*, %struct.init_nig_lb_rl_req** %6, align 8
  %43 = getelementptr inbounds %struct.init_nig_lb_rl_req, %struct.init_nig_lb_rl_req* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @NIG_RL_MAX_VAL(i32 %41, i32 %44)
  %46 = call i32 @ecore_wr(%struct.ecore_hwfn* %38, %struct.ecore_ptt* %39, i32 %40, i32 %45)
  %47 = load i32, i32* @NIG_REG_TX_LB_GLBRATELIMIT_CTRL_TX_LB_GLBRATELIMIT_EN_SHIFT, align 4
  %48 = shl i32 1, %47
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %52 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %53 = load i32, i32* @NIG_REG_TX_LB_GLBRATELIMIT_CTRL, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @ecore_wr(%struct.ecore_hwfn* %51, %struct.ecore_ptt* %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %23, %3
  %57 = load i32, i32* @NIG_RL_BASE_TYPE, align 4
  %58 = load i32, i32* @NIG_REG_LB_BRBRATELIMIT_CTRL_LB_BRBRATELIMIT_BASE_TYPE_SHIFT, align 4
  %59 = shl i32 %57, %58
  store i32 %59, i32* %7, align 4
  %60 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %61 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %62 = load i32, i32* @NIG_REG_LB_BRBRATELIMIT_CTRL, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @ecore_wr(%struct.ecore_hwfn* %60, %struct.ecore_ptt* %61, i32 %62, i32 %63)
  %65 = load %struct.init_nig_lb_rl_req*, %struct.init_nig_lb_rl_req** %6, align 8
  %66 = getelementptr inbounds %struct.init_nig_lb_rl_req, %struct.init_nig_lb_rl_req* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %102

69:                                               ; preds = %56
  %70 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %71 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %72 = load i32, i32* @NIG_REG_LB_BRBRATELIMIT_INC_PERIOD, align 4
  %73 = load i32, i32* @NIG_RL_PERIOD_CLK_25M, align 4
  %74 = call i32 @ecore_wr(%struct.ecore_hwfn* %70, %struct.ecore_ptt* %71, i32 %72, i32 %73)
  %75 = load %struct.init_nig_lb_rl_req*, %struct.init_nig_lb_rl_req** %6, align 8
  %76 = getelementptr inbounds %struct.init_nig_lb_rl_req, %struct.init_nig_lb_rl_req* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @NIG_RL_INC_VAL(i64 %77)
  store i32 %78, i32* %8, align 4
  %79 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %80 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %81 = load i32, i32* @NIG_REG_LB_BRBRATELIMIT_INC_VALUE, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @ecore_wr(%struct.ecore_hwfn* %79, %struct.ecore_ptt* %80, i32 %81, i32 %82)
  %84 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %85 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %86 = load i32, i32* @NIG_REG_LB_BRBRATELIMIT_MAX_VALUE, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.init_nig_lb_rl_req*, %struct.init_nig_lb_rl_req** %6, align 8
  %89 = getelementptr inbounds %struct.init_nig_lb_rl_req, %struct.init_nig_lb_rl_req* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @NIG_RL_MAX_VAL(i32 %87, i32 %90)
  %92 = call i32 @ecore_wr(%struct.ecore_hwfn* %84, %struct.ecore_ptt* %85, i32 %86, i32 %91)
  %93 = load i32, i32* @NIG_REG_LB_BRBRATELIMIT_CTRL_LB_BRBRATELIMIT_EN_SHIFT, align 4
  %94 = shl i32 1, %93
  %95 = load i32, i32* %7, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %7, align 4
  %97 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %98 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %99 = load i32, i32* @NIG_REG_LB_BRBRATELIMIT_CTRL, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @ecore_wr(%struct.ecore_hwfn* %97, %struct.ecore_ptt* %98, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %69, %56
  store i64 0, i64* %10, align 8
  store i32 0, i32* %9, align 4
  br label %103

103:                                              ; preds = %170, %102
  %104 = load i64, i64* %10, align 8
  %105 = load i64, i64* @NUM_OF_PHYS_TCS, align 8
  %106 = icmp ult i64 %104, %105
  br i1 %106, label %107, label %175

107:                                              ; preds = %103
  %108 = load i32, i32* @NIG_RL_BASE_TYPE, align 4
  %109 = load i32, i32* @NIG_REG_LB_TCRATELIMIT_CTRL_0_LB_TCRATELIMIT_BASE_TYPE_0_SHIFT, align 4
  %110 = shl i32 %108, %109
  store i32 %110, i32* %7, align 4
  %111 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %112 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %113 = load i32, i32* @NIG_REG_LB_TCRATELIMIT_CTRL_0, align 4
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %113, %114
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @ecore_wr(%struct.ecore_hwfn* %111, %struct.ecore_ptt* %112, i32 %115, i32 %116)
  %118 = load %struct.init_nig_lb_rl_req*, %struct.init_nig_lb_rl_req** %6, align 8
  %119 = getelementptr inbounds %struct.init_nig_lb_rl_req, %struct.init_nig_lb_rl_req* %118, i32 0, i32 1
  %120 = load i64*, i64** %119, align 8
  %121 = load i64, i64* %10, align 8
  %122 = getelementptr inbounds i64, i64* %120, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %107
  br label %170

126:                                              ; preds = %107
  %127 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %128 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %129 = load i32, i32* @NIG_REG_LB_TCRATELIMIT_INC_PERIOD_0, align 4
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %129, %130
  %132 = load i32, i32* @NIG_RL_PERIOD_CLK_25M, align 4
  %133 = call i32 @ecore_wr(%struct.ecore_hwfn* %127, %struct.ecore_ptt* %128, i32 %131, i32 %132)
  %134 = load %struct.init_nig_lb_rl_req*, %struct.init_nig_lb_rl_req** %6, align 8
  %135 = getelementptr inbounds %struct.init_nig_lb_rl_req, %struct.init_nig_lb_rl_req* %134, i32 0, i32 1
  %136 = load i64*, i64** %135, align 8
  %137 = load i64, i64* %10, align 8
  %138 = getelementptr inbounds i64, i64* %136, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @NIG_RL_INC_VAL(i64 %139)
  store i32 %140, i32* %8, align 4
  %141 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %142 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %143 = load i32, i32* @NIG_REG_LB_TCRATELIMIT_INC_VALUE_0, align 4
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %143, %144
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @ecore_wr(%struct.ecore_hwfn* %141, %struct.ecore_ptt* %142, i32 %145, i32 %146)
  %148 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %149 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %150 = load i32, i32* @NIG_REG_LB_TCRATELIMIT_MAX_VALUE_0, align 4
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %150, %151
  %153 = load i32, i32* %8, align 4
  %154 = load %struct.init_nig_lb_rl_req*, %struct.init_nig_lb_rl_req** %6, align 8
  %155 = getelementptr inbounds %struct.init_nig_lb_rl_req, %struct.init_nig_lb_rl_req* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @NIG_RL_MAX_VAL(i32 %153, i32 %156)
  %158 = call i32 @ecore_wr(%struct.ecore_hwfn* %148, %struct.ecore_ptt* %149, i32 %152, i32 %157)
  %159 = load i32, i32* @NIG_REG_LB_TCRATELIMIT_CTRL_0_LB_TCRATELIMIT_EN_0_SHIFT, align 4
  %160 = shl i32 1, %159
  %161 = load i32, i32* %7, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %7, align 4
  %163 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %164 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %165 = load i32, i32* @NIG_REG_LB_TCRATELIMIT_CTRL_0, align 4
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %165, %166
  %168 = load i32, i32* %7, align 4
  %169 = call i32 @ecore_wr(%struct.ecore_hwfn* %163, %struct.ecore_ptt* %164, i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %126, %125
  %171 = load i64, i64* %10, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %10, align 8
  %173 = load i32, i32* %9, align 4
  %174 = add nsw i32 %173, 4
  store i32 %174, i32* %9, align 4
  br label %103

175:                                              ; preds = %103
  ret void
}

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i32 @NIG_RL_INC_VAL(i64) #1

declare dso_local i32 @NIG_RL_MAX_VAL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
