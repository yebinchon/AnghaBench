; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_els.c_ocs_send_prli_acc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_els.c_ocs_send_prli_acc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8*, i32, %struct.TYPE_13__, %struct.TYPE_17__, i8*, i8*, i32, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i8*, i8*, i64, i32, i8*, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, i32* }
%struct.TYPE_14__ = type { i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"prli_acc\00", align 1
@FC_ELS_CMD_ACC = common dso_local global i32 0, align 4
@FC_PRLI_ESTABLISH_IMAGE_PAIR = common dso_local global i32 0, align 4
@FC_PRLI_REQUEST_EXECUTED = common dso_local global i32 0, align 4
@FC_PRLI_READ_XRDY_DISABLED = common dso_local global i32 0, align 4
@FC_PRLI_INITIATOR_FUNCTION = common dso_local global i32 0, align 4
@FC_PRLI_TARGET_FUNCTION = common dso_local global i32 0, align 4
@OCS_HW_ELS_RSP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @ocs_send_prli_acc(%struct.TYPE_16__* %0, i8* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 7
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %11, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %13, align 8
  %21 = call i32 (...) @node_els_trace()
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 5
  store i8* %25, i8** %27, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %29, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 4
  store i8* %30, i8** %32, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 3
  %35 = call i32 @ocs_memset(%struct.TYPE_17__* %34, i32 0, i32 64)
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 7
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  store i8* %36, i8** %40, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %43, align 8
  store %struct.TYPE_17__* %44, %struct.TYPE_17__** %14, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %46 = call i32 @ocs_memset(%struct.TYPE_17__* %45, i32 0, i32 64)
  %47 = load i32, i32* @FC_ELS_CMD_ACC, align 4
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  store i32 16, i32* %51, align 8
  %52 = call i8* @ocs_htobe16(i32 64)
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 5
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 3
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* @FC_PRLI_ESTABLISH_IMAGE_PAIR, align 4
  %61 = load i32, i32* @FC_PRLI_REQUEST_EXECUTED, align 4
  %62 = or i32 %60, %61
  %63 = call i8* @ocs_htobe16(i32 %62)
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* @FC_PRLI_READ_XRDY_DISABLED, align 4
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %5
  %74 = load i32, i32* @FC_PRLI_INITIATOR_FUNCTION, align 4
  br label %76

75:                                               ; preds = %5
  br label %76

76:                                               ; preds = %75, %73
  %77 = phi i32 [ %74, %73 ], [ 0, %75 ]
  %78 = or i32 %66, %77
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = load i32, i32* @FC_PRLI_TARGET_FUNCTION, align 4
  br label %88

87:                                               ; preds = %76
  br label %88

88:                                               ; preds = %87, %85
  %89 = phi i32 [ %86, %85 ], [ 0, %87 ]
  %90 = or i32 %78, %89
  %91 = call i8* @ocs_htobe16(i32 %90)
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* @OCS_HW_ELS_RSP, align 4
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %98 = call i32 @ocs_els_send_rsp(%struct.TYPE_16__* %97, i32 64)
  store i32 %98, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %88
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %102 = call i32 @ocs_els_io_free(%struct.TYPE_16__* %101)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %6, align 8
  br label %103

103:                                              ; preds = %100, %88
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  ret %struct.TYPE_16__* %104
}

declare dso_local i32 @node_els_trace(...) #1

declare dso_local i32 @ocs_memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i8* @ocs_htobe16(i32) #1

declare dso_local i32 @ocs_els_send_rsp(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ocs_els_io_free(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
