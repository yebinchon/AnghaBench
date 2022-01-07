; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_els.c_ocs_send_logo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_els.c_ocs_send_logo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i8*, %struct.TYPE_23__, i32, %struct.TYPE_19__, i8*, i32, i8*, i8* }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i8* }
%struct.TYPE_19__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_21__, %struct.TYPE_18__*, i32* }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_26__ = type { i32, i32 }

@OCS_ELS_ROLE_ORIGINATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"IO alloc failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"logo\00", align 1
@FC_ELS_CMD_LOGO = common dso_local global i32 0, align 4
@OCS_HW_ELS_REQ = common dso_local global i32 0, align 4
@__ocs_els_init = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_25__* @ocs_send_logo(%struct.TYPE_24__* %0, i8* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %12, align 8
  %18 = call i32 (...) @node_els_trace()
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %24, %struct.TYPE_26__** %14, align 8
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %26 = load i32, i32* @OCS_ELS_ROLE_ORIGINATOR, align 4
  %27 = call %struct.TYPE_25__* @ocs_els_io_alloc(%struct.TYPE_24__* %25, i32 32, i32 %26)
  store %struct.TYPE_25__* %27, %struct.TYPE_25__** %11, align 8
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %29 = icmp eq %struct.TYPE_25__* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load i32*, i32** %12, align 8
  %32 = call i32 @ocs_log_err(i32* %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %89

33:                                               ; preds = %5
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 7
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 6
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %47, align 8
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %50, align 8
  store %struct.TYPE_17__* %51, %struct.TYPE_17__** %13, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %53 = call i32 @ocs_memset(%struct.TYPE_17__* %52, i32 0, i32 32)
  %54 = load i32, i32* @FC_ELS_CMD_LOGO, align 4
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 3
  store i64 0, i64* %58, align 8
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @fc_htobe24(i32 %64)
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @OCS_HW_ELS_REQ, align 4
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 0
  store i8* %81, i8** %85, align 8
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %87 = load i32, i32* @__ocs_els_init, align 4
  %88 = call i32 @ocs_io_transition(%struct.TYPE_25__* %86, i32 %87, i32* null)
  br label %89

89:                                               ; preds = %33, %30
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  ret %struct.TYPE_25__* %90
}

declare dso_local i32 @node_els_trace(...) #1

declare dso_local %struct.TYPE_25__* @ocs_els_io_alloc(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @ocs_log_err(i32*, i8*) #1

declare dso_local i32 @ocs_memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @fc_htobe24(i32) #1

declare dso_local i32 @ocs_io_transition(%struct.TYPE_25__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
