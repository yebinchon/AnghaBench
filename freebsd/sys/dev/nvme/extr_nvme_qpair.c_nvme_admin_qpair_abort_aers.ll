; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_qpair.c_nvme_admin_qpair_abort_aers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_qpair.c_nvme_admin_qpair_abort_aers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_qpair = type { i32 }
%struct.nvme_tracker = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@NVME_OPC_ASYNC_EVENT_REQUEST = common dso_local global i64 0, align 8
@NVME_SCT_GENERIC = common dso_local global i32 0, align 4
@NVME_SC_ABORTED_SQ_DELETION = common dso_local global i32 0, align 4
@ERROR_PRINT_NONE = common dso_local global i32 0, align 4
@tailq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_qpair*)* @nvme_admin_qpair_abort_aers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_admin_qpair_abort_aers(%struct.nvme_qpair* %0) #0 {
  %2 = alloca %struct.nvme_qpair*, align 8
  %3 = alloca %struct.nvme_tracker*, align 8
  store %struct.nvme_qpair* %0, %struct.nvme_qpair** %2, align 8
  %4 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %5 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %4, i32 0, i32 0
  %6 = call %struct.nvme_tracker* @TAILQ_FIRST(i32* %5)
  store %struct.nvme_tracker* %6, %struct.nvme_tracker** %3, align 8
  br label %7

7:                                                ; preds = %33, %1
  %8 = load %struct.nvme_tracker*, %struct.nvme_tracker** %3, align 8
  %9 = icmp ne %struct.nvme_tracker* %8, null
  br i1 %9, label %10, label %34

10:                                               ; preds = %7
  %11 = load %struct.nvme_tracker*, %struct.nvme_tracker** %3, align 8
  %12 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NVME_OPC_ASYNC_EVENT_REQUEST, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %10
  %20 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %21 = load %struct.nvme_tracker*, %struct.nvme_tracker** %3, align 8
  %22 = load i32, i32* @NVME_SCT_GENERIC, align 4
  %23 = load i32, i32* @NVME_SC_ABORTED_SQ_DELETION, align 4
  %24 = load i32, i32* @ERROR_PRINT_NONE, align 4
  %25 = call i32 @nvme_qpair_manual_complete_tracker(%struct.nvme_qpair* %20, %struct.nvme_tracker* %21, i32 %22, i32 %23, i32 0, i32 %24)
  %26 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %27 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %26, i32 0, i32 0
  %28 = call %struct.nvme_tracker* @TAILQ_FIRST(i32* %27)
  store %struct.nvme_tracker* %28, %struct.nvme_tracker** %3, align 8
  br label %33

29:                                               ; preds = %10
  %30 = load %struct.nvme_tracker*, %struct.nvme_tracker** %3, align 8
  %31 = load i32, i32* @tailq, align 4
  %32 = call %struct.nvme_tracker* @TAILQ_NEXT(%struct.nvme_tracker* %30, i32 %31)
  store %struct.nvme_tracker* %32, %struct.nvme_tracker** %3, align 8
  br label %33

33:                                               ; preds = %29, %19
  br label %7

34:                                               ; preds = %7
  ret void
}

declare dso_local %struct.nvme_tracker* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @nvme_qpair_manual_complete_tracker(%struct.nvme_qpair*, %struct.nvme_tracker*, i32, i32, i32, i32) #1

declare dso_local %struct.nvme_tracker* @TAILQ_NEXT(%struct.nvme_tracker*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
