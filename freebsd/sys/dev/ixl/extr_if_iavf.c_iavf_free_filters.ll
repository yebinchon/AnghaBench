; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_free_filters.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_free_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_sc = type { %struct.iavf_vlan_filter*, %struct.iavf_vlan_filter* }
%struct.iavf_vlan_filter = type { i32 }
%struct.iavf_mac_filter = type opaque

@next = common dso_local global i32 0, align 4
@M_IAVF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iavf_sc*)* @iavf_free_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iavf_free_filters(%struct.iavf_sc* %0) #0 {
  %2 = alloca %struct.iavf_sc*, align 8
  %3 = alloca %struct.iavf_mac_filter*, align 8
  %4 = alloca %struct.iavf_vlan_filter*, align 8
  store %struct.iavf_sc* %0, %struct.iavf_sc** %2, align 8
  br label %5

5:                                                ; preds = %12, %1
  %6 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %7 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %6, i32 0, i32 1
  %8 = load %struct.iavf_vlan_filter*, %struct.iavf_vlan_filter** %7, align 8
  %9 = call i32 @SLIST_EMPTY(%struct.iavf_vlan_filter* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %27

12:                                               ; preds = %5
  %13 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %14 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %13, i32 0, i32 1
  %15 = load %struct.iavf_vlan_filter*, %struct.iavf_vlan_filter** %14, align 8
  %16 = call %struct.iavf_vlan_filter* @SLIST_FIRST(%struct.iavf_vlan_filter* %15)
  %17 = bitcast %struct.iavf_vlan_filter* %16 to %struct.iavf_mac_filter*
  store %struct.iavf_mac_filter* %17, %struct.iavf_mac_filter** %3, align 8
  %18 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %19 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %18, i32 0, i32 1
  %20 = load %struct.iavf_vlan_filter*, %struct.iavf_vlan_filter** %19, align 8
  %21 = load i32, i32* @next, align 4
  %22 = call i32 @SLIST_REMOVE_HEAD(%struct.iavf_vlan_filter* %20, i32 %21)
  %23 = load %struct.iavf_mac_filter*, %struct.iavf_mac_filter** %3, align 8
  %24 = bitcast %struct.iavf_mac_filter* %23 to %struct.iavf_vlan_filter*
  %25 = load i32, i32* @M_IAVF, align 4
  %26 = call i32 @free(%struct.iavf_vlan_filter* %24, i32 %25)
  br label %5

27:                                               ; preds = %5
  %28 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %29 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %28, i32 0, i32 1
  %30 = load %struct.iavf_vlan_filter*, %struct.iavf_vlan_filter** %29, align 8
  %31 = load i32, i32* @M_IAVF, align 4
  %32 = call i32 @free(%struct.iavf_vlan_filter* %30, i32 %31)
  br label %33

33:                                               ; preds = %40, %27
  %34 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %35 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %34, i32 0, i32 0
  %36 = load %struct.iavf_vlan_filter*, %struct.iavf_vlan_filter** %35, align 8
  %37 = call i32 @SLIST_EMPTY(%struct.iavf_vlan_filter* %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %53

40:                                               ; preds = %33
  %41 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %42 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %41, i32 0, i32 0
  %43 = load %struct.iavf_vlan_filter*, %struct.iavf_vlan_filter** %42, align 8
  %44 = call %struct.iavf_vlan_filter* @SLIST_FIRST(%struct.iavf_vlan_filter* %43)
  store %struct.iavf_vlan_filter* %44, %struct.iavf_vlan_filter** %4, align 8
  %45 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %46 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %45, i32 0, i32 0
  %47 = load %struct.iavf_vlan_filter*, %struct.iavf_vlan_filter** %46, align 8
  %48 = load i32, i32* @next, align 4
  %49 = call i32 @SLIST_REMOVE_HEAD(%struct.iavf_vlan_filter* %47, i32 %48)
  %50 = load %struct.iavf_vlan_filter*, %struct.iavf_vlan_filter** %4, align 8
  %51 = load i32, i32* @M_IAVF, align 4
  %52 = call i32 @free(%struct.iavf_vlan_filter* %50, i32 %51)
  br label %33

53:                                               ; preds = %33
  %54 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %55 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %54, i32 0, i32 0
  %56 = load %struct.iavf_vlan_filter*, %struct.iavf_vlan_filter** %55, align 8
  %57 = load i32, i32* @M_IAVF, align 4
  %58 = call i32 @free(%struct.iavf_vlan_filter* %56, i32 %57)
  ret void
}

declare dso_local i32 @SLIST_EMPTY(%struct.iavf_vlan_filter*) #1

declare dso_local %struct.iavf_vlan_filter* @SLIST_FIRST(%struct.iavf_vlan_filter*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(%struct.iavf_vlan_filter*, i32) #1

declare dso_local i32 @free(%struct.iavf_vlan_filter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
