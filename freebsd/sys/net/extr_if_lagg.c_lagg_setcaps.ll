; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_lagg.c_lagg_setcaps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_lagg.c_lagg_setcaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lagg_port = type { i32 (%struct.TYPE_2__*, i32, i32)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ifreq = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@SIOCSIFCAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lagg_port*, i32)* @lagg_setcaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lagg_setcaps(%struct.lagg_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lagg_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifreq, align 4
  store %struct.lagg_port* %0, %struct.lagg_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.lagg_port*, %struct.lagg_port** %4, align 8
  %8 = getelementptr inbounds %struct.lagg_port, %struct.lagg_port* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

15:                                               ; preds = %2
  %16 = load %struct.lagg_port*, %struct.lagg_port** %4, align 8
  %17 = getelementptr inbounds %struct.lagg_port, %struct.lagg_port* %16, i32 0, i32 0
  %18 = load i32 (%struct.TYPE_2__*, i32, i32)*, i32 (%struct.TYPE_2__*, i32, i32)** %17, align 8
  %19 = icmp eq i32 (%struct.TYPE_2__*, i32, i32)* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %3, align 4
  br label %34

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  %24 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.lagg_port*, %struct.lagg_port** %4, align 8
  %26 = getelementptr inbounds %struct.lagg_port, %struct.lagg_port* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_2__*, i32, i32)*, i32 (%struct.TYPE_2__*, i32, i32)** %26, align 8
  %28 = load %struct.lagg_port*, %struct.lagg_port** %4, align 8
  %29 = getelementptr inbounds %struct.lagg_port, %struct.lagg_port* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* @SIOCSIFCAP, align 4
  %32 = ptrtoint %struct.ifreq* %6 to i32
  %33 = call i32 %27(%struct.TYPE_2__* %30, i32 %31, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %22, %20, %14
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
