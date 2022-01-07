; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_common_read_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_common_read_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i64, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64, i64, i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64 }

@SLI4_PORT_TYPE_FC = common dso_local global i64 0, align 8
@SLI4_OPC_COMMON_READ_OBJECT = common dso_local global i32 0, align 4
@SLI4_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@SLI4_BDE_TYPE_BDE_64 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_cmd_common_read_object(%struct.TYPE_14__* %0, i8* %1, i64 %2, i32 %3, i32 %4, i8* %5, %struct.TYPE_17__* %6) #0 {
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store %struct.TYPE_17__* %6, %struct.TYPE_17__** %14, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %15, align 8
  store i32 0, i32* %16, align 4
  %18 = load i64, i64* @SLI4_PORT_TYPE_FC, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %7
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = call i32 @sli_cmd_sli_config(%struct.TYPE_14__* %24, i8* %25, i64 %26, i32 96, i32* null)
  store i32 %27, i32* %16, align 4
  br label %28

28:                                               ; preds = %23, %7
  %29 = load i8*, i8** %9, align 8
  %30 = bitcast i8* %29 to i32*
  %31 = load i32, i32* %16, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = bitcast i32* %33 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %15, align 8
  %35 = load i32, i32* @SLI4_OPC_COMMON_READ_OBJECT, align 4
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 4
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @SLI4_SUBSYSTEM_COMMON, align 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 3
  store i32 %39, i32* %42, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  store i32 80, i32* %45, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = call i32 @ocs_strncpy(i32 %60, i8* %61, i32 4)
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 2
  store i32 1, i32* %64, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %68, %struct.TYPE_16__** %17, align 8
  %69 = load i32, i32* @SLI4_BDE_TYPE_BDE_64, align 4
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %76 = icmp ne %struct.TYPE_17__* %75, null
  br i1 %76, label %77, label %94

77:                                               ; preds = %28
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @ocs_addr32_lo(i32 %80)
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  store i64 %81, i64* %85, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @ocs_addr32_hi(i32 %88)
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  store i64 %89, i64* %93, align 8
  br label %103

94:                                               ; preds = %28
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  store i64 0, i64* %98, align 8
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  store i64 0, i64* %102, align 8
  br label %103

103:                                              ; preds = %94, %77
  %104 = load i32, i32* %16, align 4
  %105 = sext i32 %104 to i64
  %106 = add i64 %105, 64
  %107 = add i64 %106, 32
  %108 = trunc i64 %107 to i32
  ret i32 %108
}

declare dso_local i32 @sli_cmd_sli_config(%struct.TYPE_14__*, i8*, i64, i32, i32*) #1

declare dso_local i32 @ocs_strncpy(i32, i8*, i32) #1

declare dso_local i64 @ocs_addr32_lo(i32) #1

declare dso_local i64 @ocs_addr32_hi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
