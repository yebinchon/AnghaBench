; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_pseudo_deregister.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_pseudo_deregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.taskqgroup = type { i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_17__*, %struct.TYPE_18__, %struct.TYPE_18__, %struct.TYPE_15__*, %struct.TYPE_14__*, i32 }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_18__ }
%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_14__ = type { %struct.TYPE_18__, i32 }

@qgroup_if_io_tqg = common dso_local global %struct.taskqgroup* null, align 8
@M_IFLIB = common dso_local global i32 0, align 4
@qgroup_if_config_tqg = common dso_local global %struct.taskqgroup* null, align 8
@IFC_SC_ALLOCATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iflib_pseudo_deregister(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.taskqgroup*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %3, align 4
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %14 = call i32 @iflib_unregister_vlan_handlers(%struct.TYPE_17__* %13)
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @ether_ifdetach(i32 %15)
  %17 = load %struct.taskqgroup*, %struct.taskqgroup** @qgroup_if_io_tqg, align 8
  store %struct.taskqgroup* %17, %struct.taskqgroup** %8, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 5
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %4, align 8
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %41, %1
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %24 = call i32 @NTXQSETS(%struct.TYPE_17__* %23)
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %21
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = call i32 @callout_drain(i32* %28)
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load %struct.taskqgroup*, %struct.taskqgroup** %8, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = call i32 @taskqgroup_detach(%struct.taskqgroup* %36, %struct.TYPE_18__* %38)
  br label %40

40:                                               ; preds = %35, %26
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 1
  store %struct.TYPE_14__* %45, %struct.TYPE_14__** %4, align 8
  br label %21

46:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %48, align 8
  store %struct.TYPE_15__* %49, %struct.TYPE_15__** %5, align 8
  br label %50

50:                                               ; preds = %88, %46
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %53 = call i32 @NRXQSETS(%struct.TYPE_17__* %52)
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %93

55:                                               ; preds = %50
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load %struct.taskqgroup*, %struct.taskqgroup** %8, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 2
  %65 = call i32 @taskqgroup_detach(%struct.taskqgroup* %62, %struct.TYPE_18__* %64)
  br label %66

66:                                               ; preds = %61, %55
  store i32 0, i32* %7, align 4
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  store %struct.TYPE_16__* %69, %struct.TYPE_16__** %9, align 8
  br label %70

70:                                               ; preds = %82, %66
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %70
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %78, align 8
  %80 = load i32, i32* @M_IFLIB, align 4
  %81 = call i32 @free(%struct.TYPE_17__* %79, i32 %80)
  br label %82

82:                                               ; preds = %76
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 1
  store %struct.TYPE_16__* %86, %struct.TYPE_16__** %9, align 8
  br label %70

87:                                               ; preds = %70
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 1
  store %struct.TYPE_15__* %92, %struct.TYPE_15__** %5, align 8
  br label %50

93:                                               ; preds = %50
  %94 = load %struct.taskqgroup*, %struct.taskqgroup** @qgroup_if_config_tqg, align 8
  store %struct.taskqgroup* %94, %struct.taskqgroup** %8, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  %101 = load %struct.taskqgroup*, %struct.taskqgroup** %8, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 3
  %104 = call i32 @taskqgroup_detach(%struct.taskqgroup* %101, %struct.TYPE_18__* %103)
  br label %105

105:                                              ; preds = %100, %93
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %105
  %112 = load %struct.taskqgroup*, %struct.taskqgroup** %8, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 2
  %115 = call i32 @taskqgroup_detach(%struct.taskqgroup* %112, %struct.TYPE_18__* %114)
  br label %116

116:                                              ; preds = %111, %105
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %118 = call i32 @iflib_tx_structures_free(%struct.TYPE_17__* %117)
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %120 = call i32 @iflib_rx_structures_free(%struct.TYPE_17__* %119)
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %122 = call i32 @iflib_deregister(%struct.TYPE_17__* %121)
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @IFC_SC_ALLOCATED, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %116
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %131, align 8
  %133 = load i32, i32* @M_IFLIB, align 4
  %134 = call i32 @free(%struct.TYPE_17__* %132, i32 %133)
  br label %135

135:                                              ; preds = %129, %116
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %137 = load i32, i32* @M_IFLIB, align 4
  %138 = call i32 @free(%struct.TYPE_17__* %136, i32 %137)
  ret i32 0
}

declare dso_local i32 @iflib_unregister_vlan_handlers(%struct.TYPE_17__*) #1

declare dso_local i32 @ether_ifdetach(i32) #1

declare dso_local i32 @NTXQSETS(%struct.TYPE_17__*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @taskqgroup_detach(%struct.taskqgroup*, %struct.TYPE_18__*) #1

declare dso_local i32 @NRXQSETS(%struct.TYPE_17__*) #1

declare dso_local i32 @free(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @iflib_tx_structures_free(%struct.TYPE_17__*) #1

declare dso_local i32 @iflib_rx_structures_free(%struct.TYPE_17__*) #1

declare dso_local i32 @iflib_deregister(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
