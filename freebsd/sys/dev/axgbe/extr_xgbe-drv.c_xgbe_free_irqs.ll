; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-drv.c_xgbe_free_irqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-drv.c_xgbe_free_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, %struct.xgbe_channel*, i32, i32, i32 }
%struct.xgbe_channel = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_free_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_free_irqs(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca %struct.xgbe_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %5 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %6 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %9 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %12 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @bus_teardown_intr(i32 %7, i32 %10, i32 %13)
  %15 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %16 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %46

20:                                               ; preds = %1
  %21 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %22 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %21, i32 0, i32 2
  %23 = load %struct.xgbe_channel*, %struct.xgbe_channel** %22, align 8
  store %struct.xgbe_channel* %23, %struct.xgbe_channel** %3, align 8
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %41, %20
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %27 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %24
  %31 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %32 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %35 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %38 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @bus_teardown_intr(i32 %33, i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %30
  %42 = load i32, i32* %4, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %4, align 4
  %44 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %45 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %44, i32 1
  store %struct.xgbe_channel* %45, %struct.xgbe_channel** %3, align 8
  br label %24

46:                                               ; preds = %19, %24
  ret void
}

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
