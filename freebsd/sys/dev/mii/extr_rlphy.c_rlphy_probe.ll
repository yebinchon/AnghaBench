; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_rlphy.c_rlphy_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_rlphy.c_rlphy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rlphys = common dso_local global i32 0, align 4
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rl\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"re\00", align 1
@rlintphys = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rlphy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rlphy_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @rlphys, align 4
  %7 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  %8 = call i32 @mii_phy_dev_probe(i32 %5, i32 %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp sle i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %28

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @mii_dev_mac_match(i32 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @mii_dev_mac_match(i32 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17, %13
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @rlintphys, align 4
  %24 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  %25 = call i32 @mii_phy_dev_probe(i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %2, align 4
  br label %28

26:                                               ; preds = %17
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %21, %11
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @mii_phy_dev_probe(i32, i32, i32) #1

declare dso_local i64 @mii_dev_mac_match(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
