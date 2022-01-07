; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_cdu_init_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_cdu_init_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ILT_CLI_CDUC = common dso_local global i64 0, align 8
@CDUC_CXT_SIZE = common dso_local global i32 0, align 4
@CDUC_BLOCK_WASTE = common dso_local global i32 0, align 4
@CDUC_NCIB = common dso_local global i64 0, align 8
@CDU_REG_CID_ADDR_PARAMS_RT_OFFSET = common dso_local global i32 0, align 4
@ILT_CLI_CDUT = common dso_local global i64 0, align 8
@CDUT_TYPE0_CXT_SIZE = common dso_local global i64 0, align 8
@CDUT_TYPE0_BLOCK_WASTE = common dso_local global i32 0, align 4
@CDUT_TYPE0_NCIB = common dso_local global i32 0, align 4
@CDU_REG_SEGMENT0_PARAMS_RT_OFFSET = common dso_local global i32 0, align 4
@CDUT_TYPE1_CXT_SIZE = common dso_local global i64 0, align 8
@CDUT_TYPE1_BLOCK_WASTE = common dso_local global i32 0, align 4
@CDUT_TYPE1_NCIB = common dso_local global i32 0, align 4
@CDU_REG_SEGMENT1_PARAMS_RT_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*)* @ecore_cdu_init_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_cdu_init_common(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca %struct.ecore_hwfn*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %2, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %9 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = load i64, i64* @ILT_CLI_CDUC, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %3, align 4
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %19 = call i32 @CONN_CXT_SIZE(%struct.ecore_hwfn* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @ILT_PAGE_IN_BYTES(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = sdiv i32 %21, %22
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @ILT_PAGE_IN_BYTES(i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %6, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sub nsw i32 %25, %28
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @CDUC_CXT_SIZE, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @SET_FIELD(i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @CDUC_BLOCK_WASTE, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @SET_FIELD(i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = load i64, i64* @CDUC_NCIB, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @SET_FIELD(i32 %38, i32 %40, i32 %41)
  %43 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %44 = load i32, i32* @CDU_REG_CID_ADDR_PARAMS_RT_OFFSET, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %43, i32 %44, i32 %45)
  %47 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %48 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load i64, i64* @ILT_CLI_CDUT, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %3, align 4
  %57 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %58 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @ILT_PAGE_IN_BYTES(i32 %64)
  %66 = load i32, i32* %6, align 4
  %67 = sdiv i32 %65, %66
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @ILT_PAGE_IN_BYTES(i32 %68)
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %6, align 4
  %72 = mul nsw i32 %70, %71
  %73 = sub nsw i32 %69, %72
  store i32 %73, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i64, i64* @CDUT_TYPE0_CXT_SIZE, align 8
  %76 = trunc i64 %75 to i32
  %77 = load i32, i32* %6, align 4
  %78 = ashr i32 %77, 3
  %79 = call i32 @SET_FIELD(i32 %74, i32 %76, i32 %78)
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @CDUT_TYPE0_BLOCK_WASTE, align 4
  %82 = load i32, i32* %5, align 4
  %83 = ashr i32 %82, 3
  %84 = call i32 @SET_FIELD(i32 %80, i32 %81, i32 %83)
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @CDUT_TYPE0_NCIB, align 4
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @SET_FIELD(i32 %85, i32 %86, i32 %87)
  %89 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %90 = load i32, i32* @CDU_REG_SEGMENT0_PARAMS_RT_OFFSET, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %89, i32 %90, i32 %91)
  %93 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %94 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @ILT_PAGE_IN_BYTES(i32 %100)
  %102 = load i32, i32* %6, align 4
  %103 = sdiv i32 %101, %102
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %3, align 4
  %105 = call i32 @ILT_PAGE_IN_BYTES(i32 %104)
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* %6, align 4
  %108 = mul nsw i32 %106, %107
  %109 = sub nsw i32 %105, %108
  store i32 %109, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load i64, i64* @CDUT_TYPE1_CXT_SIZE, align 8
  %112 = trunc i64 %111 to i32
  %113 = load i32, i32* %6, align 4
  %114 = ashr i32 %113, 3
  %115 = call i32 @SET_FIELD(i32 %110, i32 %112, i32 %114)
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @CDUT_TYPE1_BLOCK_WASTE, align 4
  %118 = load i32, i32* %5, align 4
  %119 = ashr i32 %118, 3
  %120 = call i32 @SET_FIELD(i32 %116, i32 %117, i32 %119)
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @CDUT_TYPE1_NCIB, align 4
  %123 = load i32, i32* %4, align 4
  %124 = call i32 @SET_FIELD(i32 %121, i32 %122, i32 %123)
  %125 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %126 = load i32, i32* @CDU_REG_SEGMENT1_PARAMS_RT_OFFSET, align 4
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @STORE_RT_REG(%struct.ecore_hwfn* %125, i32 %126, i32 %127)
  ret void
}

declare dso_local i32 @CONN_CXT_SIZE(%struct.ecore_hwfn*) #1

declare dso_local i32 @ILT_PAGE_IN_BYTES(i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @STORE_RT_REG(%struct.ecore_hwfn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
