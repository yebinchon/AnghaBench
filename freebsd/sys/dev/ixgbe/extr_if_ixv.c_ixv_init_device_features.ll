; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_init_device_features.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_init_device_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IXGBE_FEATURE_NETMAP = common dso_local global i32 0, align 4
@IXGBE_FEATURE_VF = common dso_local global i32 0, align 4
@IXGBE_FEATURE_LEGACY_TX = common dso_local global i32 0, align 4
@IXGBE_FEATURE_NEEDS_CTXD = common dso_local global i32 0, align 4
@IXGBE_FEATURE_RSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @ixv_init_device_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixv_init_device_features(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %3 = load i32, i32* @IXGBE_FEATURE_NETMAP, align 4
  %4 = load i32, i32* @IXGBE_FEATURE_VF, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @IXGBE_FEATURE_LEGACY_TX, align 4
  %7 = or i32 %5, %6
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.adapter*, %struct.adapter** %2, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %28 [
    i32 132, label %15
    i32 131, label %16
    i32 128, label %17
    i32 129, label %17
    i32 130, label %17
  ]

15:                                               ; preds = %1
  br label %29

16:                                               ; preds = %1
  br label %29

17:                                               ; preds = %1, %1, %1
  %18 = load i32, i32* @IXGBE_FEATURE_NEEDS_CTXD, align 4
  %19 = load %struct.adapter*, %struct.adapter** %2, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* @IXGBE_FEATURE_RSS, align 4
  %24 = load %struct.adapter*, %struct.adapter** %2, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %29

28:                                               ; preds = %1
  br label %29

29:                                               ; preds = %28, %17, %16, %15
  %30 = load %struct.adapter*, %struct.adapter** %2, align 8
  %31 = getelementptr inbounds %struct.adapter, %struct.adapter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IXGBE_FEATURE_VF, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load i32, i32* @IXGBE_FEATURE_VF, align 4
  %38 = load %struct.adapter*, %struct.adapter** %2, align 8
  %39 = getelementptr inbounds %struct.adapter, %struct.adapter* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %36, %29
  %43 = load %struct.adapter*, %struct.adapter** %2, align 8
  %44 = getelementptr inbounds %struct.adapter, %struct.adapter* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IXGBE_FEATURE_NETMAP, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load i32, i32* @IXGBE_FEATURE_NETMAP, align 4
  %51 = load %struct.adapter*, %struct.adapter** %2, align 8
  %52 = getelementptr inbounds %struct.adapter, %struct.adapter* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %49, %42
  %56 = load %struct.adapter*, %struct.adapter** %2, align 8
  %57 = getelementptr inbounds %struct.adapter, %struct.adapter* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IXGBE_FEATURE_RSS, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load i32, i32* @IXGBE_FEATURE_RSS, align 4
  %64 = load %struct.adapter*, %struct.adapter** %2, align 8
  %65 = getelementptr inbounds %struct.adapter, %struct.adapter* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %62, %55
  %69 = load %struct.adapter*, %struct.adapter** %2, align 8
  %70 = getelementptr inbounds %struct.adapter, %struct.adapter* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @IXGBE_FEATURE_NEEDS_CTXD, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load i32, i32* @IXGBE_FEATURE_NEEDS_CTXD, align 4
  %77 = load %struct.adapter*, %struct.adapter** %2, align 8
  %78 = getelementptr inbounds %struct.adapter, %struct.adapter* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %75, %68
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
