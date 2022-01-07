; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_hw.c_oce_create_nw_interface.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_hw.c_oce_create_nw_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i32* }

@OCE_CAPAB_FLAGS = common dso_local global i32 0, align 4
@OCE_CAPAB_ENABLE = common dso_local global i32 0, align 4
@MBX_RX_IFACE_FLAGS_PASS_L3L4_ERR = common dso_local global i32 0, align 4
@MBX_RX_IFACE_FLAGS_MULTICAST = common dso_local global i32 0, align 4
@MBX_RX_IFACE_FLAGS_LRO = common dso_local global i32 0, align 4
@MBX_RX_IFACE_FLAGS_RSS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oce_create_nw_interface(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %7 = load i32, i32* @OCE_CAPAB_FLAGS, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @OCE_CAPAB_ENABLE, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = call i64 @IS_XE201(%struct.TYPE_12__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load i32, i32* @MBX_RX_IFACE_FLAGS_PASS_L3L4_ERR, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @MBX_RX_IFACE_FLAGS_PASS_L3L4_ERR, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %12, %1
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %23 = call i64 @IS_SH(%struct.TYPE_12__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = call i64 @IS_XE201(%struct.TYPE_12__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25, %21
  %30 = load i32, i32* @MBX_RX_IFACE_FLAGS_MULTICAST, align 4
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 6
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i32, i32* @MBX_RX_IFACE_FLAGS_LRO, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* @MBX_RX_IFACE_FLAGS_LRO, align 4
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %38, %33
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %47 = call i64 @is_rss_enabled(%struct.TYPE_12__* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* @MBX_RX_IFACE_FLAGS_RSS, align 4
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %62

53:                                               ; preds = %45
  %54 = load i32, i32* @MBX_RX_IFACE_FLAGS_RSS, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* @MBX_RX_IFACE_FLAGS_RSS, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %5, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %53, %49
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 4
  %73 = call i32 @oce_if_create(%struct.TYPE_12__* %63, i32 %64, i32 %65, i32 0, i32* %70, i32* %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %62
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %2, align 4
  br label %108

78:                                               ; preds = %62
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 3
  %81 = call i32 @atomic_inc_32(i32* %80)
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @oce_set_flow_control(%struct.TYPE_12__* %85, i32 %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %78
  br label %104

93:                                               ; preds = %78
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @oce_rxf_set_promiscuous(%struct.TYPE_12__* %94, i32 %97)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  br label %104

102:                                              ; preds = %93
  %103 = load i32, i32* %4, align 4
  store i32 %103, i32* %2, align 4
  br label %108

104:                                              ; preds = %101, %92
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %106 = call i32 @oce_delete_nw_interface(%struct.TYPE_12__* %105)
  %107 = load i32, i32* %4, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %104, %102, %76
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i64 @IS_XE201(%struct.TYPE_12__*) #1

declare dso_local i64 @IS_SH(%struct.TYPE_12__*) #1

declare dso_local i64 @is_rss_enabled(%struct.TYPE_12__*) #1

declare dso_local i32 @oce_if_create(%struct.TYPE_12__*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @atomic_inc_32(i32*) #1

declare dso_local i32 @oce_set_flow_control(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @oce_rxf_set_promiscuous(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @oce_delete_nw_interface(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
