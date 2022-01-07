; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_get_priority_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dcbx.c_ecore_dcbx_get_priority_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_dcbx_app_prio = type { i8*, i8*, i8*, i8*, i8* }
%struct.ecore_dcbx_results = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i64, i64 }

@ECORE_DCBX_INVALID_PRIORITY = common dso_local global i8* null, align 8
@DCBX_PROTOCOL_ROCE = common dso_local global i64 0, align 8
@DCBX_PROTOCOL_ROCE_V2 = common dso_local global i64 0, align 8
@DCBX_PROTOCOL_ISCSI = common dso_local global i64 0, align 8
@DCBX_PROTOCOL_FCOE = common dso_local global i64 0, align 8
@DCBX_PROTOCOL_ETH = common dso_local global i64 0, align 8
@ECORE_MSG_DCB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Priorities: iscsi %d, roce %d, roce v2 %d, fcoe %d, eth %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_dcbx_app_prio*, %struct.ecore_dcbx_results*)* @ecore_dcbx_get_priority_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_dcbx_get_priority_info(%struct.ecore_hwfn* %0, %struct.ecore_dcbx_app_prio* %1, %struct.ecore_dcbx_results* %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_dcbx_app_prio*, align 8
  %6 = alloca %struct.ecore_dcbx_results*, align 8
  %7 = alloca i8*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_dcbx_app_prio* %1, %struct.ecore_dcbx_app_prio** %5, align 8
  store %struct.ecore_dcbx_results* %2, %struct.ecore_dcbx_results** %6, align 8
  %8 = load i8*, i8** @ECORE_DCBX_INVALID_PRIORITY, align 8
  %9 = load %struct.ecore_dcbx_app_prio*, %struct.ecore_dcbx_app_prio** %5, align 8
  %10 = getelementptr inbounds %struct.ecore_dcbx_app_prio, %struct.ecore_dcbx_app_prio* %9, i32 0, i32 3
  store i8* %8, i8** %10, align 8
  %11 = load i8*, i8** @ECORE_DCBX_INVALID_PRIORITY, align 8
  %12 = load %struct.ecore_dcbx_app_prio*, %struct.ecore_dcbx_app_prio** %5, align 8
  %13 = getelementptr inbounds %struct.ecore_dcbx_app_prio, %struct.ecore_dcbx_app_prio* %12, i32 0, i32 2
  store i8* %11, i8** %13, align 8
  %14 = load i8*, i8** @ECORE_DCBX_INVALID_PRIORITY, align 8
  %15 = load %struct.ecore_dcbx_app_prio*, %struct.ecore_dcbx_app_prio** %5, align 8
  %16 = getelementptr inbounds %struct.ecore_dcbx_app_prio, %struct.ecore_dcbx_app_prio* %15, i32 0, i32 4
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** @ECORE_DCBX_INVALID_PRIORITY, align 8
  %18 = load %struct.ecore_dcbx_app_prio*, %struct.ecore_dcbx_app_prio** %5, align 8
  %19 = getelementptr inbounds %struct.ecore_dcbx_app_prio, %struct.ecore_dcbx_app_prio* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %6, align 8
  %21 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i64, i64* @DCBX_PROTOCOL_ROCE, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %3
  %29 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %6, align 8
  %30 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i64, i64* @DCBX_PROTOCOL_ROCE, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %28
  %38 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %6, align 8
  %39 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* @DCBX_PROTOCOL_ROCE, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.ecore_dcbx_app_prio*, %struct.ecore_dcbx_app_prio** %5, align 8
  %46 = getelementptr inbounds %struct.ecore_dcbx_app_prio, %struct.ecore_dcbx_app_prio* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %37, %28, %3
  %48 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %6, align 8
  %49 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i64, i64* @DCBX_PROTOCOL_ROCE_V2, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %47
  %57 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %6, align 8
  %58 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i64, i64* @DCBX_PROTOCOL_ROCE_V2, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %56
  %66 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %6, align 8
  %67 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i64, i64* @DCBX_PROTOCOL_ROCE_V2, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %7, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load %struct.ecore_dcbx_app_prio*, %struct.ecore_dcbx_app_prio** %5, align 8
  %75 = getelementptr inbounds %struct.ecore_dcbx_app_prio, %struct.ecore_dcbx_app_prio* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  br label %76

76:                                               ; preds = %65, %56, %47
  %77 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %6, align 8
  %78 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i64, i64* @DCBX_PROTOCOL_ISCSI, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %104

85:                                               ; preds = %76
  %86 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %6, align 8
  %87 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i64, i64* @DCBX_PROTOCOL_ISCSI, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %85
  %95 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %6, align 8
  %96 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i64, i64* @DCBX_PROTOCOL_ISCSI, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.ecore_dcbx_app_prio*, %struct.ecore_dcbx_app_prio** %5, align 8
  %103 = getelementptr inbounds %struct.ecore_dcbx_app_prio, %struct.ecore_dcbx_app_prio* %102, i32 0, i32 4
  store i8* %101, i8** %103, align 8
  br label %104

104:                                              ; preds = %94, %85, %76
  %105 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %6, align 8
  %106 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load i64, i64* @DCBX_PROTOCOL_FCOE, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %132

113:                                              ; preds = %104
  %114 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %6, align 8
  %115 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i64, i64* @DCBX_PROTOCOL_FCOE, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %113
  %123 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %6, align 8
  %124 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %123, i32 0, i32 0
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = load i64, i64* @DCBX_PROTOCOL_FCOE, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.ecore_dcbx_app_prio*, %struct.ecore_dcbx_app_prio** %5, align 8
  %131 = getelementptr inbounds %struct.ecore_dcbx_app_prio, %struct.ecore_dcbx_app_prio* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  br label %132

132:                                              ; preds = %122, %113, %104
  %133 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %6, align 8
  %134 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %133, i32 0, i32 0
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = load i64, i64* @DCBX_PROTOCOL_ETH, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %160

141:                                              ; preds = %132
  %142 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %6, align 8
  %143 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %142, i32 0, i32 0
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = load i64, i64* @DCBX_PROTOCOL_ETH, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %141
  %151 = load %struct.ecore_dcbx_results*, %struct.ecore_dcbx_results** %6, align 8
  %152 = getelementptr inbounds %struct.ecore_dcbx_results, %struct.ecore_dcbx_results* %151, i32 0, i32 0
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = load i64, i64* @DCBX_PROTOCOL_ETH, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = load %struct.ecore_dcbx_app_prio*, %struct.ecore_dcbx_app_prio** %5, align 8
  %159 = getelementptr inbounds %struct.ecore_dcbx_app_prio, %struct.ecore_dcbx_app_prio* %158, i32 0, i32 0
  store i8* %157, i8** %159, align 8
  br label %160

160:                                              ; preds = %150, %141, %132
  %161 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %162 = load i32, i32* @ECORE_MSG_DCB, align 4
  %163 = load %struct.ecore_dcbx_app_prio*, %struct.ecore_dcbx_app_prio** %5, align 8
  %164 = getelementptr inbounds %struct.ecore_dcbx_app_prio, %struct.ecore_dcbx_app_prio* %163, i32 0, i32 4
  %165 = load i8*, i8** %164, align 8
  %166 = load %struct.ecore_dcbx_app_prio*, %struct.ecore_dcbx_app_prio** %5, align 8
  %167 = getelementptr inbounds %struct.ecore_dcbx_app_prio, %struct.ecore_dcbx_app_prio* %166, i32 0, i32 3
  %168 = load i8*, i8** %167, align 8
  %169 = load %struct.ecore_dcbx_app_prio*, %struct.ecore_dcbx_app_prio** %5, align 8
  %170 = getelementptr inbounds %struct.ecore_dcbx_app_prio, %struct.ecore_dcbx_app_prio* %169, i32 0, i32 2
  %171 = load i8*, i8** %170, align 8
  %172 = load %struct.ecore_dcbx_app_prio*, %struct.ecore_dcbx_app_prio** %5, align 8
  %173 = getelementptr inbounds %struct.ecore_dcbx_app_prio, %struct.ecore_dcbx_app_prio* %172, i32 0, i32 1
  %174 = load i8*, i8** %173, align 8
  %175 = load %struct.ecore_dcbx_app_prio*, %struct.ecore_dcbx_app_prio** %5, align 8
  %176 = getelementptr inbounds %struct.ecore_dcbx_app_prio, %struct.ecore_dcbx_app_prio* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %161, i32 %162, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %165, i8* %168, i8* %171, i8* %174, i8* %177)
  ret void
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
