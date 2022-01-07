; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cq_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cq_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_17__ = type { i64 }

@.str = private unnamed_addr constant [54 x i8] c"bad parameters sli4=%p cq=%p cqe=%p etype=%p q_id=%p\0A\00", align 1
@SLI_QENTRY_ASYNC = common dso_local global i32 0, align 4
@SLI_QENTRY_MQ = common dso_local global i32 0, align 4
@SLI4_PORT_TYPE_FC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"implement CQE parsing type = %#x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_cq_parse(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %15 = icmp ne %struct.TYPE_15__* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %5
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %18 = icmp ne %struct.TYPE_16__* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32*, i32** %9, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32*, i32** %10, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %22, %19, %16, %5
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = call i32 @ocs_log_err(i32* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), %struct.TYPE_15__* %26, %struct.TYPE_16__* %27, i32* %28, i32* %29, i32* %30)
  store i32 -1, i32* %6, align 4
  br label %81

32:                                               ; preds = %22
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %32
  %40 = load i32*, i32** %9, align 8
  %41 = bitcast i32* %40 to i8*
  %42 = bitcast i8* %41 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %42, %struct.TYPE_17__** %13, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @SLI_QENTRY_ASYNC, align 4
  %49 = load i32*, i32** %10, align 8
  store i32 %48, i32* %49, align 4
  br label %55

50:                                               ; preds = %39
  %51 = load i32, i32* @SLI_QENTRY_MQ, align 4
  %52 = load i32*, i32** %10, align 8
  store i32 %51, i32* %52, align 4
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %54 = call i32 @sli_cqe_mq(%struct.TYPE_17__* %53)
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %50, %47
  %56 = load i32*, i32** %11, align 8
  store i32 -1, i32* %56, align 4
  br label %79

57:                                               ; preds = %32
  %58 = load i64, i64* @SLI4_PORT_TYPE_FC, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @sli_fc_cqe_parse(%struct.TYPE_15__* %64, %struct.TYPE_16__* %65, i32* %66, i32* %67, i32* %68)
  store i32 %69, i32* %12, align 4
  br label %78

70:                                               ; preds = %57
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @ocs_log_test(i32 %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %76)
  store i32 -1, i32* %12, align 4
  br label %78

78:                                               ; preds = %70, %63
  br label %79

79:                                               ; preds = %78, %55
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %79, %25
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i32 @ocs_log_err(i32*, i8*, %struct.TYPE_15__*, %struct.TYPE_16__*, i32*, i32*, i32*) #1

declare dso_local i32 @sli_cqe_mq(%struct.TYPE_17__*) #1

declare dso_local i32 @sli_fc_cqe_parse(%struct.TYPE_15__*, %struct.TYPE_16__*, i32*, i32*, i32*) #1

declare dso_local i32 @ocs_log_test(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
