; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_common_get_profile_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_common_get_profile_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@SLI4_PORT_TYPE_FC = common dso_local global i64 0, align 8
@SLI4_OPC_COMMON_GET_PROFILE_CONFIG = common dso_local global i32 0, align 4
@SLI4_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_cmd_common_get_profile_config(%struct.TYPE_11__* %0, i8* %1, i64 %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load i64, i64* @SLI4_PORT_TYPE_FC, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %22 = call i32 @sli_cmd_sli_config(%struct.TYPE_11__* %18, i8* %19, i64 %20, i32 16, %struct.TYPE_13__* %21)
  store i32 %22, i32* %10, align 4
  br label %23

23:                                               ; preds = %17, %4
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %25 = icmp ne %struct.TYPE_13__* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %9, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ocs_memset(%struct.TYPE_12__* %30, i32 0, i32 %33)
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %11, align 4
  br label %45

38:                                               ; preds = %23
  %39 = load i8*, i8** %6, align 8
  %40 = bitcast i8* %39 to i32*
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = bitcast i32* %43 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %44, %struct.TYPE_12__** %9, align 8
  store i32 16, i32* %11, align 4
  br label %45

45:                                               ; preds = %38, %26
  %46 = load i32, i32* @SLI4_OPC_COMMON_GET_PROFILE_CONFIG, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 3
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @SLI4_SUBSYSTEM_COMMON, align 4
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = sub i64 %55, 4
  %57 = trunc i64 %56 to i32
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = add i64 %65, 16
  %67 = trunc i64 %66 to i32
  ret i32 %67
}

declare dso_local i32 @sli_cmd_sli_config(%struct.TYPE_11__*, i8*, i64, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @ocs_memset(%struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
