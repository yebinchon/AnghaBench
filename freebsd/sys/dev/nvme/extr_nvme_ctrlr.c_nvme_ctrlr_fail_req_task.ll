; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_fail_req_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_fail_req_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller = type { i32, i32 }
%struct.nvme_request = type { i32 }

@stailq = common dso_local global i32 0, align 4
@NVME_SCT_GENERIC = common dso_local global i32 0, align 4
@NVME_SC_ABORTED_BY_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @nvme_ctrlr_fail_req_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_ctrlr_fail_req_task(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_controller*, align 8
  %6 = alloca %struct.nvme_request*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.nvme_controller*
  store %struct.nvme_controller* %8, %struct.nvme_controller** %5, align 8
  %9 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %10 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %9, i32 0, i32 0
  %11 = call i32 @mtx_lock(i32* %10)
  br label %12

12:                                               ; preds = %17, %2
  %13 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %14 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %13, i32 0, i32 1
  %15 = call %struct.nvme_request* @STAILQ_FIRST(i32* %14)
  store %struct.nvme_request* %15, %struct.nvme_request** %6, align 8
  %16 = icmp ne %struct.nvme_request* %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %12
  %18 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %19 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %18, i32 0, i32 1
  %20 = load i32, i32* @stailq, align 4
  %21 = call i32 @STAILQ_REMOVE_HEAD(i32* %19, i32 %20)
  %22 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %23 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %22, i32 0, i32 0
  %24 = call i32 @mtx_unlock(i32* %23)
  %25 = load %struct.nvme_request*, %struct.nvme_request** %6, align 8
  %26 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nvme_request*, %struct.nvme_request** %6, align 8
  %29 = load i32, i32* @NVME_SCT_GENERIC, align 4
  %30 = load i32, i32* @NVME_SC_ABORTED_BY_REQUEST, align 4
  %31 = call i32 @nvme_qpair_manual_complete_request(i32 %27, %struct.nvme_request* %28, i32 %29, i32 %30)
  %32 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %33 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %32, i32 0, i32 0
  %34 = call i32 @mtx_lock(i32* %33)
  br label %12

35:                                               ; preds = %12
  %36 = load %struct.nvme_controller*, %struct.nvme_controller** %5, align 8
  %37 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %36, i32 0, i32 0
  %38 = call i32 @mtx_unlock(i32* %37)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.nvme_request* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @nvme_qpair_manual_complete_request(i32, %struct.nvme_request*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
