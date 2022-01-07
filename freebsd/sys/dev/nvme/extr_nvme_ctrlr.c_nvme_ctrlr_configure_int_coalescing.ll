; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_configure_int_coalescing.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_configure_int_coalescing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller = type { i64, i64 }

@.str = private unnamed_addr constant [22 x i8] c"hw.nvme.int_coal_time\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"hw.nvme.int_coal_threshold\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_controller*)* @nvme_ctrlr_configure_int_coalescing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_ctrlr_configure_int_coalescing(%struct.nvme_controller* %0) #0 {
  %2 = alloca %struct.nvme_controller*, align 8
  store %struct.nvme_controller* %0, %struct.nvme_controller** %2, align 8
  %3 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %4 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %3, i32 0, i32 1
  store i64 0, i64* %4, align 8
  %5 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %6 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %5, i32 0, i32 1
  %7 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64* %6)
  %8 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %9 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %11 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %10, i32 0, i32 0
  %12 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64* %11)
  %13 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %14 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %15 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %18 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @nvme_ctrlr_cmd_set_interrupt_coalescing(%struct.nvme_controller* %13, i64 %16, i64 %19, i32* null, i32* null)
  ret void
}

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i64*) #1

declare dso_local i32 @nvme_ctrlr_cmd_set_interrupt_coalescing(%struct.nvme_controller*, i64, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
