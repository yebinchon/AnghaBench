; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_common_set_profile_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_common_set_profile_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i8*, i8*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@SLI4_PORT_TYPE_FC = common dso_local global i64 0, align 8
@SLI4_OPC_COMMON_SET_PROFILE_CONFIG = common dso_local global i32 0, align 4
@SLI4_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_cmd_common_set_profile_config(%struct.TYPE_11__* %0, i8* %1, i64 %2, %struct.TYPE_13__* %3, i8* %4, i32 %5, i8* %6) #0 {
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %15, align 8
  store i32 0, i32* %16, align 4
  %18 = load i64, i64* @SLI4_PORT_TYPE_FC, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %7
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %28 = call i32 @sli_cmd_sli_config(%struct.TYPE_11__* %24, i8* %25, i64 %26, i32 40, %struct.TYPE_13__* %27)
  store i32 %28, i32* %16, align 4
  br label %29

29:                                               ; preds = %23, %7
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %31 = icmp ne %struct.TYPE_13__* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %15, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ocs_memset(%struct.TYPE_12__* %36, i32 0, i32 %39)
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %17, align 4
  br label %51

44:                                               ; preds = %29
  %45 = load i8*, i8** %9, align 8
  %46 = bitcast i8* %45 to i8**
  %47 = load i32, i32* %16, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = bitcast i8** %49 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %50, %struct.TYPE_12__** %15, align 8
  store i32 40, i32* %17, align 4
  br label %51

51:                                               ; preds = %44, %32
  %52 = load i32, i32* @SLI4_OPC_COMMON_SET_PROFILE_CONFIG, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 3
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @SLI4_SUBSYSTEM_COMMON, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 8
  %60 = load i32, i32* %17, align 4
  %61 = sext i32 %60 to i64
  %62 = sub i64 %61, 4
  %63 = trunc i64 %62 to i32
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  %70 = load i8*, i8** %12, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 2
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* %13, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load i8*, i8** %14, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* %16, align 4
  %80 = sext i32 %79 to i64
  %81 = add i64 %80, 40
  %82 = trunc i64 %81 to i32
  ret i32 %82
}

declare dso_local i32 @sli_cmd_sli_config(%struct.TYPE_11__*, i8*, i64, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @ocs_memset(%struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
