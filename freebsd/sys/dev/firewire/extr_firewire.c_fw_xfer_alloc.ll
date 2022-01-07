; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_xfer_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_xfer_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_xfer = type { i32, %struct.malloc_type* }
%struct.malloc_type = type { i32 }

@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fw_xfer* @fw_xfer_alloc(%struct.malloc_type* %0) #0 {
  %2 = alloca %struct.fw_xfer*, align 8
  %3 = alloca %struct.malloc_type*, align 8
  %4 = alloca %struct.fw_xfer*, align 8
  store %struct.malloc_type* %0, %struct.malloc_type** %3, align 8
  %5 = load %struct.malloc_type*, %struct.malloc_type** %3, align 8
  %6 = load i32, i32* @M_NOWAIT, align 4
  %7 = load i32, i32* @M_ZERO, align 4
  %8 = or i32 %6, %7
  %9 = call %struct.fw_xfer* @malloc(i32 16, %struct.malloc_type* %5, i32 %8)
  store %struct.fw_xfer* %9, %struct.fw_xfer** %4, align 8
  %10 = load %struct.fw_xfer*, %struct.fw_xfer** %4, align 8
  %11 = icmp eq %struct.fw_xfer* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load %struct.fw_xfer*, %struct.fw_xfer** %4, align 8
  store %struct.fw_xfer* %13, %struct.fw_xfer** %2, align 8
  br label %21

14:                                               ; preds = %1
  %15 = load %struct.malloc_type*, %struct.malloc_type** %3, align 8
  %16 = load %struct.fw_xfer*, %struct.fw_xfer** %4, align 8
  %17 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %16, i32 0, i32 1
  store %struct.malloc_type* %15, %struct.malloc_type** %17, align 8
  %18 = load %struct.fw_xfer*, %struct.fw_xfer** %4, align 8
  %19 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %18, i32 0, i32 0
  store i32 -1, i32* %19, align 8
  %20 = load %struct.fw_xfer*, %struct.fw_xfer** %4, align 8
  store %struct.fw_xfer* %20, %struct.fw_xfer** %2, align 8
  br label %21

21:                                               ; preds = %14, %12
  %22 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  ret %struct.fw_xfer* %22
}

declare dso_local %struct.fw_xfer* @malloc(i32, %struct.malloc_type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
