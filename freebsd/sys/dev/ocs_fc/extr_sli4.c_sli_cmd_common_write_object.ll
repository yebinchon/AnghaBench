; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_common_write_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_common_write_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i64, i32, i8*, i8*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64, i64, i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }

@SLI4_PORT_TYPE_FC = common dso_local global i64 0, align 8
@SLI4_OPC_COMMON_WRITE_OBJECT = common dso_local global i32 0, align 4
@SLI4_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@SLI4_BDE_TYPE_BDE_64 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_cmd_common_write_object(%struct.TYPE_14__* %0, i8* %1, i64 %2, i8* %3, i8* %4, i32 %5, i32 %6, i8* %7, %struct.TYPE_17__* %8) #0 {
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_17__*, align 8
  %19 = alloca %struct.TYPE_15__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  store %struct.TYPE_17__* %8, %struct.TYPE_17__** %18, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %19, align 8
  store i32 0, i32* %20, align 4
  %22 = load i64, i64* @SLI4_PORT_TYPE_FC, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %9
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = load i64, i64* %12, align 8
  %31 = call i32 @sli_cmd_sli_config(%struct.TYPE_14__* %28, i8* %29, i64 %30, i32 96, i32* null)
  store i32 %31, i32* %20, align 4
  br label %32

32:                                               ; preds = %27, %9
  %33 = load i8*, i8** %11, align 8
  %34 = bitcast i8* %33 to i32*
  %35 = load i32, i32* %20, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = bitcast i32* %37 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %38, %struct.TYPE_15__** %19, align 8
  %39 = load i32, i32* @SLI4_OPC_COMMON_WRITE_OBJECT, align 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 7
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 4
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @SLI4_SUBSYSTEM_COMMON, align 4
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 7
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 3
  store i32 %43, i32* %46, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 7
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  store i32 80, i32* %49, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 7
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 7
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 6
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 5
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* %15, align 4
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %16, align 4
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load i8*, i8** %17, align 8
  %72 = call i32 @ocs_strncpy(i32 %70, i8* %71, i32 4)
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 2
  store i32 1, i32* %74, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %78, %struct.TYPE_16__** %21, align 8
  %79 = load i32, i32* @SLI4_BDE_TYPE_BDE_64, align 4
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %15, align 4
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ocs_addr32_lo(i32 %87)
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  store i32 %88, i32* %92, align 4
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ocs_addr32_hi(i32 %95)
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  store i32 %96, i32* %100, align 4
  %101 = load i32, i32* %20, align 4
  %102 = sext i32 %101 to i64
  %103 = add i64 %102, 80
  %104 = add i64 %103, 16
  %105 = trunc i64 %104 to i32
  ret i32 %105
}

declare dso_local i32 @sli_cmd_sli_config(%struct.TYPE_14__*, i8*, i64, i32, i32*) #1

declare dso_local i32 @ocs_strncpy(i32, i8*, i32) #1

declare dso_local i32 @ocs_addr32_lo(i32) #1

declare dso_local i32 @ocs_addr32_hi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
