; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.nvme_controller* }
%struct.nvme_controller = type { i32 }
%struct.thread = type { i32 }
%struct.nvme_pt_command = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nvme_get_nsid = type { i32, i32 }

@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @nvme_ctrlr_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_ctrlr_ioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.nvme_controller*, align 8
  %13 = alloca %struct.nvme_pt_command*, align 8
  %14 = alloca %struct.nvme_get_nsid*, align 8
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %15 = load %struct.cdev*, %struct.cdev** %7, align 8
  %16 = getelementptr inbounds %struct.cdev, %struct.cdev* %15, i32 0, i32 0
  %17 = load %struct.nvme_controller*, %struct.nvme_controller** %16, align 8
  store %struct.nvme_controller* %17, %struct.nvme_controller** %12, align 8
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %46 [
    i32 128, label %19
    i32 129, label %22
    i32 130, label %33
  ]

19:                                               ; preds = %5
  %20 = load %struct.nvme_controller*, %struct.nvme_controller** %12, align 8
  %21 = call i32 @nvme_ctrlr_reset(%struct.nvme_controller* %20)
  br label %48

22:                                               ; preds = %5
  %23 = load i64, i64* %9, align 8
  %24 = inttoptr i64 %23 to %struct.nvme_pt_command*
  store %struct.nvme_pt_command* %24, %struct.nvme_pt_command** %13, align 8
  %25 = load %struct.nvme_controller*, %struct.nvme_controller** %12, align 8
  %26 = load %struct.nvme_pt_command*, %struct.nvme_pt_command** %13, align 8
  %27 = load %struct.nvme_pt_command*, %struct.nvme_pt_command** %13, align 8
  %28 = getelementptr inbounds %struct.nvme_pt_command, %struct.nvme_pt_command* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le32toh(i32 %30)
  %32 = call i32 @nvme_ctrlr_passthrough_cmd(%struct.nvme_controller* %25, %struct.nvme_pt_command* %26, i32 %31, i32 1, i32 1)
  store i32 %32, i32* %6, align 4
  br label %49

33:                                               ; preds = %5
  %34 = load i64, i64* %9, align 8
  %35 = inttoptr i64 %34 to %struct.nvme_get_nsid*
  store %struct.nvme_get_nsid* %35, %struct.nvme_get_nsid** %14, align 8
  %36 = load %struct.nvme_get_nsid*, %struct.nvme_get_nsid** %14, align 8
  %37 = getelementptr inbounds %struct.nvme_get_nsid, %struct.nvme_get_nsid* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nvme_controller*, %struct.nvme_controller** %12, align 8
  %40 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @device_get_nameunit(i32 %41)
  %43 = call i32 @strncpy(i32 %38, i32 %42, i32 4)
  %44 = load %struct.nvme_get_nsid*, %struct.nvme_get_nsid** %14, align 8
  %45 = getelementptr inbounds %struct.nvme_get_nsid, %struct.nvme_get_nsid* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  br label %48

46:                                               ; preds = %5
  %47 = load i32, i32* @ENOTTY, align 4
  store i32 %47, i32* %6, align 4
  br label %49

48:                                               ; preds = %33, %19
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %48, %46, %22
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i32 @nvme_ctrlr_reset(%struct.nvme_controller*) #1

declare dso_local i32 @nvme_ctrlr_passthrough_cmd(%struct.nvme_controller*, %struct.nvme_pt_command*, i32, i32, i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
