; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_set_dscp_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_set_dscp_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.dcb_dscp_map = type { i32*, i32 }
%struct.ecore_dcbx_set = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64*, i64 }

@DCB_DSCP_ENABLE_MASK = common dso_local global i32 0, align 4
@ECORE_MSG_DCB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"flags = 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"pri_map[] = 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x\0A\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.dcb_dscp_map*, %struct.ecore_dcbx_set*)* @ecore_dcbx_set_dscp_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_dcbx_set_dscp_params(%struct.ecore_hwfn* %0, %struct.dcb_dscp_map* %1, %struct.ecore_dcbx_set* %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.dcb_dscp_map*, align 8
  %6 = alloca %struct.ecore_dcbx_set*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.dcb_dscp_map* %1, %struct.dcb_dscp_map** %5, align 8
  store %struct.ecore_dcbx_set* %2, %struct.ecore_dcbx_set** %6, align 8
  %11 = load %struct.dcb_dscp_map*, %struct.dcb_dscp_map** %5, align 8
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %13 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = call i32 @OSAL_MEMCPY(%struct.dcb_dscp_map* %11, i32* %15, i32 16)
  %17 = load i32, i32* @DCB_DSCP_ENABLE_MASK, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.dcb_dscp_map*, %struct.dcb_dscp_map** %5, align 8
  %20 = getelementptr inbounds %struct.dcb_dscp_map, %struct.dcb_dscp_map* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load %struct.ecore_dcbx_set*, %struct.ecore_dcbx_set** %6, align 8
  %24 = getelementptr inbounds %struct.ecore_dcbx_set, %struct.ecore_dcbx_set* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %3
  %29 = load i32, i32* @DCB_DSCP_ENABLE_MASK, align 4
  %30 = load %struct.dcb_dscp_map*, %struct.dcb_dscp_map** %5, align 8
  %31 = getelementptr inbounds %struct.dcb_dscp_map, %struct.dcb_dscp_map* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %28, %3
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %70, %34
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 8
  br i1 %37, label %38, label %73

38:                                               ; preds = %35
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %57, %38
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 8
  br i1 %41, label %42, label %62

42:                                               ; preds = %39
  %43 = load %struct.ecore_dcbx_set*, %struct.ecore_dcbx_set** %6, align 8
  %44 = getelementptr inbounds %struct.ecore_dcbx_set, %struct.ecore_dcbx_set* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* %9, align 4
  %53 = mul nsw i32 %52, 4
  %54 = shl i32 %51, %53
  %55 = load i32, i32* %10, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %42
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %39

62:                                               ; preds = %39
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.dcb_dscp_map*, %struct.dcb_dscp_map** %5, align 8
  %65 = getelementptr inbounds %struct.dcb_dscp_map, %struct.dcb_dscp_map* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %63, i32* %69, align 4
  br label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %35

73:                                               ; preds = %35
  %74 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %75 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i32 1, i32* %77, align 4
  %78 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %79 = load i32, i32* @ECORE_MSG_DCB, align 4
  %80 = load %struct.dcb_dscp_map*, %struct.dcb_dscp_map** %5, align 8
  %81 = getelementptr inbounds %struct.dcb_dscp_map, %struct.dcb_dscp_map* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %78, i32 %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %85 = load i32, i32* @ECORE_MSG_DCB, align 4
  %86 = load %struct.dcb_dscp_map*, %struct.dcb_dscp_map** %5, align 8
  %87 = getelementptr inbounds %struct.dcb_dscp_map, %struct.dcb_dscp_map* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.dcb_dscp_map*, %struct.dcb_dscp_map** %5, align 8
  %92 = getelementptr inbounds %struct.dcb_dscp_map, %struct.dcb_dscp_map* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.dcb_dscp_map*, %struct.dcb_dscp_map** %5, align 8
  %97 = getelementptr inbounds %struct.dcb_dscp_map, %struct.dcb_dscp_map* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.dcb_dscp_map*, %struct.dcb_dscp_map** %5, align 8
  %102 = getelementptr inbounds %struct.dcb_dscp_map, %struct.dcb_dscp_map* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.dcb_dscp_map*, %struct.dcb_dscp_map** %5, align 8
  %107 = getelementptr inbounds %struct.dcb_dscp_map, %struct.dcb_dscp_map* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 4
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.dcb_dscp_map*, %struct.dcb_dscp_map** %5, align 8
  %112 = getelementptr inbounds %struct.dcb_dscp_map, %struct.dcb_dscp_map* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 5
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.dcb_dscp_map*, %struct.dcb_dscp_map** %5, align 8
  %117 = getelementptr inbounds %struct.dcb_dscp_map, %struct.dcb_dscp_map* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 6
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.dcb_dscp_map*, %struct.dcb_dscp_map** %5, align 8
  %122 = getelementptr inbounds %struct.dcb_dscp_map, %struct.dcb_dscp_map* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 7
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %84, i32 %85, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %95, i32 %100, i32 %105, i32 %110, i32 %115, i32 %120, i32 %125)
  %127 = load i32, i32* @ECORE_SUCCESS, align 4
  ret i32 %127
}

declare dso_local i32 @OSAL_MEMCPY(%struct.dcb_dscp_map*, i32*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
