; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82540.c_e1000_setup_fiber_serdes_link_82540.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82540.c_e1000_setup_fiber_serdes_link_82540.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__, %struct.e1000_mac_info }
%struct.TYPE_2__ = type { i32 }
%struct.e1000_mac_info = type { i32 }

@E1000_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"e1000_setup_fiber_serdes_link_82540\00", align 1
@e1000_media_type_internal_serdes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_setup_fiber_serdes_link_82540 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_setup_fiber_serdes_link_82540(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mac_info*, align 8
  %4 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %6 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %5, i32 0, i32 1
  store %struct.e1000_mac_info* %6, %struct.e1000_mac_info** %3, align 8
  %7 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %7, i32* %4, align 4
  %8 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %33 [
    i32 129, label %12
    i32 128, label %12
  ]

12:                                               ; preds = %1, %1
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @e1000_media_type_internal_serdes, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %21 = call i32 @e1000_adjust_serdes_amplitude_82540(%struct.e1000_hw* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %37

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %12
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %28 = call i32 @e1000_set_vco_speed_82540(%struct.e1000_hw* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %37

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %1, %32
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %36 = call i32 @e1000_setup_fiber_serdes_link_generic(%struct.e1000_hw* %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %34, %31, %24
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @e1000_adjust_serdes_amplitude_82540(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_set_vco_speed_82540(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_setup_fiber_serdes_link_generic(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
