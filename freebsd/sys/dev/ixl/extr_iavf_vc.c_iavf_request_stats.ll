; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_iavf_vc.c_iavf_request_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_iavf_vc.c_iavf_request_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_sc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.virtchnl_queue_select = type { i32 }

@VIRTCHNL_OP_GET_STATS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Error sending stats request to PF: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iavf_request_stats(%struct.iavf_sc* %0) #0 {
  %2 = alloca %struct.iavf_sc*, align 8
  %3 = alloca %struct.virtchnl_queue_select, align 4
  %4 = alloca i32, align 4
  store %struct.iavf_sc* %0, %struct.iavf_sc** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %6 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.virtchnl_queue_select, %struct.virtchnl_queue_select* %3, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %12 = load i32, i32* @VIRTCHNL_OP_GET_STATS, align 4
  %13 = bitcast %struct.virtchnl_queue_select* %3 to i32*
  %14 = call i32 @iavf_send_pf_msg(%struct.iavf_sc* %11, i32 %12, i32* %13, i32 4)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %19 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %17, %1
  ret i32 0
}

declare dso_local i32 @iavf_send_pf_msg(%struct.iavf_sc*, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
