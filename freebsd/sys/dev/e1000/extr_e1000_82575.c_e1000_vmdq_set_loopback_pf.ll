; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_vmdq_set_loopback_pf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_vmdq_set_loopback_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@E1000_DTXSWC = common dso_local global i32 0, align 4
@E1000_DTXSWC_VMDQ_LOOPBACK_EN = common dso_local global i32 0, align 4
@E1000_TXSWC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000_vmdq_set_loopback_pf(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %50 [
    i32 130, label %10
    i32 129, label %30
    i32 128, label %30
  ]

10:                                               ; preds = %2
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %12 = load i32, i32* @E1000_DTXSWC, align 4
  %13 = call i32 @E1000_READ_REG(%struct.e1000_hw* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load i32, i32* @E1000_DTXSWC_VMDQ_LOOPBACK_EN, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  br label %25

20:                                               ; preds = %10
  %21 = load i32, i32* @E1000_DTXSWC_VMDQ_LOOPBACK_EN, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %20, %16
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %27 = load i32, i32* @E1000_DTXSWC, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %26, i32 %27, i32 %28)
  br label %51

30:                                               ; preds = %2, %2
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %32 = load i32, i32* @E1000_TXSWC, align 4
  %33 = call i32 @E1000_READ_REG(%struct.e1000_hw* %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32, i32* @E1000_DTXSWC_VMDQ_LOOPBACK_EN, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %45

40:                                               ; preds = %30
  %41 = load i32, i32* @E1000_DTXSWC_VMDQ_LOOPBACK_EN, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %40, %36
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %47 = load i32, i32* @E1000_TXSWC, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %46, i32 %47, i32 %48)
  br label %51

50:                                               ; preds = %2
  br label %51

51:                                               ; preds = %50, %45, %25
  ret void
}

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
