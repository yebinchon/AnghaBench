; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_ifoff/extr_mac_ifoff.c_ifnet_check_outgoing.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_ifoff/extr_mac_ifoff.c_ifnet_check_outgoing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i64 }

@ifoff_enabled = common dso_local global i32 0, align 4
@ifoff_lo_enabled = common dso_local global i64 0, align 8
@IFT_LOOP = common dso_local global i64 0, align 8
@ifoff_other_enabled = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @ifnet_check_outgoing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifnet_check_outgoing(%struct.ifnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  %4 = load i32, i32* @ifoff_enabled, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

7:                                                ; preds = %1
  %8 = load i64, i64* @ifoff_lo_enabled, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IFT_LOOP, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %29

17:                                               ; preds = %10, %7
  %18 = load i64, i64* @ifoff_other_enabled, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IFT_LOOP, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %29

27:                                               ; preds = %20, %17
  %28 = load i32, i32* @EPERM, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %26, %16, %6
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
