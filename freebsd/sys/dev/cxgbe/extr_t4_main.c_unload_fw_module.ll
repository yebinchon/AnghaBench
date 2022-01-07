; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_unload_fw_module.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_unload_fw_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.firmware = type { i32 }

@FIRMWARE_UNLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.firmware*, %struct.firmware*)* @unload_fw_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unload_fw_module(%struct.adapter* %0, %struct.firmware* %1, %struct.firmware* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca %struct.firmware*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  store %struct.firmware* %2, %struct.firmware** %6, align 8
  %7 = load %struct.firmware*, %struct.firmware** %6, align 8
  %8 = icmp ne %struct.firmware* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = load %struct.firmware*, %struct.firmware** %6, align 8
  %11 = load i32, i32* @FIRMWARE_UNLOAD, align 4
  %12 = call i32 @firmware_put(%struct.firmware* %10, i32 %11)
  br label %13

13:                                               ; preds = %9, %3
  %14 = load %struct.firmware*, %struct.firmware** %5, align 8
  %15 = icmp ne %struct.firmware* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load %struct.firmware*, %struct.firmware** %5, align 8
  %18 = load i32, i32* @FIRMWARE_UNLOAD, align 4
  %19 = call i32 @firmware_put(%struct.firmware* %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %13
  ret void
}

declare dso_local i32 @firmware_put(%struct.firmware*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
