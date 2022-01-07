; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_tuntap.c_tuntap_driver_from_ifnet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_tuntap.c_tuntap_driver_from_ifnet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuntap_driver = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ifnet = type { i32 }

@tuntap_drivers = common dso_local global %struct.tuntap_driver* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tuntap_driver* (%struct.ifnet*)* @tuntap_driver_from_ifnet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tuntap_driver* @tuntap_driver_from_ifnet(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.tuntap_driver*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.tuntap_driver*, align 8
  %5 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %7 = icmp eq %struct.ifnet* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.tuntap_driver* null, %struct.tuntap_driver** %2, align 8
  br label %36

9:                                                ; preds = %1
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %32, %9
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.tuntap_driver*, %struct.tuntap_driver** @tuntap_drivers, align 8
  %13 = call i32 @nitems(%struct.tuntap_driver* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %10
  %16 = load %struct.tuntap_driver*, %struct.tuntap_driver** @tuntap_drivers, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.tuntap_driver, %struct.tuntap_driver* %16, i64 %18
  store %struct.tuntap_driver* %19, %struct.tuntap_driver** %4, align 8
  %20 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.tuntap_driver*, %struct.tuntap_driver** %4, align 8
  %24 = getelementptr inbounds %struct.tuntap_driver, %struct.tuntap_driver* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @strcmp(i32 %22, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %15
  %30 = load %struct.tuntap_driver*, %struct.tuntap_driver** %4, align 8
  store %struct.tuntap_driver* %30, %struct.tuntap_driver** %2, align 8
  br label %36

31:                                               ; preds = %15
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %10

35:                                               ; preds = %10
  store %struct.tuntap_driver* null, %struct.tuntap_driver** %2, align 8
  br label %36

36:                                               ; preds = %35, %29, %8
  %37 = load %struct.tuntap_driver*, %struct.tuntap_driver** %2, align 8
  ret %struct.tuntap_driver* %37
}

declare dso_local i32 @nitems(%struct.tuntap_driver*) #1

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
