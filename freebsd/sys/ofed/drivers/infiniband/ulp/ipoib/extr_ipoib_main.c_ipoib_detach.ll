; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { i32, %struct.ifnet*, i32, i32 }
%struct.ifnet = type { i32 }

@IPOIB_FLAG_SUBINTERFACE = common dso_local global i32 0, align 4
@ipoib_unrhdr = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipoib_dev_priv*)* @ipoib_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipoib_detach(%struct.ipoib_dev_priv* %0) #0 {
  %2 = alloca %struct.ipoib_dev_priv*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %2, align 8
  %4 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %5 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %4, i32 0, i32 1
  %6 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  store %struct.ifnet* %6, %struct.ifnet** %3, align 8
  %7 = load i32, i32* @IPOIB_FLAG_SUBINTERFACE, align 4
  %8 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %9 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %8, i32 0, i32 3
  %10 = call i32 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %1
  %13 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %14 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %16 = call i32 @bpfdetach(%struct.ifnet* %15)
  %17 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %18 = call i32 @if_detach(%struct.ifnet* %17)
  %19 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %20 = call i32 @if_free(%struct.ifnet* %19)
  %21 = load i32, i32* @ipoib_unrhdr, align 4
  %22 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %23 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @free_unr(i32 %21, i32 %24)
  br label %31

26:                                               ; preds = %1
  %27 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %28 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %27, i32 0, i32 1
  %29 = load %struct.ifnet*, %struct.ifnet** %28, align 8
  %30 = call i32 @VLAN_SETCOOKIE(%struct.ifnet* %29, i32* null)
  br label %31

31:                                               ; preds = %26, %12
  %32 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %33 = load i32, i32* @M_TEMP, align 4
  %34 = call i32 @free(%struct.ipoib_dev_priv* %32, i32 %33)
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @bpfdetach(%struct.ifnet*) #1

declare dso_local i32 @if_detach(%struct.ifnet*) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @free_unr(i32, i32) #1

declare dso_local i32 @VLAN_SETCOOKIE(%struct.ifnet*, i32*) #1

declare dso_local i32 @free(%struct.ipoib_dev_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
