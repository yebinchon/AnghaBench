; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_node.c_ocs_node_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_node.c_ocs_node_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i32, %struct.TYPE_24__, %struct.TYPE_23__*, i32, %struct.TYPE_22__, i32*, %struct.TYPE_23__*, i64, i32, i32, i64, %struct.TYPE_23__* }
%struct.TYPE_24__ = type { i32* }
%struct.TYPE_22__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Free'd\0A\00", align 1
@FC_ADDR_NAMESERVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"ocs_hw_node_free failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"assertion failed: sport lookup is NULL\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@OCS_EVT_ALL_CHILD_NODES_FREE = common dso_local global i32 0, align 4
@OCS_EVT_RSCN_RCVD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_node_free(%struct.TYPE_23__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store i32 0, i32* %7, align 4
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %8, align 8
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %12 = call i32 @ocs_assert(%struct.TYPE_23__* %11, i32 -1)
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %16 = call i32 @ocs_assert(%struct.TYPE_23__* %15, i32 -1)
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %20 = call i32 @ocs_assert(%struct.TYPE_23__* %19, i32 -1)
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 4
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  store %struct.TYPE_23__* %23, %struct.TYPE_23__** %4, align 8
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %25 = call i32 @ocs_assert(%struct.TYPE_23__* %24, i32 -1)
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 8
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  store %struct.TYPE_23__* %28, %struct.TYPE_23__** %5, align 8
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 13
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %30, align 8
  %32 = call i32 @ocs_assert(%struct.TYPE_23__* %31, i32 -1)
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 13
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %34, align 8
  store %struct.TYPE_23__* %35, %struct.TYPE_23__** %6, align 8
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %37 = call i32 @node_printf(%struct.TYPE_23__* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 12
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %1
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 4
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %44, align 8
  %46 = load i32, i32* @FC_ADDR_NAMESERVER, align 4
  %47 = call %struct.TYPE_23__* @ocs_node_find(%struct.TYPE_23__* %45, i32 %46)
  store %struct.TYPE_23__* %47, %struct.TYPE_23__** %8, align 8
  br label %48

48:                                               ; preds = %42, %1
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %50 = call i32 @ocs_sport_lock(%struct.TYPE_23__* %49)
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 5
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %54 = call i32 @ocs_list_remove(i32* %52, %struct.TYPE_23__* %53)
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 11
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 6
  %59 = call i32 @ocs_hw_node_free_resources(i32* %56, %struct.TYPE_22__* %58)
  store i32 %59, i32* %7, align 4
  %60 = call i64 @OCS_HW_RTN_IS_ERROR(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %48
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 (%struct.TYPE_23__*, i8*, ...) @ocs_log_test(%struct.TYPE_23__* %63, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  store i32 -1, i32* %7, align 4
  br label %66

66:                                               ; preds = %62, %48
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 10
  %69 = call i64 @ocs_timer_pending(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 10
  %74 = call i32 @ocs_del_timer(i32* %73)
  br label %75

75:                                               ; preds = %71, %66
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 9
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %82 = call i32 @ocs_del_crn(%struct.TYPE_23__* %81)
  br label %83

83:                                               ; preds = %80, %75
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 7
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %83
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 8
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %90, align 8
  %92 = call i32 (%struct.TYPE_23__*, i8*, ...) @ocs_log_test(%struct.TYPE_23__* %91, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %94 = call i32 @ocs_sport_unlock(%struct.TYPE_23__* %93)
  store i32 -1, i32* %2, align 4
  br label %150

95:                                               ; preds = %83
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 7
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 6
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @spv_set(i32* %98, i32 %102, i32* null)
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 5
  %106 = call i64 @ocs_list_empty(i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %95
  %109 = load i32, i32* @TRUE, align 4
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %108, %95
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %112 = call i32 @ocs_sport_unlock(%struct.TYPE_23__* %111)
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 3
  %118 = load i32, i32* @OCS_EVT_ALL_CHILD_NODES_FREE, align 4
  %119 = call i32 @ocs_sm_post_event(%struct.TYPE_24__* %117, i32 %118, i32* null)
  br label %120

120:                                              ; preds = %115, %110
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 4
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %122, align 8
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 0
  store i32* null, i32** %125, align 8
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %127 = call i32 @ocs_node_lock_free(%struct.TYPE_23__* %126)
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 2
  %130 = call i32 @ocs_lock_free(i32* %129)
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 1
  %133 = call i32 @ocs_lock_free(i32* %132)
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %135 = call i32 @ocs_device_lock(%struct.TYPE_23__* %134)
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %139 = call i32 @ocs_list_add_tail(i32* %137, %struct.TYPE_23__* %138)
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %141 = call i32 @ocs_device_unlock(%struct.TYPE_23__* %140)
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %143 = icmp ne %struct.TYPE_23__* %142, null
  br i1 %143, label %144, label %148

144:                                              ; preds = %120
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %146 = load i32, i32* @OCS_EVT_RSCN_RCVD, align 4
  %147 = call i32 @ocs_node_post_event(%struct.TYPE_23__* %145, i32 %146, i32* null)
  br label %148

148:                                              ; preds = %144, %120
  %149 = load i32, i32* %7, align 4
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %148, %88
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i32 @ocs_assert(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @node_printf(%struct.TYPE_23__*, i8*) #1

declare dso_local %struct.TYPE_23__* @ocs_node_find(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @ocs_sport_lock(%struct.TYPE_23__*) #1

declare dso_local i32 @ocs_list_remove(i32*, %struct.TYPE_23__*) #1

declare dso_local i64 @OCS_HW_RTN_IS_ERROR(i32) #1

declare dso_local i32 @ocs_hw_node_free_resources(i32*, %struct.TYPE_22__*) #1

declare dso_local i32 @ocs_log_test(%struct.TYPE_23__*, i8*, ...) #1

declare dso_local i64 @ocs_timer_pending(i32*) #1

declare dso_local i32 @ocs_del_timer(i32*) #1

declare dso_local i32 @ocs_del_crn(%struct.TYPE_23__*) #1

declare dso_local i32 @ocs_sport_unlock(%struct.TYPE_23__*) #1

declare dso_local i32 @spv_set(i32*, i32, i32*) #1

declare dso_local i64 @ocs_list_empty(i32*) #1

declare dso_local i32 @ocs_sm_post_event(%struct.TYPE_24__*, i32, i32*) #1

declare dso_local i32 @ocs_node_lock_free(%struct.TYPE_23__*) #1

declare dso_local i32 @ocs_lock_free(i32*) #1

declare dso_local i32 @ocs_device_lock(%struct.TYPE_23__*) #1

declare dso_local i32 @ocs_list_add_tail(i32*, %struct.TYPE_23__*) #1

declare dso_local i32 @ocs_device_unlock(%struct.TYPE_23__*) #1

declare dso_local i32 @ocs_node_post_event(%struct.TYPE_23__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
