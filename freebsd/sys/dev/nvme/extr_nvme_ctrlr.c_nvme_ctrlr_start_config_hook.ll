; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_start_config_hook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_start_config_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvme_ctrlr_start_config_hook(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nvme_controller*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.nvme_controller*
  store %struct.nvme_controller* %5, %struct.nvme_controller** %3, align 8
  %6 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %7 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %6, i32 0, i32 2
  %8 = call i32 @nvme_qpair_reset(i32* %7)
  %9 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %10 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %9, i32 0, i32 2
  %11 = call i32 @nvme_admin_qpair_enable(i32* %10)
  %12 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %13 = call i64 @nvme_ctrlr_set_num_qpairs(%struct.nvme_controller* %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %17 = call i64 @nvme_ctrlr_construct_io_qpairs(%struct.nvme_controller* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %21 = call i32 @nvme_ctrlr_start(%struct.nvme_controller* %20, i32 0)
  br label %25

22:                                               ; preds = %15, %1
  %23 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %24 = call i32 @nvme_ctrlr_fail(%struct.nvme_controller* %23)
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %27 = call i32 @nvme_sysctl_initialize_ctrlr(%struct.nvme_controller* %26)
  %28 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %29 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %28, i32 0, i32 1
  %30 = call i32 @config_intrhook_disestablish(i32* %29)
  %31 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %32 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %34 = call i32 @nvme_notify_new_controller(%struct.nvme_controller* %33)
  ret void
}

declare dso_local i32 @nvme_qpair_reset(i32*) #1

declare dso_local i32 @nvme_admin_qpair_enable(i32*) #1

declare dso_local i64 @nvme_ctrlr_set_num_qpairs(%struct.nvme_controller*) #1

declare dso_local i64 @nvme_ctrlr_construct_io_qpairs(%struct.nvme_controller*) #1

declare dso_local i32 @nvme_ctrlr_start(%struct.nvme_controller*, i32) #1

declare dso_local i32 @nvme_ctrlr_fail(%struct.nvme_controller*) #1

declare dso_local i32 @nvme_sysctl_initialize_ctrlr(%struct.nvme_controller*) #1

declare dso_local i32 @config_intrhook_disestablish(i32*) #1

declare dso_local i32 @nvme_notify_new_controller(%struct.nvme_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
