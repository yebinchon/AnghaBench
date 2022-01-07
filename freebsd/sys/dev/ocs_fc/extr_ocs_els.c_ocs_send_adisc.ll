; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_els.c_ocs_send_adisc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_els.c_ocs_send_adisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i8*, %struct.TYPE_22__, i32, %struct.TYPE_18__, i8*, i32, i8*, i8* }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i8* }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i8*, i32, i32, i32, i32, i8*, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_20__, %struct.TYPE_23__*, i32* }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_23__ = type { i32, i64 }
%struct.TYPE_26__ = type { i32, i32, i32, i32 }

@OCS_ELS_ROLE_ORIGINATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"IO alloc failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"adisc\00", align 1
@FC_ELS_CMD_ADISC = common dso_local global i32 0, align 4
@OCS_HW_ELS_REQ = common dso_local global i32 0, align 4
@__ocs_els_init = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_25__* @ocs_send_adisc(%struct.TYPE_24__* %0, i8* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca %struct.TYPE_26__*, align 8
  %15 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  store %struct.TYPE_23__* %18, %struct.TYPE_23__** %15, align 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %12, align 8
  %22 = call i32 (...) @node_els_trace()
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %28, %struct.TYPE_26__** %14, align 8
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %30 = load i32, i32* @OCS_ELS_ROLE_ORIGINATOR, align 4
  %31 = call %struct.TYPE_25__* @ocs_els_io_alloc(%struct.TYPE_24__* %29, i32 40, i32 %30)
  store %struct.TYPE_25__* %31, %struct.TYPE_25__** %11, align 8
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %33 = icmp eq %struct.TYPE_25__* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %5
  %35 = load i32*, i32** %12, align 8
  %36 = call i32 @ocs_log_err(i32* %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %113

37:                                               ; preds = %5
  %38 = load i8*, i8** %7, align 8
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 7
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 6
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 4
  store i8* %47, i8** %49, align 8
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %51, align 8
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %54, align 8
  store %struct.TYPE_17__* %55, %struct.TYPE_17__** %13, align 8
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %61, %struct.TYPE_26__** %14, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %63 = call i32 @ocs_memset(%struct.TYPE_17__* %62, i32 0, i32 40)
  %64 = load i32, i32* @FC_ELS_CMD_ADISC, align 4
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i8* @fc_htobe24(i32 %69)
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 5
  store i8* %70, i8** %72, align 8
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @fc_htobe24(i32 %98)
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  %102 = load i32, i32* @OCS_HW_ELS_REQ, align 4
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 0
  store i8* %105, i8** %109, align 8
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %111 = load i32, i32* @__ocs_els_init, align 4
  %112 = call i32 @ocs_io_transition(%struct.TYPE_25__* %110, i32 %111, i32* null)
  br label %113

113:                                              ; preds = %37, %34
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  ret %struct.TYPE_25__* %114
}

declare dso_local i32 @node_els_trace(...) #1

declare dso_local %struct.TYPE_25__* @ocs_els_io_alloc(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @ocs_log_err(i32*, i8*) #1

declare dso_local i32 @ocs_memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i8* @fc_htobe24(i32) #1

declare dso_local i32 @ocs_io_transition(%struct.TYPE_25__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
