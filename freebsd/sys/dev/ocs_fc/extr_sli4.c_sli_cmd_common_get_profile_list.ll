; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_common_get_profile_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_common_get_profile_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64, i32, i32 }

@SLI4_PORT_TYPE_FC = common dso_local global i64 0, align 8
@SLI4_OPC_COMMON_GET_PROFILE_LIST = common dso_local global i32 0, align 4
@SLI4_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_cmd_common_get_profile_list(%struct.TYPE_11__* %0, i8* %1, i64 %2, i32 %3, %struct.TYPE_13__* %4) #0 {
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_13__* %4, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %11, align 8
  store i32 0, i32* %12, align 4
  %14 = load i64, i64* @SLI4_PORT_TYPE_FC, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %5
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %24 = call i32 @sli_cmd_sli_config(%struct.TYPE_11__* %20, i8* %21, i64 %22, i32 32, %struct.TYPE_13__* %23)
  store i32 %24, i32* %12, align 4
  br label %25

25:                                               ; preds = %19, %5
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %27 = icmp ne %struct.TYPE_13__* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  store %struct.TYPE_12__* %31, %struct.TYPE_12__** %11, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ocs_memset(%struct.TYPE_12__* %32, i32 0, i32 %35)
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %13, align 4
  br label %47

40:                                               ; preds = %25
  %41 = load i8*, i8** %7, align 8
  %42 = bitcast i8* %41 to i32*
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = bitcast i32* %45 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %46, %struct.TYPE_12__** %11, align 8
  store i32 32, i32* %13, align 4
  br label %47

47:                                               ; preds = %40, %28
  %48 = load i32, i32* @SLI4_OPC_COMMON_GET_PROFILE_LIST, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 3
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* @SLI4_SUBSYSTEM_COMMON, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = sub i64 %57, 4
  %59 = trunc i64 %58 to i32
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = add i64 %70, 32
  %72 = trunc i64 %71 to i32
  ret i32 %72
}

declare dso_local i32 @sli_cmd_sli_config(%struct.TYPE_11__*, i8*, i64, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @ocs_memset(%struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
