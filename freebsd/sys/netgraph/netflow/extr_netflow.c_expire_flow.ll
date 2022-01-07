; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/netflow/extr_netflow.c_expire_flow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/netflow/extr_netflow.c_expire_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32*, i32, i32* }
%struct.flow_entry = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.netflow_export_item = type { i32, i32*, i32* }

@IPVERSION = common dso_local global i64 0, align 8
@NG_QUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ng_netflow: Unknown IP proto: %d\00", align 1
@IP6VERSION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32, %struct.flow_entry*, i32)* @expire_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expire_flow(%struct.TYPE_12__* %0, i32 %1, %struct.flow_entry* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.flow_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.netflow_export_item, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.flow_entry* %2, %struct.flow_entry** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.flow_entry*, %struct.flow_entry** %7, align 8
  %12 = getelementptr inbounds %struct.flow_entry, %struct.flow_entry* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %10, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 5
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %73

19:                                               ; preds = %4
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* @IPVERSION, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %73

23:                                               ; preds = %19
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32* @get_export_dgram(%struct.TYPE_12__* %24, i32 %25)
  %27 = getelementptr inbounds %struct.netflow_export_item, %struct.netflow_export_item* %9, i32 0, i32 2
  store i32* %26, i32** %27, align 8
  %28 = getelementptr inbounds %struct.netflow_export_item, %struct.netflow_export_item* %9, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %52

31:                                               ; preds = %23
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %40, %31
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.flow_entry*, %struct.flow_entry** %7, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %51 = call i32 @uma_zfree_arg(i32 %48, %struct.flow_entry* %49, %struct.TYPE_12__* %50)
  br label %144

52:                                               ; preds = %23
  %53 = getelementptr inbounds %struct.netflow_export_item, %struct.netflow_export_item* %9, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.flow_entry*, %struct.flow_entry** %7, align 8
  %56 = call i64 @export_add(i32* %54, %struct.flow_entry* %55)
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = getelementptr inbounds %struct.netflow_export_item, %struct.netflow_export_item* %9, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @export_send(%struct.TYPE_12__* %59, i32 %60, i32* %62, i32 %63)
  br label %72

65:                                               ; preds = %52
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = getelementptr inbounds %struct.netflow_export_item, %struct.netflow_export_item* %9, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* @NG_QUEUE, align 4
  %71 = call i32 @return_export_dgram(%struct.TYPE_12__* %66, i32 %67, i32* %69, i32 %70)
  br label %72

72:                                               ; preds = %65, %58
  br label %73

73:                                               ; preds = %72, %19, %4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %133

78:                                               ; preds = %73
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = getelementptr inbounds %struct.netflow_export_item, %struct.netflow_export_item* %9, i32 0, i32 0
  %82 = call i32* @get_export9_dgram(%struct.TYPE_12__* %79, i32 %80, i32* %81)
  %83 = getelementptr inbounds %struct.netflow_export_item, %struct.netflow_export_item* %9, i32 0, i32 1
  store i32* %82, i32** %83, align 8
  %84 = getelementptr inbounds %struct.netflow_export_item, %struct.netflow_export_item* %9, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %106

87:                                               ; preds = %78
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* @IPVERSION, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %87
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.flow_entry*, %struct.flow_entry** %7, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %101 = call i32 @uma_zfree_arg(i32 %98, %struct.flow_entry* %99, %struct.TYPE_12__* %100)
  br label %105

102:                                              ; preds = %87
  %103 = load i64, i64* %10, align 8
  %104 = call i32 @panic(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %103)
  br label %105

105:                                              ; preds = %102, %95
  br label %144

106:                                              ; preds = %78
  %107 = getelementptr inbounds %struct.netflow_export_item, %struct.netflow_export_item* %9, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds %struct.netflow_export_item, %struct.netflow_export_item* %9, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.flow_entry*, %struct.flow_entry** %7, align 8
  %112 = call i64 @export9_add(i32* %108, i32 %110, %struct.flow_entry* %111)
  %113 = icmp sgt i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %106
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %116 = load i32, i32* %6, align 4
  %117 = getelementptr inbounds %struct.netflow_export_item, %struct.netflow_export_item* %9, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds %struct.netflow_export_item, %struct.netflow_export_item* %9, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @export9_send(%struct.TYPE_12__* %115, i32 %116, i32* %118, i32 %120, i32 %121)
  br label %132

123:                                              ; preds = %106
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %125 = load i32, i32* %6, align 4
  %126 = getelementptr inbounds %struct.netflow_export_item, %struct.netflow_export_item* %9, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds %struct.netflow_export_item, %struct.netflow_export_item* %9, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @NG_QUEUE, align 4
  %131 = call i32 @return_export9_dgram(%struct.TYPE_12__* %124, i32 %125, i32* %127, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %123, %114
  br label %133

133:                                              ; preds = %132, %73
  %134 = load i64, i64* %10, align 8
  %135 = load i64, i64* @IPVERSION, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %133
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.flow_entry*, %struct.flow_entry** %7, align 8
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %143 = call i32 @uma_zfree_arg(i32 %140, %struct.flow_entry* %141, %struct.TYPE_12__* %142)
  br label %144

144:                                              ; preds = %45, %105, %137, %133
  ret void
}

declare dso_local i32* @get_export_dgram(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @uma_zfree_arg(i32, %struct.flow_entry*, %struct.TYPE_12__*) #1

declare dso_local i64 @export_add(i32*, %struct.flow_entry*) #1

declare dso_local i32 @export_send(%struct.TYPE_12__*, i32, i32*, i32) #1

declare dso_local i32 @return_export_dgram(%struct.TYPE_12__*, i32, i32*, i32) #1

declare dso_local i32* @get_export9_dgram(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @panic(i8*, i64) #1

declare dso_local i64 @export9_add(i32*, i32, %struct.flow_entry*) #1

declare dso_local i32 @export9_send(%struct.TYPE_12__*, i32, i32*, i32, i32) #1

declare dso_local i32 @return_export9_dgram(%struct.TYPE_12__*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
