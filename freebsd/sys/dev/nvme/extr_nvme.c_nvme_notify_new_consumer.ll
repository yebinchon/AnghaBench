; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme.c_nvme_notify_new_consumer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme.c_nvme_notify_new_consumer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_consumer = type { i32 }
%struct.nvme_controller = type { i32 }

@nvme_devclass = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_consumer*)* @nvme_notify_new_consumer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_notify_new_consumer(%struct.nvme_consumer* %0) #0 {
  %2 = alloca %struct.nvme_consumer*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.nvme_controller*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nvme_consumer* %0, %struct.nvme_consumer** %2, align 8
  %7 = load i32, i32* @nvme_devclass, align 4
  %8 = call i64 @devclass_get_devices(i32 %7, i32** %3, i32* %6)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %33

11:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %26, %11
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.nvme_controller* @DEVICE2SOFTC(i32 %21)
  store %struct.nvme_controller* %22, %struct.nvme_controller** %4, align 8
  %23 = load %struct.nvme_consumer*, %struct.nvme_consumer** %2, align 8
  %24 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %25 = call i32 @nvme_notify(%struct.nvme_consumer* %23, %struct.nvme_controller* %24)
  br label %26

26:                                               ; preds = %16
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %12

29:                                               ; preds = %12
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* @M_TEMP, align 4
  %32 = call i32 @free(i32* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %10
  ret void
}

declare dso_local i64 @devclass_get_devices(i32, i32**, i32*) #1

declare dso_local %struct.nvme_controller* @DEVICE2SOFTC(i32) #1

declare dso_local i32 @nvme_notify(%struct.nvme_consumer*, %struct.nvme_controller*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
