; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_xri_move_to_port_owned.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_xri_move_to_port_owned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_12__ = type { i32, i32, i32 }

@OCS_HW_RTN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"HW_axr_lock[%d]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ocs_hw_xri_move_to_port_owned(%struct.TYPE_11__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %7, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = call i32 @ocs_lock(i32* %10)
  store i64 0, i64* %6, align 8
  br label %12

12:                                               ; preds = %80, %2
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %83

16:                                               ; preds = %12
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 3
  %19 = call %struct.TYPE_12__* @ocs_list_remove_head(i32* %18)
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %5, align 8
  %20 = icmp ne %struct.TYPE_12__* null, %19
  br i1 %20, label %21, label %78

21:                                               ; preds = %16
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %21
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = call i32 @ocs_unlock(i32* %28)
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %32 = call i64 @ocs_hw_rqpair_auto_xfer_rdy_move_to_port(%struct.TYPE_11__* %30, %struct.TYPE_12__* %31)
  store i64 %32, i64* %8, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = call i32 @ocs_lock(i32* %34)
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %26
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %43 = call i32 @ocs_list_add_head(i32* %41, %struct.TYPE_12__* %42)
  br label %83

44:                                               ; preds = %26
  br label %45

45:                                               ; preds = %44, %21
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ocs_lock_init(i32 %48, i32* %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = call i32 @ocs_list_add_tail(i32* %58, %struct.TYPE_12__* %59)
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @ocs_hw_post_xri(%struct.TYPE_11__* %61, i32 %64, i32 1)
  %66 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %45
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @ocs_hw_reclaim_xri(%struct.TYPE_11__* %69, i32 %72, i64 %73)
  br label %83

75:                                               ; preds = %45
  %76 = load i64, i64* %7, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %7, align 8
  br label %79

78:                                               ; preds = %16
  br label %83

79:                                               ; preds = %75
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %6, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %6, align 8
  br label %12

83:                                               ; preds = %78, %68, %39, %12
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = call i32 @ocs_unlock(i32* %85)
  %87 = load i64, i64* %7, align 8
  ret i64 %87
}

declare dso_local i32 @ocs_lock(i32*) #1

declare dso_local %struct.TYPE_12__* @ocs_list_remove_head(i32*) #1

declare dso_local i32 @ocs_unlock(i32*) #1

declare dso_local i64 @ocs_hw_rqpair_auto_xfer_rdy_move_to_port(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @ocs_list_add_head(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @ocs_lock_init(i32, i32*, i8*, i32) #1

declare dso_local i32 @ocs_list_add_tail(i32*, %struct.TYPE_12__*) #1

declare dso_local i64 @ocs_hw_post_xri(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @ocs_hw_reclaim_xri(%struct.TYPE_11__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
