; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_identify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nvme_completion_poll_status = type { i32, i64 }

@nvme_completion_poll_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"nvme_identify_controller failed!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_controller*)* @nvme_ctrlr_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_ctrlr_identify(%struct.nvme_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_controller*, align 8
  %4 = alloca %struct.nvme_completion_poll_status, align 8
  store %struct.nvme_controller* %0, %struct.nvme_controller** %3, align 8
  %5 = getelementptr inbounds %struct.nvme_completion_poll_status, %struct.nvme_completion_poll_status* %4, i32 0, i32 1
  store i64 0, i64* %5, align 8
  %6 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %7 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %8 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %7, i32 0, i32 1
  %9 = load i32, i32* @nvme_completion_poll_cb, align 4
  %10 = call i32 @nvme_ctrlr_cmd_identify_controller(%struct.nvme_controller* %6, %struct.TYPE_3__* %8, i32 %9, %struct.nvme_completion_poll_status* %4)
  %11 = call i32 @nvme_completion_poll(%struct.nvme_completion_poll_status* %4)
  %12 = getelementptr inbounds %struct.nvme_completion_poll_status, %struct.nvme_completion_poll_status* %4, i32 0, i32 0
  %13 = call i64 @nvme_completion_is_error(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %17 = call i32 @nvme_printf(%struct.nvme_controller* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %2, align 4
  br label %45

19:                                               ; preds = %1
  %20 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %21 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %20, i32 0, i32 1
  %22 = call i32 @nvme_controller_data_swapbytes(%struct.TYPE_3__* %21)
  %23 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %24 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %19
  %29 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %30 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %33 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %36 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 1, %38
  %40 = mul nsw i32 %34, %39
  %41 = call i32 @min(i32 %31, i32 %40)
  %42 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %43 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %28, %19
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %15
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @nvme_ctrlr_cmd_identify_controller(%struct.nvme_controller*, %struct.TYPE_3__*, i32, %struct.nvme_completion_poll_status*) #1

declare dso_local i32 @nvme_completion_poll(%struct.nvme_completion_poll_status*) #1

declare dso_local i64 @nvme_completion_is_error(i32*) #1

declare dso_local i32 @nvme_printf(%struct.nvme_controller*, i8*) #1

declare dso_local i32 @nvme_controller_data_swapbytes(%struct.TYPE_3__*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
