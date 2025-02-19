; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vlan.c_vlan_setcookie.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vlan.c_vlan_setcookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i64, %struct.ifvlan* }
%struct.ifvlan = type { i8* }

@IFT_L2VLAN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i8*)* @vlan_setcookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlan_setcookie(%struct.ifnet* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ifvlan*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @IFT_L2VLAN, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %21

14:                                               ; preds = %2
  %15 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %16 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %15, i32 0, i32 1
  %17 = load %struct.ifvlan*, %struct.ifvlan** %16, align 8
  store %struct.ifvlan* %17, %struct.ifvlan** %6, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.ifvlan*, %struct.ifvlan** %6, align 8
  %20 = getelementptr inbounds %struct.ifvlan, %struct.ifvlan* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %14, %12
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
