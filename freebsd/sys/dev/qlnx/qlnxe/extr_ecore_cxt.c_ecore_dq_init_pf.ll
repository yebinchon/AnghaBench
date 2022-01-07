; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_dq_init_pf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_dq_init_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_cxt_mngr* }
%struct.ecore_cxt_mngr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@DQ_RANGE_SHIFT = common dso_local global i32 0, align 4
@DORQ_REG_PF_MAX_ICID_0_RT_OFFSET = common dso_local global i32 0, align 4
@DORQ_REG_VF_MAX_ICID_0_RT_OFFSET = common dso_local global i32 0, align 4
@DORQ_REG_PF_MAX_ICID_1_RT_OFFSET = common dso_local global i32 0, align 4
@DORQ_REG_VF_MAX_ICID_1_RT_OFFSET = common dso_local global i32 0, align 4
@DORQ_REG_PF_MAX_ICID_2_RT_OFFSET = common dso_local global i32 0, align 4
@DORQ_REG_VF_MAX_ICID_2_RT_OFFSET = common dso_local global i32 0, align 4
@DORQ_REG_PF_MAX_ICID_3_RT_OFFSET = common dso_local global i32 0, align 4
@DORQ_REG_VF_MAX_ICID_3_RT_OFFSET = common dso_local global i32 0, align 4
@DORQ_REG_PF_MAX_ICID_4_RT_OFFSET = common dso_local global i32 0, align 4
@DORQ_REG_VF_MAX_ICID_4_RT_OFFSET = common dso_local global i32 0, align 4
@DORQ_REG_PF_MAX_ICID_5_RT_OFFSET = common dso_local global i32 0, align 4
@DORQ_REG_VF_MAX_ICID_5_RT_OFFSET = common dso_local global i32 0, align 4
@DORQ_REG_PF_MAX_ICID_6_RT_OFFSET = common dso_local global i32 0, align 4
@DORQ_REG_VF_MAX_ICID_6_RT_OFFSET = common dso_local global i32 0, align 4
@DORQ_REG_PF_MAX_ICID_7_RT_OFFSET = common dso_local global i32 0, align 4
@DORQ_REG_VF_MAX_ICID_7_RT_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*)* @ecore_dq_init_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_dq_init_pf(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca %struct.ecore_hwfn*, align 8
  %3 = alloca %struct.ecore_cxt_mngr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %2, align 8
  %6 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %7 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %6, i32 0, i32 0
  %8 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %7, align 8
  store %struct.ecore_cxt_mngr* %8, %struct.ecore_cxt_mngr** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %3, align 8
  %10 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @DQ_RANGE_SHIFT, align 4
  %16 = ashr i32 %14, %15
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %20 = load i32, i32* @DORQ_REG_PF_MAX_ICID_0_RT_OFFSET, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %19, i32 %20, i32 %21)
  %23 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %3, align 8
  %24 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DQ_RANGE_SHIFT, align 4
  %30 = ashr i32 %28, %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %34 = load i32, i32* @DORQ_REG_VF_MAX_ICID_0_RT_OFFSET, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %33, i32 %34, i32 %35)
  %37 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %3, align 8
  %38 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DQ_RANGE_SHIFT, align 4
  %44 = ashr i32 %42, %43
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %48 = load i32, i32* @DORQ_REG_PF_MAX_ICID_1_RT_OFFSET, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %47, i32 %48, i32 %49)
  %51 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %3, align 8
  %52 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @DQ_RANGE_SHIFT, align 4
  %58 = ashr i32 %56, %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %5, align 4
  %61 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %62 = load i32, i32* @DORQ_REG_VF_MAX_ICID_1_RT_OFFSET, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %61, i32 %62, i32 %63)
  %65 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %3, align 8
  %66 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @DQ_RANGE_SHIFT, align 4
  %72 = ashr i32 %70, %71
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %4, align 4
  %75 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %76 = load i32, i32* @DORQ_REG_PF_MAX_ICID_2_RT_OFFSET, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %75, i32 %76, i32 %77)
  %79 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %3, align 8
  %80 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 2
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @DQ_RANGE_SHIFT, align 4
  %86 = ashr i32 %84, %85
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %5, align 4
  %89 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %90 = load i32, i32* @DORQ_REG_VF_MAX_ICID_2_RT_OFFSET, align 4
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %89, i32 %90, i32 %91)
  %93 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %3, align 8
  %94 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 3
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @DQ_RANGE_SHIFT, align 4
  %100 = ashr i32 %98, %99
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %4, align 4
  %103 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %104 = load i32, i32* @DORQ_REG_PF_MAX_ICID_3_RT_OFFSET, align 4
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %103, i32 %104, i32 %105)
  %107 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %3, align 8
  %108 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 3
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @DQ_RANGE_SHIFT, align 4
  %114 = ashr i32 %112, %113
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %5, align 4
  %117 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %118 = load i32, i32* @DORQ_REG_VF_MAX_ICID_3_RT_OFFSET, align 4
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %117, i32 %118, i32 %119)
  %121 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %3, align 8
  %122 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 4
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @DQ_RANGE_SHIFT, align 4
  %128 = ashr i32 %126, %127
  %129 = load i32, i32* %4, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %4, align 4
  %131 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %132 = load i32, i32* @DORQ_REG_PF_MAX_ICID_4_RT_OFFSET, align 4
  %133 = load i32, i32* %4, align 4
  %134 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %131, i32 %132, i32 %133)
  %135 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %3, align 8
  %136 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %135, i32 0, i32 0
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i64 4
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @DQ_RANGE_SHIFT, align 4
  %142 = ashr i32 %140, %141
  %143 = load i32, i32* %5, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* %5, align 4
  %145 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %146 = load i32, i32* @DORQ_REG_VF_MAX_ICID_4_RT_OFFSET, align 4
  %147 = load i32, i32* %5, align 4
  %148 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %145, i32 %146, i32 %147)
  %149 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %3, align 8
  %150 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %149, i32 0, i32 0
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i64 5
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @DQ_RANGE_SHIFT, align 4
  %156 = ashr i32 %154, %155
  %157 = load i32, i32* %4, align 4
  %158 = add nsw i32 %157, %156
  store i32 %158, i32* %4, align 4
  %159 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %160 = load i32, i32* @DORQ_REG_PF_MAX_ICID_5_RT_OFFSET, align 4
  %161 = load i32, i32* %4, align 4
  %162 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %159, i32 %160, i32 %161)
  %163 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %3, align 8
  %164 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %163, i32 0, i32 0
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i64 5
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @DQ_RANGE_SHIFT, align 4
  %170 = ashr i32 %168, %169
  %171 = load i32, i32* %5, align 4
  %172 = add nsw i32 %171, %170
  store i32 %172, i32* %5, align 4
  %173 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %174 = load i32, i32* @DORQ_REG_VF_MAX_ICID_5_RT_OFFSET, align 4
  %175 = load i32, i32* %5, align 4
  %176 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %173, i32 %174, i32 %175)
  %177 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %178 = load i32, i32* @DORQ_REG_PF_MAX_ICID_6_RT_OFFSET, align 4
  %179 = load i32, i32* %4, align 4
  %180 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %177, i32 %178, i32 %179)
  %181 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %182 = load i32, i32* @DORQ_REG_VF_MAX_ICID_6_RT_OFFSET, align 4
  %183 = load i32, i32* %5, align 4
  %184 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %181, i32 %182, i32 %183)
  %185 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %186 = load i32, i32* @DORQ_REG_PF_MAX_ICID_7_RT_OFFSET, align 4
  %187 = load i32, i32* %4, align 4
  %188 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %185, i32 %186, i32 %187)
  %189 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %190 = load i32, i32* @DORQ_REG_VF_MAX_ICID_7_RT_OFFSET, align 4
  %191 = load i32, i32* %5, align 4
  %192 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %189, i32 %190, i32 %191)
  ret void
}

declare dso_local i32 @STORE_RT_REG(%struct.ecore_hwfn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
