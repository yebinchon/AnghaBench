; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_construct_namespaces.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_construct_namespaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller = type { %struct.nvme_namespace*, %struct.TYPE_2__ }
%struct.nvme_namespace = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NVME_MAX_NAMESPACES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_controller*)* @nvme_ctrlr_construct_namespaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_ctrlr_construct_namespaces(%struct.nvme_controller* %0) #0 {
  %2 = alloca %struct.nvme_controller*, align 8
  %3 = alloca %struct.nvme_namespace*, align 8
  %4 = alloca i64, align 8
  store %struct.nvme_controller* %0, %struct.nvme_controller** %2, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %25, %1
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %8 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @NVME_MAX_NAMESPACES, align 4
  %12 = call i64 @min(i32 %10, i32 %11)
  %13 = icmp ult i64 %6, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %5
  %15 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %16 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %15, i32 0, i32 0
  %17 = load %struct.nvme_namespace*, %struct.nvme_namespace** %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %17, i64 %18
  store %struct.nvme_namespace* %19, %struct.nvme_namespace** %3, align 8
  %20 = load %struct.nvme_namespace*, %struct.nvme_namespace** %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = add i64 %21, 1
  %23 = load %struct.nvme_controller*, %struct.nvme_controller** %2, align 8
  %24 = call i32 @nvme_ns_construct(%struct.nvme_namespace* %20, i64 %22, %struct.nvme_controller* %23)
  br label %25

25:                                               ; preds = %14
  %26 = load i64, i64* %4, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %4, align 8
  br label %5

28:                                               ; preds = %5
  ret i32 0
}

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @nvme_ns_construct(%struct.nvme_namespace*, i64, %struct.nvme_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
