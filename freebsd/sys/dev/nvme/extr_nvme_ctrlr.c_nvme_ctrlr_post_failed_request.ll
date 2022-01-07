; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_post_failed_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_post_failed_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller = type { i32, i32, i32, i32 }
%struct.nvme_request = type { i32 }

@stailq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvme_ctrlr_post_failed_request(%struct.nvme_controller* %0, %struct.nvme_request* %1) #0 {
  %3 = alloca %struct.nvme_controller*, align 8
  %4 = alloca %struct.nvme_request*, align 8
  store %struct.nvme_controller* %0, %struct.nvme_controller** %3, align 8
  store %struct.nvme_request* %1, %struct.nvme_request** %4, align 8
  %5 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %6 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %5, i32 0, i32 2
  %7 = call i32 @mtx_lock(i32* %6)
  %8 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %9 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %8, i32 0, i32 3
  %10 = load %struct.nvme_request*, %struct.nvme_request** %4, align 8
  %11 = load i32, i32* @stailq, align 4
  %12 = call i32 @STAILQ_INSERT_TAIL(i32* %9, %struct.nvme_request* %10, i32 %11)
  %13 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %14 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %13, i32 0, i32 2
  %15 = call i32 @mtx_unlock(i32* %14)
  %16 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %17 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %20 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %19, i32 0, i32 0
  %21 = call i32 @taskqueue_enqueue(i32 %18, i32* %20)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.nvme_request*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
