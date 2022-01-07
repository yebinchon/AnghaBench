; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_set_fdir_drop_queue_82599.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_set_fdir_drop_queue_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"ixgbe_set_fdir_drop_queue_82599\00", align 1
@IXGBE_FDIRCTRL = common dso_local global i32 0, align 4
@IXGBE_FDIRCTRL_DROP_Q_MASK = common dso_local global i32 0, align 4
@IXGBE_FDIRCTRL_INIT_DONE = common dso_local global i32 0, align 4
@IXGBE_FDIRCTRL_DROP_Q_SHIFT = common dso_local global i32 0, align 4
@ixgbe_mac_X550 = common dso_local global i64 0, align 8
@ixgbe_mac_X550EM_x = common dso_local global i64 0, align 8
@ixgbe_mac_X550EM_a = common dso_local global i64 0, align 8
@IXGBE_FDIRCTRL_DROP_NO_MATCH = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD_CLEARHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_set_fdir_drop_queue_82599(%struct.ixgbe_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %8 = load i32, i32* @IXGBE_FDIRCTRL, align 4
  %9 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @IXGBE_FDIRCTRL_DROP_Q_MASK, align 4
  %11 = load i32, i32* @IXGBE_FDIRCTRL_INIT_DONE, align 4
  %12 = or i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @IXGBE_FDIRCTRL_DROP_Q_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %22 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ixgbe_mac_X550, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %41, label %27

27:                                               ; preds = %2
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %29 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ixgbe_mac_X550EM_x, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %27
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %36 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ixgbe_mac_X550EM_a, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %34, %27, %2
  %42 = load i32, i32* @IXGBE_FDIRCTRL_DROP_NO_MATCH, align 4
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %41, %34
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %47 = load i32, i32* @IXGBE_FDIRCMD, align 4
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %49 = load i32, i32* @IXGBE_FDIRCMD, align 4
  %50 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %48, i32 %49)
  %51 = load i32, i32* @IXGBE_FDIRCMD_CLEARHT, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %46, i32 %47, i32 %52)
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %55 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %54)
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %57 = load i32, i32* @IXGBE_FDIRCMD, align 4
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %59 = load i32, i32* @IXGBE_FDIRCMD, align 4
  %60 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %58, i32 %59)
  %61 = load i32, i32* @IXGBE_FDIRCMD_CLEARHT, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  %64 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %56, i32 %57, i32 %63)
  %65 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %66 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %65)
  %67 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @ixgbe_fdir_enable_82599(%struct.ixgbe_hw* %67, i32 %68)
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_fdir_enable_82599(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
