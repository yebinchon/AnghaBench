; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev_mt.c_evdev_push_nfingers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev_mt.c_evdev_push_nfingers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evdev_push_nfingers(%struct.evdev_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.evdev_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.evdev_dev* %0, %struct.evdev_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %6 = call i32 @EVDEV_ENTER(%struct.evdev_dev* %5)
  %7 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @evdev_send_nfingers(%struct.evdev_dev* %7, i32 %8)
  %10 = load %struct.evdev_dev*, %struct.evdev_dev** %3, align 8
  %11 = call i32 @EVDEV_EXIT(%struct.evdev_dev* %10)
  ret void
}

declare dso_local i32 @EVDEV_ENTER(%struct.evdev_dev*) #1

declare dso_local i32 @evdev_send_nfingers(%struct.evdev_dev*, i32) #1

declare dso_local i32 @EVDEV_EXIT(%struct.evdev_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
