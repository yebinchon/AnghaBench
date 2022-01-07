; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_cdev.c_evdev_client_gettime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_cdev.c_evdev_client_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev_client = type { i32 }
%struct.timeval = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evdev_client*, %struct.timeval*)* @evdev_client_gettime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evdev_client_gettime(%struct.evdev_client* %0, %struct.timeval* %1) #0 {
  %3 = alloca %struct.evdev_client*, align 8
  %4 = alloca %struct.timeval*, align 8
  store %struct.evdev_client* %0, %struct.evdev_client** %3, align 8
  store %struct.timeval* %1, %struct.timeval** %4, align 8
  %5 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %6 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %12 [
    i32 130, label %8
    i32 129, label %8
    i32 128, label %11
  ]

8:                                                ; preds = %2, %2
  %9 = load %struct.timeval*, %struct.timeval** %4, align 8
  %10 = call i32 @microuptime(%struct.timeval* %9)
  br label %15

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %2, %11
  %13 = load %struct.timeval*, %struct.timeval** %4, align 8
  %14 = call i32 @microtime(%struct.timeval* %13)
  br label %15

15:                                               ; preds = %12, %8
  ret void
}

declare dso_local i32 @microuptime(%struct.timeval*) #1

declare dso_local i32 @microtime(%struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
