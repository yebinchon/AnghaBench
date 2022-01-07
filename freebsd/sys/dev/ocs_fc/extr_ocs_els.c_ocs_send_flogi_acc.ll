; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_els.c_ocs_send_flogi_acc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_els.c_ocs_send_flogi_acc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i8*, i32, %struct.TYPE_14__, %struct.TYPE_16__*, %struct.TYPE_19__, i8*, i8*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_19__*, %struct.TYPE_19__*, %struct.TYPE_19__*, %struct.TYPE_19__*, i32*, i64, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__*, i32* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i8* }

@.str = private unnamed_addr constant [10 x i8] c"flogi_acc\00", align 1
@FC_ELS_CMD_ACC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"flogi send resp\00", align 1
@OCS_HW_ELS_RSP_SID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @ocs_send_flogi_acc(%struct.TYPE_17__* %0, i8* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %11, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %13, align 8
  %21 = call i32 (...) @node_els_trace()
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 6
  store i8* %25, i8** %27, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %29, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 5
  store i8* %30, i8** %32, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 4
  %35 = call i32 @ocs_memset(%struct.TYPE_19__* %34, i32 0, i32 16)
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  store i8* %36, i8** %40, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %54, align 8
  store %struct.TYPE_18__* %55, %struct.TYPE_18__** %14, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ocs_memcpy(%struct.TYPE_18__* %56, i32 %61, i32 56)
  %63 = load i8*, i8** %8, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %5
  %66 = call i32 @ocs_be32toh(i32 805306368)
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %66
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %65, %5
  %74 = load i32, i32* @FC_ELS_CMD_ACC, align 4
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 6
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 5
  store i64 0, i64* %78, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 4
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @ocs_display_sparams(i32 %81, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* null, i32* %84)
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %87, align 8
  %89 = call i32 @ocs_memset(%struct.TYPE_19__* %88, i32 0, i32 8)
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %91, align 8
  %93 = call i32 @ocs_memset(%struct.TYPE_19__* %92, i32 0, i32 8)
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %95, align 8
  %97 = call i32 @ocs_memset(%struct.TYPE_19__* %96, i32 0, i32 8)
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %99, align 8
  %101 = call i32 @ocs_memset(%struct.TYPE_19__* %100, i32 0, i32 8)
  %102 = load i32, i32* @OCS_HW_ELS_RSP_SID, align 4
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %106 = call i32 @ocs_els_send_rsp(%struct.TYPE_17__* %105, i32 56)
  store i32 %106, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %73
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %110 = call i32 @ocs_els_io_free(%struct.TYPE_17__* %109)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %6, align 8
  br label %111

111:                                              ; preds = %108, %73
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  ret %struct.TYPE_17__* %112
}

declare dso_local i32 @node_els_trace(...) #1

declare dso_local i32 @ocs_memset(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @ocs_memcpy(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @ocs_be32toh(i32) #1

declare dso_local i32 @ocs_display_sparams(i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @ocs_els_send_rsp(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ocs_els_io_free(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
