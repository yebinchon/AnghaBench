; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_ifoff/extr_mac_ifoff.c_ifnet_check_incoming.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_ifoff/extr_mac_ifoff.c_ifnet_check_incoming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i64 }

@ifoff_enabled = common dso_local global i32 0, align 4
@ifoff_lo_enabled = common dso_local global i64 0, align 8
@IFT_LOOP = common dso_local global i64 0, align 8
@ifoff_other_enabled = common dso_local global i64 0, align 8
@ifoff_bpfrecv_enabled = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32)* @ifnet_check_incoming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifnet_check_incoming(%struct.ifnet* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @ifoff_enabled, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

9:                                                ; preds = %2
  %10 = load i64, i64* @ifoff_lo_enabled, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IFT_LOOP, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %38

19:                                               ; preds = %12, %9
  %20 = load i64, i64* @ifoff_other_enabled, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %24 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IFT_LOOP, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %38

29:                                               ; preds = %22, %19
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i64, i64* @ifoff_bpfrecv_enabled, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %38

36:                                               ; preds = %32, %29
  %37 = load i32, i32* @EPERM, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %35, %28, %18, %8
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
