; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_copy_mib.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_copy_mib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_dcbx_mib_meta_data = type { %struct.TYPE_2__*, i32, i32, %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_DCBX_REMOTE_LLDP_MIB = common dso_local global i32 0, align 4
@ECORE_DCBX_LLDP_TLVS = common dso_local global i32 0, align 4
@ECORE_MSG_DCB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"mib type = %d, try count = %d prefix seq num  = %d suffix seq num = %d\0A\00", align 1
@ECORE_DCBX_MAX_MIB_READ_TRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [85 x i8] c"MIB read err, mib type = %d, try count = %d prefix seq num = %d suffix seq num = %d\0A\00", align 1
@ECORE_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_dcbx_mib_meta_data*, i32)* @ecore_dcbx_copy_mib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_dcbx_copy_mib(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.ecore_dcbx_mib_meta_data* %2, i32 %3) #0 {
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca %struct.ecore_dcbx_mib_meta_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store %struct.ecore_dcbx_mib_meta_data* %2, %struct.ecore_dcbx_mib_meta_data** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %13, i32* %12, align 4
  br label %14

14:                                               ; preds = %110, %4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @ECORE_DCBX_REMOTE_LLDP_MIB, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %14
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %20 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %21 = load %struct.ecore_dcbx_mib_meta_data*, %struct.ecore_dcbx_mib_meta_data** %7, align 8
  %22 = getelementptr inbounds %struct.ecore_dcbx_mib_meta_data, %struct.ecore_dcbx_mib_meta_data* %21, i32 0, i32 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load %struct.ecore_dcbx_mib_meta_data*, %struct.ecore_dcbx_mib_meta_data** %7, align 8
  %25 = getelementptr inbounds %struct.ecore_dcbx_mib_meta_data, %struct.ecore_dcbx_mib_meta_data* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ecore_dcbx_mib_meta_data*, %struct.ecore_dcbx_mib_meta_data** %7, align 8
  %28 = getelementptr inbounds %struct.ecore_dcbx_mib_meta_data, %struct.ecore_dcbx_mib_meta_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ecore_memcpy_from(%struct.ecore_hwfn* %19, %struct.ecore_ptt* %20, %struct.TYPE_2__* %23, i32 %26, i32 %29)
  %31 = load %struct.ecore_dcbx_mib_meta_data*, %struct.ecore_dcbx_mib_meta_data** %7, align 8
  %32 = getelementptr inbounds %struct.ecore_dcbx_mib_meta_data, %struct.ecore_dcbx_mib_meta_data* %31, i32 0, i32 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %9, align 8
  %36 = load %struct.ecore_dcbx_mib_meta_data*, %struct.ecore_dcbx_mib_meta_data** %7, align 8
  %37 = getelementptr inbounds %struct.ecore_dcbx_mib_meta_data, %struct.ecore_dcbx_mib_meta_data* %36, i32 0, i32 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %10, align 8
  br label %92

41:                                               ; preds = %14
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @ECORE_DCBX_LLDP_TLVS, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %68

45:                                               ; preds = %41
  %46 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %47 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %48 = load %struct.ecore_dcbx_mib_meta_data*, %struct.ecore_dcbx_mib_meta_data** %7, align 8
  %49 = getelementptr inbounds %struct.ecore_dcbx_mib_meta_data, %struct.ecore_dcbx_mib_meta_data* %48, i32 0, i32 3
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load %struct.ecore_dcbx_mib_meta_data*, %struct.ecore_dcbx_mib_meta_data** %7, align 8
  %52 = getelementptr inbounds %struct.ecore_dcbx_mib_meta_data, %struct.ecore_dcbx_mib_meta_data* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ecore_dcbx_mib_meta_data*, %struct.ecore_dcbx_mib_meta_data** %7, align 8
  %55 = getelementptr inbounds %struct.ecore_dcbx_mib_meta_data, %struct.ecore_dcbx_mib_meta_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ecore_memcpy_from(%struct.ecore_hwfn* %46, %struct.ecore_ptt* %47, %struct.TYPE_2__* %50, i32 %53, i32 %56)
  %58 = load %struct.ecore_dcbx_mib_meta_data*, %struct.ecore_dcbx_mib_meta_data** %7, align 8
  %59 = getelementptr inbounds %struct.ecore_dcbx_mib_meta_data, %struct.ecore_dcbx_mib_meta_data* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %9, align 8
  %63 = load %struct.ecore_dcbx_mib_meta_data*, %struct.ecore_dcbx_mib_meta_data** %7, align 8
  %64 = getelementptr inbounds %struct.ecore_dcbx_mib_meta_data, %struct.ecore_dcbx_mib_meta_data* %63, i32 0, i32 3
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %10, align 8
  br label %91

68:                                               ; preds = %41
  %69 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %70 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %71 = load %struct.ecore_dcbx_mib_meta_data*, %struct.ecore_dcbx_mib_meta_data** %7, align 8
  %72 = getelementptr inbounds %struct.ecore_dcbx_mib_meta_data, %struct.ecore_dcbx_mib_meta_data* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load %struct.ecore_dcbx_mib_meta_data*, %struct.ecore_dcbx_mib_meta_data** %7, align 8
  %75 = getelementptr inbounds %struct.ecore_dcbx_mib_meta_data, %struct.ecore_dcbx_mib_meta_data* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ecore_dcbx_mib_meta_data*, %struct.ecore_dcbx_mib_meta_data** %7, align 8
  %78 = getelementptr inbounds %struct.ecore_dcbx_mib_meta_data, %struct.ecore_dcbx_mib_meta_data* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @ecore_memcpy_from(%struct.ecore_hwfn* %69, %struct.ecore_ptt* %70, %struct.TYPE_2__* %73, i32 %76, i32 %79)
  %81 = load %struct.ecore_dcbx_mib_meta_data*, %struct.ecore_dcbx_mib_meta_data** %7, align 8
  %82 = getelementptr inbounds %struct.ecore_dcbx_mib_meta_data, %struct.ecore_dcbx_mib_meta_data* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %9, align 8
  %86 = load %struct.ecore_dcbx_mib_meta_data*, %struct.ecore_dcbx_mib_meta_data** %7, align 8
  %87 = getelementptr inbounds %struct.ecore_dcbx_mib_meta_data, %struct.ecore_dcbx_mib_meta_data* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %10, align 8
  br label %91

91:                                               ; preds = %68, %45
  br label %92

92:                                               ; preds = %91, %18
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  %95 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %96 = load i32, i32* @ECORE_MSG_DCB, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i64, i64* %9, align 8
  %100 = load i64, i64* %10, align 8
  %101 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %95, i32 %96, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %97, i32 %98, i64 %99, i64 %100)
  br label %102

102:                                              ; preds = %92
  %103 = load i64, i64* %9, align 8
  %104 = load i64, i64* %10, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @ECORE_DCBX_MAX_MIB_READ_TRY, align 4
  %109 = icmp slt i32 %107, %108
  br label %110

110:                                              ; preds = %106, %102
  %111 = phi i1 [ false, %102 ], [ %109, %106 ]
  br i1 %111, label %14, label %112

112:                                              ; preds = %110
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* @ECORE_DCBX_MAX_MIB_READ_TRY, align 4
  %115 = icmp sge i32 %113, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %112
  %117 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %11, align 4
  %120 = load i64, i64* %9, align 8
  %121 = load i64, i64* %10, align 8
  %122 = call i32 @DP_ERR(%struct.ecore_hwfn* %117, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i32 %118, i32 %119, i64 %120, i64 %121)
  %123 = load i32, i32* @ECORE_IO, align 4
  store i32 %123, i32* %12, align 4
  br label %124

124:                                              ; preds = %116, %112
  %125 = load i32, i32* %12, align 4
  ret i32 %125
}

declare dso_local i32 @ecore_memcpy_from(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32, i64, i64) #1

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
