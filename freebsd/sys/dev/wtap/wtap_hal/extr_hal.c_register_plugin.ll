; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wtap/wtap_hal/extr_hal.c_register_plugin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wtap/wtap_hal/extr_hal.c_register_plugin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wtap_hal = type { %struct.wtap_plugin* }
%struct.wtap_plugin = type { i32 (%struct.wtap_plugin*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @register_plugin(%struct.wtap_hal* %0, %struct.wtap_plugin* %1) #0 {
  %3 = alloca %struct.wtap_hal*, align 8
  %4 = alloca %struct.wtap_plugin*, align 8
  store %struct.wtap_hal* %0, %struct.wtap_hal** %3, align 8
  store %struct.wtap_plugin* %1, %struct.wtap_plugin** %4, align 8
  %5 = load %struct.wtap_plugin*, %struct.wtap_plugin** %4, align 8
  %6 = getelementptr inbounds %struct.wtap_plugin, %struct.wtap_plugin* %5, i32 0, i32 0
  %7 = load i32 (%struct.wtap_plugin*)*, i32 (%struct.wtap_plugin*)** %6, align 8
  %8 = load %struct.wtap_plugin*, %struct.wtap_plugin** %4, align 8
  %9 = call i32 %7(%struct.wtap_plugin* %8)
  %10 = load %struct.wtap_plugin*, %struct.wtap_plugin** %4, align 8
  %11 = load %struct.wtap_hal*, %struct.wtap_hal** %3, align 8
  %12 = getelementptr inbounds %struct.wtap_hal, %struct.wtap_hal* %11, i32 0, i32 0
  store %struct.wtap_plugin* %10, %struct.wtap_plugin** %12, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
