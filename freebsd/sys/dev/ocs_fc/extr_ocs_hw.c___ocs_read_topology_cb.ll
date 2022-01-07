; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c___ocs_read_topology_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c___ocs_read_topology_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, i32*, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_11__, i32, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"bad status cqe=%#x mqe=%#x\0A\00", align 1
@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@SLI_LINK_STATUS_UP = common dso_local global i32 0, align 4
@SLI_LINK_STATUS_DOWN = common dso_local global i32 0, align 4
@SLI_LINK_STATUS_NO_ALPA = common dso_local global i32 0, align 4
@SLI_LINK_STATUS_MAX = common dso_local global i32 0, align 4
@SLI_LINK_TOPO_NPORT = common dso_local global i32 0, align 4
@SLI_LINK_TOPO_LOOP = common dso_local global i32 0, align 4
@SLI_LINK_TOPO_MAX = common dso_local global i32 0, align 4
@SLI_LINK_MEDIUM_FC = common dso_local global i32 0, align 4
@SLI4_FCOE_FCF_TABLE_FIRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32, i32*, i8*)* @__ocs_read_topology_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ocs_read_topology_cb(%struct.TYPE_14__* %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %15, %4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @ocs_log_debug(i32 %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %25, i64 %29)
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %36 = call i32 @ocs_free(i32 %33, i32* %34, i32 %35)
  store i32 -1, i32* %5, align 4
  br label %150

37:                                               ; preds = %15
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %56 [
    i32 135, label %41
    i32 137, label %46
    i32 136, label %51
  ]

41:                                               ; preds = %37
  %42 = load i32, i32* @SLI_LINK_STATUS_UP, align 4
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 5
  store i32 %42, i32* %45, align 4
  br label %61

46:                                               ; preds = %37
  %47 = load i32, i32* @SLI_LINK_STATUS_DOWN, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 5
  store i32 %47, i32* %50, align 4
  br label %61

51:                                               ; preds = %37
  %52 = load i32, i32* @SLI_LINK_STATUS_NO_ALPA, align 4
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 5
  store i32 %52, i32* %55, align 4
  br label %61

56:                                               ; preds = %37
  %57 = load i32, i32* @SLI_LINK_STATUS_MAX, align 4
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 5
  store i32 %57, i32* %60, align 4
  br label %61

61:                                               ; preds = %56, %51, %46, %41
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %96 [
    i32 134, label %65
    i32 138, label %70
  ]

65:                                               ; preds = %61
  %66 = load i32, i32* @SLI_LINK_TOPO_NPORT, align 4
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 3
  store i32 %66, i32* %69, align 4
  br label %101

70:                                               ; preds = %61
  %71 = load i32, i32* @SLI_LINK_TOPO_LOOP, align 4
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 3
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* @SLI_LINK_STATUS_UP, align 4
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %75, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %70
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  store i32* %85, i32** %88, align 8
  br label %89

89:                                               ; preds = %81, %70
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 4
  store i32 %92, i32* %95, align 8
  br label %101

96:                                               ; preds = %61
  %97 = load i32, i32* @SLI_LINK_TOPO_MAX, align 4
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 3
  store i32 %97, i32* %100, align 4
  br label %101

101:                                              ; preds = %96, %89, %65
  %102 = load i32, i32* @SLI_LINK_MEDIUM_FC, align 4
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 2
  store i32 %102, i32* %105, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  switch i32 %109, label %140 [
    i32 132, label %110
    i32 131, label %114
    i32 129, label %118
    i32 128, label %122
    i32 133, label %126
    i32 130, label %133
  ]

110:                                              ; preds = %101
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  store i32 1000, i32* %113, align 8
  br label %140

114:                                              ; preds = %101
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  store i32 2000, i32* %117, align 8
  br label %140

118:                                              ; preds = %101
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  store i32 4000, i32* %121, align 8
  br label %140

122:                                              ; preds = %101
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  store i32 8000, i32* %125, align 8
  br label %140

126:                                              ; preds = %101
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  store i32 16000, i32* %129, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 1
  store i32* null, i32** %132, align 8
  br label %140

133:                                              ; preds = %101
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  store i32 32000, i32* %136, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 1
  store i32* null, i32** %139, align 8
  br label %140

140:                                              ; preds = %101, %133, %126, %122, %118, %114, %110
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32*, i32** %8, align 8
  %145 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %146 = call i32 @ocs_free(i32 %143, i32* %144, i32 %145)
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %148 = load i32, i32* @SLI4_FCOE_FCF_TABLE_FIRST, align 4
  %149 = call i32 @ocs_hw_read_fcf(%struct.TYPE_14__* %147, i32 %148)
  store i32 0, i32* %5, align 4
  br label %150

150:                                              ; preds = %140, %21
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local i32 @ocs_log_debug(i32, i8*, i32, i64) #1

declare dso_local i32 @ocs_free(i32, i32*, i32) #1

declare dso_local i32 @ocs_hw_read_fcf(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
