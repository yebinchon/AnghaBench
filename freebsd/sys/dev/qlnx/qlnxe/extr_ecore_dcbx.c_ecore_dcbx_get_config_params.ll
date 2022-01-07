; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_get_config_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_get_config_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_8__, %struct.ecore_dcbx_set, i32, i32, i64 }
%struct.TYPE_8__ = type { i32, %struct.ecore_dcbx_set }
%struct.ecore_dcbx_set = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_10__ }
%struct.ecore_dcbx_get = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_10__, i32, i64, i64, i64 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ECORE_NOMEM = common dso_local global i32 0, align 4
@ECORE_DCBX_OPERATIONAL_MIB = common dso_local global i32 0, align 4
@DCBX_CONFIG_VERSION_DISABLED = common dso_local global i32 0, align 4
@DCBX_CONFIG_VERSION_CEE = common dso_local global i32 0, align 4
@DCBX_CONFIG_VERSION_IEEE = common dso_local global i32 0, align 4
@DCBX_CONFIG_VERSION_STATIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_dcbx_get_config_params(%struct.ecore_hwfn* %0, %struct.ecore_dcbx_set* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_dcbx_set*, align 8
  %6 = alloca %struct.ecore_dcbx_get*, align 8
  %7 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_dcbx_set* %1, %struct.ecore_dcbx_set** %5, align 8
  %8 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %9 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %8, i32 0, i32 1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.ecore_dcbx_set*, %struct.ecore_dcbx_set** %5, align 8
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %19 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %18, i32 0, i32 1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = call i32 @OSAL_MEMCPY(%struct.ecore_dcbx_set* %17, %struct.TYPE_10__* %21, i32 4)
  %23 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %23, i32* %3, align 4
  br label %155

24:                                               ; preds = %2
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %26 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.ecore_dcbx_get* @OSAL_ALLOC(i32 %27, i32 %28, i32 64)
  store %struct.ecore_dcbx_get* %29, %struct.ecore_dcbx_get** %6, align 8
  %30 = load %struct.ecore_dcbx_get*, %struct.ecore_dcbx_get** %6, align 8
  %31 = icmp ne %struct.ecore_dcbx_get* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %33, i32* %3, align 4
  br label %155

34:                                               ; preds = %24
  %35 = load %struct.ecore_dcbx_get*, %struct.ecore_dcbx_get** %6, align 8
  %36 = call i32 @OSAL_MEMSET(%struct.ecore_dcbx_get* %35, i32 0, i32 64)
  %37 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %38 = load %struct.ecore_dcbx_get*, %struct.ecore_dcbx_get** %6, align 8
  %39 = load i32, i32* @ECORE_DCBX_OPERATIONAL_MIB, align 4
  %40 = call i32 @ecore_dcbx_query_params(%struct.ecore_hwfn* %37, %struct.ecore_dcbx_get* %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %45 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ecore_dcbx_get*, %struct.ecore_dcbx_get** %6, align 8
  %48 = call i32 @OSAL_FREE(i32 %46, %struct.ecore_dcbx_get* %47)
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %155

50:                                               ; preds = %34
  %51 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %52 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %51, i32 0, i32 1
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 4
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* @DCBX_CONFIG_VERSION_DISABLED, align 4
  %57 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %58 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %57, i32 0, i32 1
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 3
  store i32 %56, i32* %61, align 8
  %62 = load %struct.ecore_dcbx_get*, %struct.ecore_dcbx_get** %6, align 8
  %63 = getelementptr inbounds %struct.ecore_dcbx_get, %struct.ecore_dcbx_get* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %50
  %68 = load i32, i32* @DCBX_CONFIG_VERSION_CEE, align 4
  %69 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %70 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %69, i32 0, i32 1
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %68
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %67, %50
  %77 = load %struct.ecore_dcbx_get*, %struct.ecore_dcbx_get** %6, align 8
  %78 = getelementptr inbounds %struct.ecore_dcbx_get, %struct.ecore_dcbx_get* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %76
  %83 = load i32, i32* @DCBX_CONFIG_VERSION_IEEE, align 4
  %84 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %85 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %84, i32 0, i32 1
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %83
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %82, %76
  %92 = load %struct.ecore_dcbx_get*, %struct.ecore_dcbx_get** %6, align 8
  %93 = getelementptr inbounds %struct.ecore_dcbx_get, %struct.ecore_dcbx_get* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %91
  %98 = load i32, i32* @DCBX_CONFIG_VERSION_STATIC, align 4
  %99 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %100 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %99, i32 0, i32 1
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %98
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %97, %91
  %107 = load %struct.ecore_dcbx_get*, %struct.ecore_dcbx_get** %6, align 8
  %108 = getelementptr inbounds %struct.ecore_dcbx_get, %struct.ecore_dcbx_get* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %112 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %111, i32 0, i32 1
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 2
  store i32 %110, i32* %115, align 4
  %116 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %117 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %116, i32 0, i32 1
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %122 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %121, i32 0, i32 1
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = call i32 @OSAL_MEMCPY(%struct.ecore_dcbx_set* %120, %struct.TYPE_10__* %125, i32 4)
  %127 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %128 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %127, i32 0, i32 1
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load %struct.ecore_dcbx_get*, %struct.ecore_dcbx_get** %6, align 8
  %134 = getelementptr inbounds %struct.ecore_dcbx_get, %struct.ecore_dcbx_get* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = call i32 @OSAL_MEMCPY(%struct.ecore_dcbx_set* %132, %struct.TYPE_10__* %135, i32 4)
  %137 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %138 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %137, i32 0, i32 1
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  store i32 1, i32* %142, align 8
  %143 = load %struct.ecore_dcbx_set*, %struct.ecore_dcbx_set** %5, align 8
  %144 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %145 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %144, i32 0, i32 1
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = call i32 @OSAL_MEMCPY(%struct.ecore_dcbx_set* %143, %struct.TYPE_10__* %147, i32 4)
  %149 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %150 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.ecore_dcbx_get*, %struct.ecore_dcbx_get** %6, align 8
  %153 = call i32 @OSAL_FREE(i32 %151, %struct.ecore_dcbx_get* %152)
  %154 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %106, %43, %32, %16
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32 @OSAL_MEMCPY(%struct.ecore_dcbx_set*, %struct.TYPE_10__*, i32) #1

declare dso_local %struct.ecore_dcbx_get* @OSAL_ALLOC(i32, i32, i32) #1

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_dcbx_get*, i32, i32) #1

declare dso_local i32 @ecore_dcbx_query_params(%struct.ecore_hwfn*, %struct.ecore_dcbx_get*, i32) #1

declare dso_local i32 @OSAL_FREE(i32, %struct.ecore_dcbx_get*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
