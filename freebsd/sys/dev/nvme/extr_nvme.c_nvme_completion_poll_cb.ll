; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme.c_nvme_completion_poll_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme.c_nvme_completion_poll_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_completion = type { i32 }
%struct.nvme_completion_poll_status = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvme_completion_poll_cb(i8* %0, %struct.nvme_completion* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.nvme_completion*, align 8
  %5 = alloca %struct.nvme_completion_poll_status*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.nvme_completion* %1, %struct.nvme_completion** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.nvme_completion_poll_status*
  store %struct.nvme_completion_poll_status* %7, %struct.nvme_completion_poll_status** %5, align 8
  %8 = load %struct.nvme_completion_poll_status*, %struct.nvme_completion_poll_status** %5, align 8
  %9 = getelementptr inbounds %struct.nvme_completion_poll_status, %struct.nvme_completion_poll_status* %8, i32 0, i32 1
  %10 = load %struct.nvme_completion*, %struct.nvme_completion** %4, align 8
  %11 = call i32 @memcpy(i32* %9, %struct.nvme_completion* %10, i32 4)
  %12 = load %struct.nvme_completion_poll_status*, %struct.nvme_completion_poll_status** %5, align 8
  %13 = getelementptr inbounds %struct.nvme_completion_poll_status, %struct.nvme_completion_poll_status* %12, i32 0, i32 0
  %14 = call i32 @atomic_store_rel_int(i32* %13, i32 1)
  ret void
}

declare dso_local i32 @memcpy(i32*, %struct.nvme_completion*, i32) #1

declare dso_local i32 @atomic_store_rel_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
