; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_vmdq_set_anti_spoofing_pf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_vmdq_set_anti_spoofing_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@E1000_DTXSWC = common dso_local global i32 0, align 4
@E1000_TXSWC = common dso_local global i32 0, align 4
@E1000_DTXSWC_MAC_SPOOF_MASK = common dso_local global i32 0, align 4
@E1000_DTXSWC_VLAN_SPOOF_MASK = common dso_local global i32 0, align 4
@MAX_NUM_VFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000_vmdq_set_anti_spoofing_pf(%struct.e1000_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %17 [
    i32 130, label %13
    i32 129, label %15
    i32 128, label %15
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @E1000_DTXSWC, align 4
  store i32 %14, i32* %8, align 4
  br label %18

15:                                               ; preds = %3, %3
  %16 = load i32, i32* @E1000_TXSWC, align 4
  store i32 %16, i32* %8, align 4
  br label %18

17:                                               ; preds = %3
  br label %51

18:                                               ; preds = %15, %13
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @E1000_READ_REG(%struct.e1000_hw* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %18
  %25 = load i32, i32* @E1000_DTXSWC_MAC_SPOOF_MASK, align 4
  %26 = load i32, i32* @E1000_DTXSWC_VLAN_SPOOF_MASK, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = shl i32 1, %30
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @MAX_NUM_VFS, align 4
  %34 = add nsw i32 %32, %33
  %35 = shl i32 1, %34
  %36 = or i32 %31, %35
  %37 = load i32, i32* %7, align 4
  %38 = xor i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %46

39:                                               ; preds = %18
  %40 = load i32, i32* @E1000_DTXSWC_MAC_SPOOF_MASK, align 4
  %41 = load i32, i32* @E1000_DTXSWC_VLAN_SPOOF_MASK, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %39, %24
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %46, %17
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
