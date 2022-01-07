; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_scsi.c_ocs_scsi_get_property.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_scsi.c_ocs_scsi_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@OCS_HW_MAX_SGE = common dso_local global i32 0, align 4
@OCS_CTRLMASK_TEST_CHAINED_SGLS = common dso_local global i32 0, align 4
@OCS_FC_MAX_SGL = common dso_local global i32 0, align 4
@OCS_HW_N_SGL = common dso_local global i32 0, align 4
@OCS_HW_DIF_CAPABLE = common dso_local global i32 0, align 4
@OCS_HW_DIF_MULTI_SEPARATE = common dso_local global i32 0, align 4
@OCS_HW_SEND_FRAME_CAPABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"invalid property request %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_scsi_get_property(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %6, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %75 [
    i32 129, label %12
    i32 128, label %21
    i32 130, label %39
    i32 134, label %44
    i32 131, label %53
    i32 133, label %54
    i32 132, label %63
  ]

12:                                               ; preds = %2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32, i32* @OCS_HW_MAX_SGE, align 4
  %16 = call i32 @ocs_hw_get(i32* %14, i32 %15, i32* %7)
  %17 = icmp eq i32 0, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %80

20:                                               ; preds = %12
  br label %76

21:                                               ; preds = %2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @OCS_CTRLMASK_TEST_CHAINED_SGLS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @OCS_FC_MAX_SGL, align 4
  store i32 %29, i32* %3, align 4
  br label %80

30:                                               ; preds = %21
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* @OCS_HW_N_SGL, align 4
  %34 = call i32 @ocs_hw_get(i32* %32, i32 %33, i32* %7)
  %35 = icmp eq i32 0, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %80

38:                                               ; preds = %30
  br label %76

39:                                               ; preds = %2
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ocs_io_pool_allocated(i32 %42)
  store i32 %43, i32* %3, align 4
  br label %80

44:                                               ; preds = %2
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* @OCS_HW_DIF_CAPABLE, align 4
  %48 = call i32 @ocs_hw_get(i32* %46, i32 %47, i32* %7)
  %49 = icmp eq i32 0, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %80

52:                                               ; preds = %44
  br label %76

53:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %80

54:                                               ; preds = %2
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* @OCS_HW_DIF_MULTI_SEPARATE, align 4
  %58 = call i32 @ocs_hw_get(i32* %56, i32 %57, i32* %7)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %80

62:                                               ; preds = %54
  br label %76

63:                                               ; preds = %2
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* @OCS_HW_SEND_FRAME_CAPABLE, align 4
  %67 = call i32 @ocs_hw_get(i32* %65, i32 %66, i32* %7)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %3, align 4
  br label %80

74:                                               ; preds = %63
  br label %76

75:                                               ; preds = %2
  br label %76

76:                                               ; preds = %75, %74, %62, %52, %38, %20
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @ocs_log_debug(%struct.TYPE_6__* %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %78)
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %76, %69, %60, %53, %50, %39, %36, %28, %18
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @ocs_hw_get(i32*, i32, i32*) #1

declare dso_local i32 @ocs_io_pool_allocated(i32) #1

declare dso_local i32 @ocs_log_debug(%struct.TYPE_6__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
