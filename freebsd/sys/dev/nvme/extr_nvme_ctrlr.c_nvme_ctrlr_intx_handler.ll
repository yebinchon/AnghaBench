; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_intx_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_intx_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller = type { i32 }

@intms = common dso_local global i32 0, align 4
@intmc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvme_ctrlr_intx_handler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nvme_controller*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.nvme_controller*
  store %struct.nvme_controller* %5, %struct.nvme_controller** %3, align 8
  %6 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %7 = load i32, i32* @intms, align 4
  %8 = call i32 @nvme_mmio_write_4(%struct.nvme_controller* %6, i32 %7, i32 1)
  %9 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %10 = call i32 @nvme_ctrlr_poll(%struct.nvme_controller* %9)
  %11 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %12 = load i32, i32* @intmc, align 4
  %13 = call i32 @nvme_mmio_write_4(%struct.nvme_controller* %11, i32 %12, i32 1)
  ret void
}

declare dso_local i32 @nvme_mmio_write_4(%struct.nvme_controller*, i32, i32) #1

declare dso_local i32 @nvme_ctrlr_poll(%struct.nvme_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
