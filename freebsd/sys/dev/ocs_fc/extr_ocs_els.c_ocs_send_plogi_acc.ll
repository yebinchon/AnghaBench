; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_els.c_ocs_send_plogi_acc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_els.c_ocs_send_plogi_acc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i8*, i32, %struct.TYPE_14__, %struct.TYPE_19__, i8*, i8*, i32, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32*, i64, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__*, i64, i32* }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"plog_acc\00", align 1
@FC_ELS_CMD_ACC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"plogi send resp\00", align 1
@OCS_HW_ELS_RSP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @ocs_send_plogi_acc(%struct.TYPE_17__* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 7
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %9, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %11, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %23, %struct.TYPE_18__** %13, align 8
  %24 = call i32 (...) @node_els_trace()
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 5
  store i8* %28, i8** %30, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %32, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 4
  store i8* %33, i8** %35, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 3
  %38 = call i32 @ocs_memset(%struct.TYPE_19__* %37, i32 0, i32 8)
  %39 = load i8*, i8** %6, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  store i8* %39, i8** %43, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %46, align 8
  store %struct.TYPE_18__* %47, %struct.TYPE_18__** %12, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ocs_memcpy(%struct.TYPE_18__* %48, i32 %53, i32 24)
  %55 = load i32, i32* @FC_ELS_CMD_ACC, align 4
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ocs_htobe32(i32 16777216)
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %4
  %69 = call i32 @ocs_htobe32(i32 16777216)
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %69
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %68, %4
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ocs_htobe32(i32 8388608)
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %76
  %86 = call i32 @ocs_htobe32(i32 8388608)
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %86
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %85, %76
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @ocs_display_sparams(i32 %96, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* null, i32* %99)
  %101 = load i32, i32* @OCS_HW_ELS_RSP, align 4
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %105 = call i32 @ocs_els_send_rsp(%struct.TYPE_17__* %104, i32 24)
  store i32 %105, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %93
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %109 = call i32 @ocs_els_io_free(%struct.TYPE_17__* %108)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %5, align 8
  br label %110

110:                                              ; preds = %107, %93
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  ret %struct.TYPE_17__* %111
}

declare dso_local i32 @node_els_trace(...) #1

declare dso_local i32 @ocs_memset(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @ocs_memcpy(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @ocs_htobe32(i32) #1

declare dso_local i32 @ocs_display_sparams(i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @ocs_els_send_rsp(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ocs_els_io_free(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
