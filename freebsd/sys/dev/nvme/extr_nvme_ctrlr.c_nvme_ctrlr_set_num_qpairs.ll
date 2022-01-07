; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_set_num_qpairs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_set_num_qpairs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller = type { i32 }
%struct.nvme_completion_poll_status = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@nvme_completion_poll_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"nvme_ctrlr_set_num_qpairs failed!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@vm_ndomains = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_controller*)* @nvme_ctrlr_set_num_qpairs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_ctrlr_set_num_qpairs(%struct.nvme_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_controller*, align 8
  %4 = alloca %struct.nvme_completion_poll_status, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nvme_controller* %0, %struct.nvme_controller** %3, align 8
  %7 = getelementptr inbounds %struct.nvme_completion_poll_status, %struct.nvme_completion_poll_status* %4, i32 0, i32 1
  store i64 0, i64* %7, align 8
  %8 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %9 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %10 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @nvme_completion_poll_cb, align 4
  %13 = call i32 @nvme_ctrlr_cmd_set_num_queues(%struct.nvme_controller* %8, i32 %11, i32 %12, %struct.nvme_completion_poll_status* %4)
  %14 = call i32 @nvme_completion_poll(%struct.nvme_completion_poll_status* %4)
  %15 = getelementptr inbounds %struct.nvme_completion_poll_status, %struct.nvme_completion_poll_status* %4, i32 0, i32 0
  %16 = call i64 @nvme_completion_is_error(%struct.TYPE_2__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %20 = call i32 @nvme_printf(%struct.nvme_controller* %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %2, align 4
  br label %65

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.nvme_completion_poll_status, %struct.nvme_completion_poll_status* %4, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 65535
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  %28 = getelementptr inbounds %struct.nvme_completion_poll_status, %struct.nvme_completion_poll_status* %4, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = ashr i32 %30, 16
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  %33 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %34 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i8* @min(i32 %35, i32 %36)
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %40 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %42 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i8* @min(i32 %43, i32 %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %48 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %50 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @vm_ndomains, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %22
  %55 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %56 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @vm_ndomains, align 4
  %59 = srem i32 %57, %58
  %60 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %61 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %54, %22
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %18
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @nvme_ctrlr_cmd_set_num_queues(%struct.nvme_controller*, i32, i32, %struct.nvme_completion_poll_status*) #1

declare dso_local i32 @nvme_completion_poll(%struct.nvme_completion_poll_status*) #1

declare dso_local i64 @nvme_completion_is_error(%struct.TYPE_2__*) #1

declare dso_local i32 @nvme_printf(%struct.nvme_controller*, i8*) #1

declare dso_local i8* @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
