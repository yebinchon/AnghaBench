; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_dev.c_g_dev_getprovider.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_dev.c_g_dev_getprovider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_provider = type { i32 }
%struct.cdev = type { %struct.g_consumer*, i32* }
%struct.g_consumer = type { %struct.g_provider* }

@g_dev_cdevsw = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.g_provider* @g_dev_getprovider(%struct.cdev* %0) #0 {
  %2 = alloca %struct.g_provider*, align 8
  %3 = alloca %struct.cdev*, align 8
  %4 = alloca %struct.g_consumer*, align 8
  store %struct.cdev* %0, %struct.cdev** %3, align 8
  %5 = call i32 (...) @g_topology_assert()
  %6 = load %struct.cdev*, %struct.cdev** %3, align 8
  %7 = icmp eq %struct.cdev* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.g_provider* null, %struct.g_provider** %2, align 8
  br label %22

9:                                                ; preds = %1
  %10 = load %struct.cdev*, %struct.cdev** %3, align 8
  %11 = getelementptr inbounds %struct.cdev, %struct.cdev* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, @g_dev_cdevsw
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store %struct.g_provider* null, %struct.g_provider** %2, align 8
  br label %22

15:                                               ; preds = %9
  %16 = load %struct.cdev*, %struct.cdev** %3, align 8
  %17 = getelementptr inbounds %struct.cdev, %struct.cdev* %16, i32 0, i32 0
  %18 = load %struct.g_consumer*, %struct.g_consumer** %17, align 8
  store %struct.g_consumer* %18, %struct.g_consumer** %4, align 8
  %19 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %20 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %19, i32 0, i32 0
  %21 = load %struct.g_provider*, %struct.g_provider** %20, align 8
  store %struct.g_provider* %21, %struct.g_provider** %2, align 8
  br label %22

22:                                               ; preds = %15, %14, %8
  %23 = load %struct.g_provider*, %struct.g_provider** %2, align 8
  ret %struct.g_provider* %23
}

declare dso_local i32 @g_topology_assert(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
