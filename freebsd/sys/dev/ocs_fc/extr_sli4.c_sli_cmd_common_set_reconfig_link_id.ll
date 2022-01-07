; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_common_set_reconfig_link_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_common_set_reconfig_link_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64, i32, i32 }

@SLI4_PORT_TYPE_FC = common dso_local global i64 0, align 8
@SLI4_OPC_COMMON_SET_RECONFIG_LINK_ID = common dso_local global i32 0, align 4
@SLI4_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_cmd_common_set_reconfig_link_id(%struct.TYPE_10__* %0, i8* %1, i64 %2, %struct.TYPE_12__* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %13, align 8
  store i32 0, i32* %14, align 4
  %16 = call i32 @max(i32 32, i32 4)
  store i32 %16, i32* %15, align 4
  %17 = load i64, i64* @SLI4_PORT_TYPE_FC, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %6
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i32, i32* %15, align 4
  %27 = call i32 @sli_cmd_sli_config(%struct.TYPE_10__* %23, i8* %24, i64 %25, i32 %26, i32* null)
  store i32 %27, i32* %14, align 4
  br label %28

28:                                               ; preds = %22, %6
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %30 = icmp ne %struct.TYPE_12__* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  store %struct.TYPE_11__* %34, %struct.TYPE_11__** %13, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ocs_memset(%struct.TYPE_11__* %35, i32 0, i32 %38)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %15, align 4
  br label %50

43:                                               ; preds = %28
  %44 = load i8*, i8** %8, align 8
  %45 = bitcast i8* %44 to i32*
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = bitcast i32* %48 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %49, %struct.TYPE_11__** %13, align 8
  store i32 32, i32* %15, align 4
  br label %50

50:                                               ; preds = %43, %31
  %51 = load i32, i32* @SLI4_OPC_COMMON_SET_RECONFIG_LINK_ID, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 3
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @SLI4_SUBSYSTEM_COMMON, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 8
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = sub i64 %60, 4
  %62 = trunc i64 %61 to i32
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = add i64 %76, 32
  %78 = trunc i64 %77 to i32
  ret i32 %78
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @sli_cmd_sli_config(%struct.TYPE_10__*, i8*, i64, i32, i32*) #1

declare dso_local i32 @ocs_memset(%struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
