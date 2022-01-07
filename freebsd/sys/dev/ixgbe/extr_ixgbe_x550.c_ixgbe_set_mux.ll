; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_set_mux.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IXGBE_ESDP = common dso_local global i32 0, align 4
@IXGBE_ESDP_SDP1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_hw*, i64)* @ixgbe_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_set_mux(%struct.ixgbe_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %34

12:                                               ; preds = %2
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %14 = load i32, i32* @IXGBE_ESDP, align 4
  %15 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i32, i32* @IXGBE_ESDP_SDP1, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %27

22:                                               ; preds = %12
  %23 = load i32, i32* @IXGBE_ESDP_SDP1, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %22, %18
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %29 = load i32, i32* @IXGBE_ESDP, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %28, i32 %29, i32 %30)
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %33 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %32)
  br label %34

34:                                               ; preds = %27, %11
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
