; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_init_qm_pq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_init_qm_pq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_qm_info = type { i64, i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"pq overflow! pq %d, max pq %d\0A\00", align 1
@PQ_INIT_DEFAULT_WRR_GROUP = common dso_local global i32 0, align 4
@PQ_INIT_PF_RL = common dso_local global i32 0, align 4
@PQ_INIT_VF_RL = common dso_local global i32 0, align 4
@PQ_INIT_SHARE_VPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"vport overflow! qm_info->num_vports %d, qm_init_get_num_vports() %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"rl overflow! qm_info->num_pf_rls %d, qm_init_get_num_pf_rls() %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_qm_info*, i32, i32)* @ecore_init_qm_pq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_init_qm_pq(%struct.ecore_hwfn* %0, %struct.ecore_qm_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_qm_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_qm_info* %1, %struct.ecore_qm_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %6, align 8
  %12 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %9, align 8
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %15 = call i64 @ecore_init_qm_get_num_pqs(%struct.ecore_hwfn* %14)
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @DP_ERR(%struct.ecore_hwfn* %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %21, i64 %22)
  br label %24

24:                                               ; preds = %19, %4
  %25 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %6, align 8
  %26 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %6, align 8
  %29 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %6, align 8
  %33 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %32, i32 0, i32 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i64 %31, i64* %37, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %6, align 8
  %40 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %39, i32 0, i32 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  store i32 %38, i32* %44, align 8
  %45 = load i32, i32* @PQ_INIT_DEFAULT_WRR_GROUP, align 4
  %46 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %6, align 8
  %47 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %46, i32 0, i32 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  store i32 %45, i32* %51, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @PQ_INIT_PF_RL, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %24
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @PQ_INIT_VF_RL, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %56, %24
  %62 = phi i1 [ true, %24 ], [ %60, %56 ]
  %63 = zext i1 %62 to i32
  %64 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %6, align 8
  %65 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %64, i32 0, i32 4
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32 %63, i32* %69, align 8
  %70 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %6, align 8
  %71 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %71, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @PQ_INIT_SHARE_VPORT, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %61
  %79 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %6, align 8
  %80 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %80, align 8
  br label %83

83:                                               ; preds = %78, %61
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @PQ_INIT_PF_RL, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %6, align 8
  %90 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %90, align 8
  br label %93

93:                                               ; preds = %88, %83
  %94 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %6, align 8
  %95 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %98 = call i64 @ecore_init_qm_get_num_vports(%struct.ecore_hwfn* %97)
  %99 = icmp sgt i64 %96, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %93
  %101 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %102 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %6, align 8
  %103 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %106 = call i64 @ecore_init_qm_get_num_vports(%struct.ecore_hwfn* %105)
  %107 = call i32 @DP_ERR(%struct.ecore_hwfn* %101, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i64 %104, i64 %106)
  br label %108

108:                                              ; preds = %100, %93
  %109 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %6, align 8
  %110 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %113 = call i64 @ecore_init_qm_get_num_pf_rls(%struct.ecore_hwfn* %112)
  %114 = icmp sgt i64 %111, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %108
  %116 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %117 = load %struct.ecore_qm_info*, %struct.ecore_qm_info** %6, align 8
  %118 = getelementptr inbounds %struct.ecore_qm_info, %struct.ecore_qm_info* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %121 = call i64 @ecore_init_qm_get_num_pf_rls(%struct.ecore_hwfn* %120)
  %122 = call i32 @DP_ERR(%struct.ecore_hwfn* %116, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i64 %119, i64 %121)
  br label %123

123:                                              ; preds = %115, %108
  ret void
}

declare dso_local i64 @ecore_init_qm_get_num_pqs(%struct.ecore_hwfn*) #1

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*, i64, i64) #1

declare dso_local i64 @ecore_init_qm_get_num_vports(%struct.ecore_hwfn*) #1

declare dso_local i64 @ecore_init_qm_get_num_pf_rls(%struct.ecore_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
