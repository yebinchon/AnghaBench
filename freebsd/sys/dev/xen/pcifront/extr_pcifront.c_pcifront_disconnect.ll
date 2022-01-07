; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/pcifront/extr_pcifront.c_pcifront_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/pcifront/extr_pcifront.c_pcifront_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcifront_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@XenbusStateClosing = common dso_local global i64 0, align 8
@XenbusStateConnected = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcifront_device*)* @pcifront_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcifront_disconnect(%struct.pcifront_device* %0) #0 {
  %2 = alloca %struct.pcifront_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.pcifront_device* %0, %struct.pcifront_device** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %6 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @xenbus_read_driver_state(i32 %9)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @XenbusStateClosing, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %1
  %15 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %16 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i64, i64* @XenbusStateClosing, align 8
  %19 = call i32 @xenbus_switch_state(%struct.TYPE_2__* %17, i32* null, i64 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %14
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @XenbusStateConnected, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %26, %22, %14
  br label %28

28:                                               ; preds = %27, %1
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i64 @xenbus_read_driver_state(i32) #1

declare dso_local i32 @xenbus_switch_state(%struct.TYPE_2__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
