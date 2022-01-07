; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/gntdev/extr_gntdev.c_copy_notify_helper.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/gntdev/extr_gntdev.c_copy_notify_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notify_data = type { i32, i32*, i32, i32 }
%struct.ioctl_gntdev_unmap_notify = type { i32, i32, i32 }

@UNMAP_NOTIFY_SEND_EVENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notify_data*, %struct.ioctl_gntdev_unmap_notify*)* @copy_notify_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_notify_helper(%struct.notify_data* %0, %struct.ioctl_gntdev_unmap_notify* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.notify_data*, align 8
  %5 = alloca %struct.ioctl_gntdev_unmap_notify*, align 8
  %6 = alloca i32*, align 8
  store %struct.notify_data* %0, %struct.notify_data** %4, align 8
  store %struct.ioctl_gntdev_unmap_notify* %1, %struct.ioctl_gntdev_unmap_notify** %5, align 8
  store i32* null, i32** %6, align 8
  %7 = load %struct.ioctl_gntdev_unmap_notify*, %struct.ioctl_gntdev_unmap_notify** %5, align 8
  %8 = getelementptr inbounds %struct.ioctl_gntdev_unmap_notify, %struct.ioctl_gntdev_unmap_notify* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @UNMAP_NOTIFY_SEND_EVENT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.ioctl_gntdev_unmap_notify*, %struct.ioctl_gntdev_unmap_notify** %5, align 8
  %15 = getelementptr inbounds %struct.ioctl_gntdev_unmap_notify, %struct.ioctl_gntdev_unmap_notify* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @xen_intr_get_evtchn_from_port(i32 %16, i32** %6)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %3, align 4
  br label %52

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %2
  %23 = load %struct.notify_data*, %struct.notify_data** %4, align 8
  %24 = getelementptr inbounds %struct.notify_data, %struct.notify_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @UNMAP_NOTIFY_SEND_EVENT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.notify_data*, %struct.notify_data** %4, align 8
  %31 = getelementptr inbounds %struct.notify_data, %struct.notify_data* %30, i32 0, i32 1
  %32 = call i32 @xen_intr_unbind(i32** %31)
  br label %33

33:                                               ; preds = %29, %22
  %34 = load %struct.ioctl_gntdev_unmap_notify*, %struct.ioctl_gntdev_unmap_notify** %5, align 8
  %35 = getelementptr inbounds %struct.ioctl_gntdev_unmap_notify, %struct.ioctl_gntdev_unmap_notify* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.notify_data*, %struct.notify_data** %4, align 8
  %38 = getelementptr inbounds %struct.notify_data, %struct.notify_data* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ioctl_gntdev_unmap_notify*, %struct.ioctl_gntdev_unmap_notify** %5, align 8
  %40 = getelementptr inbounds %struct.ioctl_gntdev_unmap_notify, %struct.ioctl_gntdev_unmap_notify* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.notify_data*, %struct.notify_data** %4, align 8
  %43 = getelementptr inbounds %struct.notify_data, %struct.notify_data* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ioctl_gntdev_unmap_notify*, %struct.ioctl_gntdev_unmap_notify** %5, align 8
  %45 = getelementptr inbounds %struct.ioctl_gntdev_unmap_notify, %struct.ioctl_gntdev_unmap_notify* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.notify_data*, %struct.notify_data** %4, align 8
  %48 = getelementptr inbounds %struct.notify_data, %struct.notify_data* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load %struct.notify_data*, %struct.notify_data** %4, align 8
  %51 = getelementptr inbounds %struct.notify_data, %struct.notify_data* %50, i32 0, i32 1
  store i32* %49, i32** %51, align 8
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %33, %19
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @xen_intr_get_evtchn_from_port(i32, i32**) #1

declare dso_local i32 @xen_intr_unbind(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
