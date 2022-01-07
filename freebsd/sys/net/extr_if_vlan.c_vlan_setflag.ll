; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vlan.c_vlan_setflag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vlan.c_vlan_setflag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, %struct.ifvlan* }
%struct.ifvlan = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i32, i32 (%struct.ifnet*, i32)*)* @vlan_setflag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlan_setflag(%struct.ifnet* %0, i32 %1, i32 %2, i32 (%struct.ifnet*, i32)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32 (%struct.ifnet*, i32)*, align 8
  %10 = alloca %struct.ifvlan*, align 8
  %11 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 (%struct.ifnet*, i32)* %3, i32 (%struct.ifnet*, i32)** %9, align 8
  %12 = call i32 (...) @VLAN_SXLOCK_ASSERT()
  %13 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 1
  %15 = load %struct.ifvlan*, %struct.ifvlan** %14, align 8
  store %struct.ifvlan* %15, %struct.ifvlan** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %20 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %21, %22
  br label %25

24:                                               ; preds = %4
  br label %25

25:                                               ; preds = %24, %18
  %26 = phi i32 [ %23, %18 ], [ 0, %24 ]
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.ifvlan*, %struct.ifvlan** %10, align 8
  %29 = getelementptr inbounds %struct.ifvlan, %struct.ifvlan* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %27, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %25
  %35 = load i32 (%struct.ifnet*, i32)*, i32 (%struct.ifnet*, i32)** %9, align 8
  %36 = load %struct.ifvlan*, %struct.ifvlan** %10, align 8
  %37 = call %struct.ifnet* @PARENT(%struct.ifvlan* %36)
  %38 = load i32, i32* %8, align 4
  %39 = call i32 %35(%struct.ifnet* %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %5, align 4
  br label %57

44:                                               ; preds = %34
  %45 = load i32, i32* %7, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.ifvlan*, %struct.ifvlan** %10, align 8
  %48 = getelementptr inbounds %struct.ifvlan, %struct.ifvlan* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.ifvlan*, %struct.ifvlan** %10, align 8
  %53 = getelementptr inbounds %struct.ifvlan, %struct.ifvlan* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %44, %25
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %42
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @VLAN_SXLOCK_ASSERT(...) #1

declare dso_local %struct.ifnet* @PARENT(%struct.ifvlan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
