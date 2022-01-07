; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ns.c_nvme_ns_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ns.c_nvme_ns_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.nvme_namespace* }
%struct.nvme_namespace = type { i32, %struct.nvme_controller* }
%struct.nvme_controller = type { i32 }
%struct.thread = type { i32 }
%struct.nvme_pt_command = type { i32 }
%struct.nvme_get_nsid = type { i32, i32 }

@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @nvme_ns_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_ns_ioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.nvme_namespace*, align 8
  %13 = alloca %struct.nvme_controller*, align 8
  %14 = alloca %struct.nvme_pt_command*, align 8
  %15 = alloca %struct.nvme_get_nsid*, align 8
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %16 = load %struct.cdev*, %struct.cdev** %7, align 8
  %17 = getelementptr inbounds %struct.cdev, %struct.cdev* %16, i32 0, i32 0
  %18 = load %struct.nvme_namespace*, %struct.nvme_namespace** %17, align 8
  store %struct.nvme_namespace* %18, %struct.nvme_namespace** %12, align 8
  %19 = load %struct.nvme_namespace*, %struct.nvme_namespace** %12, align 8
  %20 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %19, i32 0, i32 1
  %21 = load %struct.nvme_controller*, %struct.nvme_controller** %20, align 8
  store %struct.nvme_controller* %21, %struct.nvme_controller** %13, align 8
  %22 = load i32, i32* %8, align 4
  switch i32 %22, label %63 [
    i32 129, label %23
    i32 131, label %23
    i32 128, label %28
    i32 130, label %37
    i32 133, label %53
    i32 132, label %58
  ]

23:                                               ; preds = %5, %5
  %24 = load %struct.nvme_namespace*, %struct.nvme_namespace** %12, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @nvme_ns_test(%struct.nvme_namespace* %24, i32 %25, i64 %26)
  br label %65

28:                                               ; preds = %5
  %29 = load i64, i64* %9, align 8
  %30 = inttoptr i64 %29 to %struct.nvme_pt_command*
  store %struct.nvme_pt_command* %30, %struct.nvme_pt_command** %14, align 8
  %31 = load %struct.nvme_controller*, %struct.nvme_controller** %13, align 8
  %32 = load %struct.nvme_pt_command*, %struct.nvme_pt_command** %14, align 8
  %33 = load %struct.nvme_namespace*, %struct.nvme_namespace** %12, align 8
  %34 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @nvme_ctrlr_passthrough_cmd(%struct.nvme_controller* %31, %struct.nvme_pt_command* %32, i32 %35, i32 1, i32 0)
  store i32 %36, i32* %6, align 4
  br label %66

37:                                               ; preds = %5
  %38 = load i64, i64* %9, align 8
  %39 = inttoptr i64 %38 to %struct.nvme_get_nsid*
  store %struct.nvme_get_nsid* %39, %struct.nvme_get_nsid** %15, align 8
  %40 = load %struct.nvme_get_nsid*, %struct.nvme_get_nsid** %15, align 8
  %41 = getelementptr inbounds %struct.nvme_get_nsid, %struct.nvme_get_nsid* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.nvme_controller*, %struct.nvme_controller** %13, align 8
  %44 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @device_get_nameunit(i32 %45)
  %47 = call i32 @strncpy(i32 %42, i32 %46, i32 4)
  %48 = load %struct.nvme_namespace*, %struct.nvme_namespace** %12, align 8
  %49 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.nvme_get_nsid*, %struct.nvme_get_nsid** %15, align 8
  %52 = getelementptr inbounds %struct.nvme_get_nsid, %struct.nvme_get_nsid* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %65

53:                                               ; preds = %5
  %54 = load %struct.nvme_namespace*, %struct.nvme_namespace** %12, align 8
  %55 = call i32 @nvme_ns_get_size(%struct.nvme_namespace* %54)
  %56 = load i64, i64* %9, align 8
  %57 = inttoptr i64 %56 to i32*
  store i32 %55, i32* %57, align 4
  br label %65

58:                                               ; preds = %5
  %59 = load %struct.nvme_namespace*, %struct.nvme_namespace** %12, align 8
  %60 = call i32 @nvme_ns_get_sector_size(%struct.nvme_namespace* %59)
  %61 = load i64, i64* %9, align 8
  %62 = inttoptr i64 %61 to i32*
  store i32 %60, i32* %62, align 4
  br label %65

63:                                               ; preds = %5
  %64 = load i32, i32* @ENOTTY, align 4
  store i32 %64, i32* %6, align 4
  br label %66

65:                                               ; preds = %58, %53, %37, %23
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %63, %28
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @nvme_ns_test(%struct.nvme_namespace*, i32, i64) #1

declare dso_local i32 @nvme_ctrlr_passthrough_cmd(%struct.nvme_controller*, %struct.nvme_pt_command*, i32, i32, i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @nvme_ns_get_size(%struct.nvme_namespace*) #1

declare dso_local i32 @nvme_ns_get_sector_size(%struct.nvme_namespace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
