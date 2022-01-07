; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_api.c_ixgbe_init_shared_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_api.c_ixgbe_init_shared_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"ixgbe_init_shared_code\00", align 1
@IXGBE_ERR_DEVICE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@IXGBE_LINK_UP_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_init_shared_code(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %4 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %6 = call i32 @ixgbe_set_mac_type(%struct.ixgbe_hw* %5)
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %29 [
    i32 133, label %11
    i32 132, label %14
    i32 131, label %17
    i32 130, label %20
    i32 128, label %23
    i32 129, label %26
  ]

11:                                               ; preds = %1
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %13 = call i32 @ixgbe_init_ops_82598(%struct.ixgbe_hw* %12)
  store i32 %13, i32* %3, align 4
  br label %31

14:                                               ; preds = %1
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %16 = call i32 @ixgbe_init_ops_82599(%struct.ixgbe_hw* %15)
  store i32 %16, i32* %3, align 4
  br label %31

17:                                               ; preds = %1
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %19 = call i32 @ixgbe_init_ops_X540(%struct.ixgbe_hw* %18)
  store i32 %19, i32* %3, align 4
  br label %31

20:                                               ; preds = %1
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %22 = call i32 @ixgbe_init_ops_X550(%struct.ixgbe_hw* %21)
  store i32 %22, i32* %3, align 4
  br label %31

23:                                               ; preds = %1
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %25 = call i32 @ixgbe_init_ops_X550EM_x(%struct.ixgbe_hw* %24)
  store i32 %25, i32* %3, align 4
  br label %31

26:                                               ; preds = %1
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %28 = call i32 @ixgbe_init_ops_X550EM_a(%struct.ixgbe_hw* %27)
  store i32 %28, i32* %3, align 4
  br label %31

29:                                               ; preds = %1
  %30 = load i32, i32* @IXGBE_ERR_DEVICE_NOT_SUPPORTED, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %29, %26, %23, %20, %17, %14, %11
  %32 = load i32, i32* @IXGBE_LINK_UP_TIME, align 4
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %34 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ixgbe_set_mac_type(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_init_ops_82598(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_init_ops_82599(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_init_ops_X540(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_init_ops_X550(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_init_ops_X550EM_x(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_init_ops_X550EM_a(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
