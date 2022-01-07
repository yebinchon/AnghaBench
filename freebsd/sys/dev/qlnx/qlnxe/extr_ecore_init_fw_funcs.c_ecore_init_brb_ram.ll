; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_fw_funcs.c_ecore_init_brb_ram.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_init_fw_funcs.c_ecore_init_brb_ram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.init_brb_ram_req = type { i32*, i64, i32, i32, i32 }

@BRB_BLOCK_SIZE = common dso_local global i32 0, align 4
@BRB_TOTAL_RAM_BLOCKS_K2 = common dso_local global i64 0, align 8
@BRB_TOTAL_RAM_BLOCKS_BB = common dso_local global i64 0, align 8
@MAX_NUM_PORTS = common dso_local global i64 0, align 8
@BRB_MIN_BLOCKS_PER_TC = common dso_local global i64 0, align 8
@BRB_REG_TOTAL_MAC_SIZE = common dso_local global i64 0, align 8
@BRB_REG_SHARED_HR_AREA = common dso_local global i64 0, align 8
@NUM_OF_TCS = common dso_local global i64 0, align 8
@BRB_REG_TC_GUARANTIED_0 = common dso_local global i64 0, align 8
@BRB_REG_MAIN_TC_GUARANTIED_HYST_0 = common dso_local global i64 0, align 8
@BRB_HYST_BLOCKS = common dso_local global i64 0, align 8
@BRB_REG_LB_TC_FULL_XOFF_THRESHOLD_0 = common dso_local global i64 0, align 8
@BRB_REG_LB_TC_FULL_XON_THRESHOLD_0 = common dso_local global i64 0, align 8
@BRB_REG_LB_TC_PAUSE_XOFF_THRESHOLD_0 = common dso_local global i64 0, align 8
@BRB_REG_LB_TC_PAUSE_XON_THRESHOLD_0 = common dso_local global i64 0, align 8
@BRB_REG_MAIN_TC_FULL_XOFF_THRESHOLD_0 = common dso_local global i64 0, align 8
@BRB_REG_MAIN_TC_FULL_XON_THRESHOLD_0 = common dso_local global i64 0, align 8
@BRB_REG_MAIN_TC_PAUSE_XOFF_THRESHOLD_0 = common dso_local global i64 0, align 8
@BRB_REG_MAIN_TC_PAUSE_XON_THRESHOLD_0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_init_brb_ram(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.init_brb_ram_req* %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca %struct.init_brb_ram_req*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
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
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  store %struct.init_brb_ram_req* %2, %struct.init_brb_ram_req** %6, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %13, align 8
  %23 = load %struct.init_brb_ram_req*, %struct.init_brb_ram_req** %6, align 8
  %24 = getelementptr inbounds %struct.init_brb_ram_req, %struct.init_brb_ram_req* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @BRB_BLOCK_SIZE, align 4
  %27 = call i64 @DIV_ROUND_UP(i32 %25, i32 %26)
  store i64 %27, i64* %7, align 8
  %28 = load %struct.init_brb_ram_req*, %struct.init_brb_ram_req** %6, align 8
  %29 = getelementptr inbounds %struct.init_brb_ram_req, %struct.init_brb_ram_req* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @BRB_BLOCK_SIZE, align 4
  %32 = call i64 @DIV_ROUND_UP(i32 %30, i32 %31)
  store i64 %32, i64* %8, align 8
  %33 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %34 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @ECORE_IS_K2(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %3
  %39 = load i64, i64* @BRB_TOTAL_RAM_BLOCKS_K2, align 8
  br label %42

40:                                               ; preds = %3
  %41 = load i64, i64* @BRB_TOTAL_RAM_BLOCKS_BB, align 8
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i64 [ %39, %38 ], [ %41, %40 ]
  store i64 %43, i64* %9, align 8
  store i64 0, i64* %12, align 8
  br label %44

44:                                               ; preds = %60, %42
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* @MAX_NUM_PORTS, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  %49 = load %struct.init_brb_ram_req*, %struct.init_brb_ram_req** %6, align 8
  %50 = getelementptr inbounds %struct.init_brb_ram_req, %struct.init_brb_ram_req* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %12, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i64, i64* %13, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %13, align 8
  br label %59

59:                                               ; preds = %56, %48
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %12, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %12, align 8
  br label %44

63:                                               ; preds = %44
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %13, align 8
  %66 = udiv i64 %64, %65
  store i64 %66, i64* %10, align 8
  store i64 0, i64* %12, align 8
  br label %67

67:                                               ; preds = %227, %63
  %68 = load i64, i64* %12, align 8
  %69 = load %struct.init_brb_ram_req*, %struct.init_brb_ram_req** %6, align 8
  %70 = getelementptr inbounds %struct.init_brb_ram_req, %struct.init_brb_ram_req* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ult i64 %68, %71
  br i1 %72, label %73, label %230

73:                                               ; preds = %67
  %74 = load %struct.init_brb_ram_req*, %struct.init_brb_ram_req** %6, align 8
  %75 = getelementptr inbounds %struct.init_brb_ram_req, %struct.init_brb_ram_req* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @BRB_BLOCK_SIZE, align 4
  %78 = call i64 @DIV_ROUND_UP(i32 %76, i32 %77)
  store i64 %78, i64* %21, align 8
  %79 = load %struct.init_brb_ram_req*, %struct.init_brb_ram_req** %6, align 8
  %80 = getelementptr inbounds %struct.init_brb_ram_req, %struct.init_brb_ram_req* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* %12, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %73
  %87 = load i64, i64* %10, align 8
  br label %89

88:                                               ; preds = %73
  br label %89

89:                                               ; preds = %88, %86
  %90 = phi i64 [ %87, %86 ], [ 0, %88 ]
  store i64 %90, i64* %14, align 8
  %91 = load %struct.init_brb_ram_req*, %struct.init_brb_ram_req** %6, align 8
  %92 = getelementptr inbounds %struct.init_brb_ram_req, %struct.init_brb_ram_req* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* %12, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %21, align 8
  %99 = mul i64 %97, %98
  store i64 %99, i64* %16, align 8
  %100 = load i64, i64* %14, align 8
  %101 = load i64, i64* %16, align 8
  %102 = sub i64 %100, %101
  store i64 %102, i64* %15, align 8
  %103 = load %struct.init_brb_ram_req*, %struct.init_brb_ram_req** %6, align 8
  %104 = getelementptr inbounds %struct.init_brb_ram_req, %struct.init_brb_ram_req* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* %12, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* @BRB_MIN_BLOCKS_PER_TC, align 8
  %111 = mul i64 %109, %110
  store i64 %111, i64* %17, align 8
  %112 = load i64, i64* %17, align 8
  %113 = load i64, i64* %8, align 8
  %114 = add i64 %112, %113
  store i64 %114, i64* %18, align 8
  %115 = load i64, i64* %7, align 8
  store i64 %115, i64* %19, align 8
  %116 = load i64, i64* %19, align 8
  %117 = load i64, i64* %8, align 8
  %118 = add i64 %116, %117
  store i64 %118, i64* %20, align 8
  %119 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %120 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %121 = load i64, i64* @BRB_REG_TOTAL_MAC_SIZE, align 8
  %122 = load i64, i64* %12, align 8
  %123 = mul i64 %122, 4
  %124 = add i64 %121, %123
  %125 = load i64, i64* %14, align 8
  %126 = call i32 @ecore_wr(%struct.ecore_hwfn* %119, %struct.ecore_ptt* %120, i64 %124, i64 %125)
  %127 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %128 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %129 = load i64, i64* @BRB_REG_SHARED_HR_AREA, align 8
  %130 = load i64, i64* %12, align 8
  %131 = mul i64 %130, 4
  %132 = add i64 %129, %131
  %133 = load i64, i64* %15, align 8
  %134 = call i32 @ecore_wr(%struct.ecore_hwfn* %127, %struct.ecore_ptt* %128, i64 %132, i64 %133)
  store i64 0, i64* %22, align 8
  br label %135

135:                                              ; preds = %221, %89
  %136 = load i64, i64* %22, align 8
  %137 = load i64, i64* @NUM_OF_TCS, align 8
  %138 = icmp ult i64 %136, %137
  br i1 %138, label %139, label %226

139:                                              ; preds = %135
  %140 = load i64, i64* %22, align 8
  %141 = load %struct.init_brb_ram_req*, %struct.init_brb_ram_req** %6, align 8
  %142 = getelementptr inbounds %struct.init_brb_ram_req, %struct.init_brb_ram_req* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i64, i64* %12, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = icmp eq i64 %140, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %139
  store i64 0, i64* %21, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  br label %150

150:                                              ; preds = %149, %139
  %151 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %152 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %153 = load i64, i64* @BRB_REG_TC_GUARANTIED_0, align 8
  %154 = load i64, i64* %11, align 8
  %155 = add i64 %153, %154
  %156 = load i64, i64* %21, align 8
  %157 = call i32 @ecore_wr(%struct.ecore_hwfn* %151, %struct.ecore_ptt* %152, i64 %155, i64 %156)
  %158 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %159 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %160 = load i64, i64* @BRB_REG_MAIN_TC_GUARANTIED_HYST_0, align 8
  %161 = load i64, i64* %11, align 8
  %162 = add i64 %160, %161
  %163 = load i64, i64* @BRB_HYST_BLOCKS, align 8
  %164 = call i32 @ecore_wr(%struct.ecore_hwfn* %158, %struct.ecore_ptt* %159, i64 %162, i64 %163)
  %165 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %166 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %167 = load i64, i64* @BRB_REG_LB_TC_FULL_XOFF_THRESHOLD_0, align 8
  %168 = load i64, i64* %11, align 8
  %169 = add i64 %167, %168
  %170 = load i64, i64* %17, align 8
  %171 = call i32 @ecore_wr(%struct.ecore_hwfn* %165, %struct.ecore_ptt* %166, i64 %169, i64 %170)
  %172 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %173 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %174 = load i64, i64* @BRB_REG_LB_TC_FULL_XON_THRESHOLD_0, align 8
  %175 = load i64, i64* %11, align 8
  %176 = add i64 %174, %175
  %177 = load i64, i64* %18, align 8
  %178 = call i32 @ecore_wr(%struct.ecore_hwfn* %172, %struct.ecore_ptt* %173, i64 %176, i64 %177)
  %179 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %180 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %181 = load i64, i64* @BRB_REG_LB_TC_PAUSE_XOFF_THRESHOLD_0, align 8
  %182 = load i64, i64* %11, align 8
  %183 = add i64 %181, %182
  %184 = load i64, i64* %19, align 8
  %185 = call i32 @ecore_wr(%struct.ecore_hwfn* %179, %struct.ecore_ptt* %180, i64 %183, i64 %184)
  %186 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %187 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %188 = load i64, i64* @BRB_REG_LB_TC_PAUSE_XON_THRESHOLD_0, align 8
  %189 = load i64, i64* %11, align 8
  %190 = add i64 %188, %189
  %191 = load i64, i64* %20, align 8
  %192 = call i32 @ecore_wr(%struct.ecore_hwfn* %186, %struct.ecore_ptt* %187, i64 %190, i64 %191)
  %193 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %194 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %195 = load i64, i64* @BRB_REG_MAIN_TC_FULL_XOFF_THRESHOLD_0, align 8
  %196 = load i64, i64* %11, align 8
  %197 = add i64 %195, %196
  %198 = load i64, i64* %17, align 8
  %199 = call i32 @ecore_wr(%struct.ecore_hwfn* %193, %struct.ecore_ptt* %194, i64 %197, i64 %198)
  %200 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %201 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %202 = load i64, i64* @BRB_REG_MAIN_TC_FULL_XON_THRESHOLD_0, align 8
  %203 = load i64, i64* %11, align 8
  %204 = add i64 %202, %203
  %205 = load i64, i64* %18, align 8
  %206 = call i32 @ecore_wr(%struct.ecore_hwfn* %200, %struct.ecore_ptt* %201, i64 %204, i64 %205)
  %207 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %208 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %209 = load i64, i64* @BRB_REG_MAIN_TC_PAUSE_XOFF_THRESHOLD_0, align 8
  %210 = load i64, i64* %11, align 8
  %211 = add i64 %209, %210
  %212 = load i64, i64* %19, align 8
  %213 = call i32 @ecore_wr(%struct.ecore_hwfn* %207, %struct.ecore_ptt* %208, i64 %211, i64 %212)
  %214 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %215 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %216 = load i64, i64* @BRB_REG_MAIN_TC_PAUSE_XON_THRESHOLD_0, align 8
  %217 = load i64, i64* %11, align 8
  %218 = add i64 %216, %217
  %219 = load i64, i64* %20, align 8
  %220 = call i32 @ecore_wr(%struct.ecore_hwfn* %214, %struct.ecore_ptt* %215, i64 %218, i64 %219)
  br label %221

221:                                              ; preds = %150
  %222 = load i64, i64* %22, align 8
  %223 = add i64 %222, 1
  store i64 %223, i64* %22, align 8
  %224 = load i64, i64* %11, align 8
  %225 = add i64 %224, 4
  store i64 %225, i64* %11, align 8
  br label %135

226:                                              ; preds = %135
  br label %227

227:                                              ; preds = %226
  %228 = load i64, i64* %12, align 8
  %229 = add i64 %228, 1
  store i64 %229, i64* %12, align 8
  br label %67

230:                                              ; preds = %67
  ret void
}

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i64 @ECORE_IS_K2(i32) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
