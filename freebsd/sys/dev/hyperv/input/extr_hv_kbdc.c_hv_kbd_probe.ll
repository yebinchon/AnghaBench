; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/input/extr_hv_kbdc.c_hv_kbd_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/input/extr_hv_kbdc.c_hv_kbd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_ic_desc = type { i32*, i32 }

@ENXIO = common dso_local global i32 0, align 4
@vmbus_kbd_descs = common dso_local global %struct.vmbus_ic_desc* null, align 8
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hv_kbd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hv_kbd_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmbus_ic_desc*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @device_get_parent(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @device_get_name(i32 %8)
  %10 = call i64 @resource_disabled(i32 %9, i32 0)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %2, align 4
  br label %41

14:                                               ; preds = %1
  %15 = load %struct.vmbus_ic_desc*, %struct.vmbus_ic_desc** @vmbus_kbd_descs, align 8
  store %struct.vmbus_ic_desc* %15, %struct.vmbus_ic_desc** %5, align 8
  br label %16

16:                                               ; preds = %36, %14
  %17 = load %struct.vmbus_ic_desc*, %struct.vmbus_ic_desc** %5, align 8
  %18 = getelementptr inbounds %struct.vmbus_ic_desc, %struct.vmbus_ic_desc* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.vmbus_ic_desc*, %struct.vmbus_ic_desc** %5, align 8
  %25 = getelementptr inbounds %struct.vmbus_ic_desc, %struct.vmbus_ic_desc* %24, i32 0, i32 1
  %26 = call i64 @VMBUS_PROBE_GUID(i32 %22, i32 %23, i32* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.vmbus_ic_desc*, %struct.vmbus_ic_desc** %5, align 8
  %31 = getelementptr inbounds %struct.vmbus_ic_desc, %struct.vmbus_ic_desc* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @device_set_desc(i32 %29, i32* %32)
  %34 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %34, i32* %2, align 4
  br label %41

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.vmbus_ic_desc*, %struct.vmbus_ic_desc** %5, align 8
  %38 = getelementptr inbounds %struct.vmbus_ic_desc, %struct.vmbus_ic_desc* %37, i32 1
  store %struct.vmbus_ic_desc* %38, %struct.vmbus_ic_desc** %5, align 8
  br label %16

39:                                               ; preds = %16
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %28, %12
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i64 @resource_disabled(i32, i32) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i64 @VMBUS_PROBE_GUID(i32, i32, i32*) #1

declare dso_local i32 @device_set_desc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
