; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_set_ets_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_set_ets_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.dcbx_ets_feature = type { i32, i32*, i8**, i8** }
%struct.ecore_dcbx_params = type { i64*, i32*, i32*, i64, i64, i64, i64 }

@DCBX_ETS_WILLING_MASK = common dso_local global i32 0, align 4
@DCBX_ETS_CBS_MASK = common dso_local global i32 0, align 4
@DCBX_ETS_ENABLED_MASK = common dso_local global i32 0, align 4
@DCBX_ETS_MAX_TCS_MASK = common dso_local global i32 0, align 4
@DCBX_ETS_MAX_TCS_OFFSET = common dso_local global i32 0, align 4
@ECORE_MAX_PFC_PRIORITIES = common dso_local global i32 0, align 4
@ECORE_MSG_DCB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"flags = 0x%x pri_tc = 0x%x tc_bwl[] = {0x%x, 0x%x} tc_tsa = {0x%x, 0x%x}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.dcbx_ets_feature*, %struct.ecore_dcbx_params*)* @ecore_dcbx_set_ets_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_dcbx_set_ets_data(%struct.ecore_hwfn* %0, %struct.dcbx_ets_feature* %1, %struct.ecore_dcbx_params* %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.dcbx_ets_feature*, align 8
  %6 = alloca %struct.ecore_dcbx_params*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.dcbx_ets_feature* %1, %struct.dcbx_ets_feature** %5, align 8
  store %struct.ecore_dcbx_params* %2, %struct.ecore_dcbx_params** %6, align 8
  %11 = load %struct.ecore_dcbx_params*, %struct.ecore_dcbx_params** %6, align 8
  %12 = getelementptr inbounds %struct.ecore_dcbx_params, %struct.ecore_dcbx_params* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32, i32* @DCBX_ETS_WILLING_MASK, align 4
  %17 = load %struct.dcbx_ets_feature*, %struct.dcbx_ets_feature** %5, align 8
  %18 = getelementptr inbounds %struct.dcbx_ets_feature, %struct.dcbx_ets_feature* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  br label %28

21:                                               ; preds = %3
  %22 = load i32, i32* @DCBX_ETS_WILLING_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.dcbx_ets_feature*, %struct.dcbx_ets_feature** %5, align 8
  %25 = getelementptr inbounds %struct.dcbx_ets_feature, %struct.dcbx_ets_feature* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 8
  br label %28

28:                                               ; preds = %21, %15
  %29 = load %struct.ecore_dcbx_params*, %struct.ecore_dcbx_params** %6, align 8
  %30 = getelementptr inbounds %struct.ecore_dcbx_params, %struct.ecore_dcbx_params* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32, i32* @DCBX_ETS_CBS_MASK, align 4
  %35 = load %struct.dcbx_ets_feature*, %struct.dcbx_ets_feature** %5, align 8
  %36 = getelementptr inbounds %struct.dcbx_ets_feature, %struct.dcbx_ets_feature* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %46

39:                                               ; preds = %28
  %40 = load i32, i32* @DCBX_ETS_CBS_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.dcbx_ets_feature*, %struct.dcbx_ets_feature** %5, align 8
  %43 = getelementptr inbounds %struct.dcbx_ets_feature, %struct.dcbx_ets_feature* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %39, %33
  %47 = load %struct.ecore_dcbx_params*, %struct.ecore_dcbx_params** %6, align 8
  %48 = getelementptr inbounds %struct.ecore_dcbx_params, %struct.ecore_dcbx_params* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32, i32* @DCBX_ETS_ENABLED_MASK, align 4
  %53 = load %struct.dcbx_ets_feature*, %struct.dcbx_ets_feature** %5, align 8
  %54 = getelementptr inbounds %struct.dcbx_ets_feature, %struct.dcbx_ets_feature* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %64

57:                                               ; preds = %46
  %58 = load i32, i32* @DCBX_ETS_ENABLED_MASK, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.dcbx_ets_feature*, %struct.dcbx_ets_feature** %5, align 8
  %61 = getelementptr inbounds %struct.dcbx_ets_feature, %struct.dcbx_ets_feature* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %57, %51
  %65 = load i32, i32* @DCBX_ETS_MAX_TCS_MASK, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.dcbx_ets_feature*, %struct.dcbx_ets_feature** %5, align 8
  %68 = getelementptr inbounds %struct.dcbx_ets_feature, %struct.dcbx_ets_feature* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load %struct.ecore_dcbx_params*, %struct.ecore_dcbx_params** %6, align 8
  %72 = getelementptr inbounds %struct.ecore_dcbx_params, %struct.ecore_dcbx_params* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = load i32, i32* @DCBX_ETS_MAX_TCS_OFFSET, align 4
  %76 = shl i32 %74, %75
  %77 = load %struct.dcbx_ets_feature*, %struct.dcbx_ets_feature** %5, align 8
  %78 = getelementptr inbounds %struct.dcbx_ets_feature, %struct.dcbx_ets_feature* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  %81 = load %struct.dcbx_ets_feature*, %struct.dcbx_ets_feature** %5, align 8
  %82 = getelementptr inbounds %struct.dcbx_ets_feature, %struct.dcbx_ets_feature* %81, i32 0, i32 3
  %83 = load i8**, i8*** %82, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 0
  %85 = bitcast i8** %84 to i32*
  store i32* %85, i32** %7, align 8
  %86 = load %struct.dcbx_ets_feature*, %struct.dcbx_ets_feature** %5, align 8
  %87 = getelementptr inbounds %struct.dcbx_ets_feature, %struct.dcbx_ets_feature* %86, i32 0, i32 2
  %88 = load i8**, i8*** %87, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 0
  %90 = bitcast i8** %89 to i32*
  store i32* %90, i32** %8, align 8
  %91 = load %struct.dcbx_ets_feature*, %struct.dcbx_ets_feature** %5, align 8
  %92 = getelementptr inbounds %struct.dcbx_ets_feature, %struct.dcbx_ets_feature* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  store i32 0, i32* %94, align 4
  store i32 0, i32* %10, align 4
  br label %95

95:                                               ; preds = %141, %64
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @ECORE_MAX_PFC_PRIORITIES, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %144

99:                                               ; preds = %95
  %100 = load %struct.ecore_dcbx_params*, %struct.ecore_dcbx_params** %6, align 8
  %101 = getelementptr inbounds %struct.ecore_dcbx_params, %struct.ecore_dcbx_params* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %7, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 %106, i32* %110, align 4
  %111 = load %struct.ecore_dcbx_params*, %struct.ecore_dcbx_params** %6, align 8
  %112 = getelementptr inbounds %struct.ecore_dcbx_params, %struct.ecore_dcbx_params* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %8, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %117, i32* %121, align 4
  %122 = load %struct.ecore_dcbx_params*, %struct.ecore_dcbx_params** %6, align 8
  %123 = getelementptr inbounds %struct.ecore_dcbx_params, %struct.ecore_dcbx_params* %122, i32 0, i32 0
  %124 = load i64*, i64** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = trunc i64 %128 to i32
  %130 = load i32, i32* %10, align 4
  %131 = sub nsw i32 7, %130
  %132 = mul nsw i32 %131, 4
  %133 = shl i32 %129, %132
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load %struct.dcbx_ets_feature*, %struct.dcbx_ets_feature** %5, align 8
  %136 = getelementptr inbounds %struct.dcbx_ets_feature, %struct.dcbx_ets_feature* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %134
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %99
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  br label %95

144:                                              ; preds = %95
  store i32 0, i32* %10, align 4
  br label %145

145:                                              ; preds = %177, %144
  %146 = load i32, i32* %10, align 4
  %147 = icmp slt i32 %146, 2
  br i1 %147, label %148, label %180

148:                                              ; preds = %145
  %149 = load %struct.dcbx_ets_feature*, %struct.dcbx_ets_feature** %5, align 8
  %150 = getelementptr inbounds %struct.dcbx_ets_feature, %struct.dcbx_ets_feature* %149, i32 0, i32 3
  %151 = load i8**, i8*** %150, align 8
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8*, i8** %151, i64 %153
  %155 = load i8*, i8** %154, align 8
  %156 = call i8* @OSAL_CPU_TO_BE32(i8* %155)
  %157 = load %struct.dcbx_ets_feature*, %struct.dcbx_ets_feature** %5, align 8
  %158 = getelementptr inbounds %struct.dcbx_ets_feature, %struct.dcbx_ets_feature* %157, i32 0, i32 3
  %159 = load i8**, i8*** %158, align 8
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8*, i8** %159, i64 %161
  store i8* %156, i8** %162, align 8
  %163 = load %struct.dcbx_ets_feature*, %struct.dcbx_ets_feature** %5, align 8
  %164 = getelementptr inbounds %struct.dcbx_ets_feature, %struct.dcbx_ets_feature* %163, i32 0, i32 2
  %165 = load i8**, i8*** %164, align 8
  %166 = load i32, i32* %10, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8*, i8** %165, i64 %167
  %169 = load i8*, i8** %168, align 8
  %170 = call i8* @OSAL_CPU_TO_BE32(i8* %169)
  %171 = load %struct.dcbx_ets_feature*, %struct.dcbx_ets_feature** %5, align 8
  %172 = getelementptr inbounds %struct.dcbx_ets_feature, %struct.dcbx_ets_feature* %171, i32 0, i32 2
  %173 = load i8**, i8*** %172, align 8
  %174 = load i32, i32* %10, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8*, i8** %173, i64 %175
  store i8* %170, i8** %176, align 8
  br label %177

177:                                              ; preds = %148
  %178 = load i32, i32* %10, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %10, align 4
  br label %145

180:                                              ; preds = %145
  %181 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %182 = load i32, i32* @ECORE_MSG_DCB, align 4
  %183 = load %struct.dcbx_ets_feature*, %struct.dcbx_ets_feature** %5, align 8
  %184 = getelementptr inbounds %struct.dcbx_ets_feature, %struct.dcbx_ets_feature* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.dcbx_ets_feature*, %struct.dcbx_ets_feature** %5, align 8
  %187 = getelementptr inbounds %struct.dcbx_ets_feature, %struct.dcbx_ets_feature* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.dcbx_ets_feature*, %struct.dcbx_ets_feature** %5, align 8
  %192 = getelementptr inbounds %struct.dcbx_ets_feature, %struct.dcbx_ets_feature* %191, i32 0, i32 3
  %193 = load i8**, i8*** %192, align 8
  %194 = getelementptr inbounds i8*, i8** %193, i64 0
  %195 = load i8*, i8** %194, align 8
  %196 = load %struct.dcbx_ets_feature*, %struct.dcbx_ets_feature** %5, align 8
  %197 = getelementptr inbounds %struct.dcbx_ets_feature, %struct.dcbx_ets_feature* %196, i32 0, i32 3
  %198 = load i8**, i8*** %197, align 8
  %199 = getelementptr inbounds i8*, i8** %198, i64 1
  %200 = load i8*, i8** %199, align 8
  %201 = load %struct.dcbx_ets_feature*, %struct.dcbx_ets_feature** %5, align 8
  %202 = getelementptr inbounds %struct.dcbx_ets_feature, %struct.dcbx_ets_feature* %201, i32 0, i32 2
  %203 = load i8**, i8*** %202, align 8
  %204 = getelementptr inbounds i8*, i8** %203, i64 0
  %205 = load i8*, i8** %204, align 8
  %206 = load %struct.dcbx_ets_feature*, %struct.dcbx_ets_feature** %5, align 8
  %207 = getelementptr inbounds %struct.dcbx_ets_feature, %struct.dcbx_ets_feature* %206, i32 0, i32 2
  %208 = load i8**, i8*** %207, align 8
  %209 = getelementptr inbounds i8*, i8** %208, i64 1
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %181, i32 %182, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %185, i32 %190, i8* %195, i8* %200, i8* %205, i8* %210)
  ret void
}

declare dso_local i8* @OSAL_CPU_TO_BE32(i8*) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
