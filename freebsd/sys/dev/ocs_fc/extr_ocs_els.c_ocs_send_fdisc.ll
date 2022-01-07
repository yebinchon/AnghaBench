; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_els.c_ocs_send_fdisc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_els.c_ocs_send_fdisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i8*, %struct.TYPE_20__, i32, %struct.TYPE_17__, i8*, i32, i8*, i8* }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_17__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i64, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_18__*, %struct.TYPE_21__* }
%struct.TYPE_18__ = type { i32 }

@OCS_ELS_ROLE_ORIGINATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"IO alloc failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"fdisc\00", align 1
@FC_ELS_CMD_FDISC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"fdisc send req\00", align 1
@OCS_HW_ELS_REQ = common dso_local global i32 0, align 4
@__ocs_els_init = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_22__* @ocs_send_fdisc(%struct.TYPE_21__* %0, i8* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %15 = call i32 @ocs_assert(%struct.TYPE_21__* %14, i32* null)
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %19 = call i32 @ocs_assert(%struct.TYPE_21__* %18, i32* null)
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  store %struct.TYPE_21__* %22, %struct.TYPE_21__** %12, align 8
  %23 = call i32 (...) @node_els_trace()
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %25 = load i32, i32* @OCS_ELS_ROLE_ORIGINATOR, align 4
  %26 = call %struct.TYPE_22__* @ocs_els_io_alloc(%struct.TYPE_21__* %24, i32 24, i32 %25)
  store %struct.TYPE_22__* %26, %struct.TYPE_22__** %11, align 8
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %28 = icmp eq %struct.TYPE_22__* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %5
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %31 = call i32 @ocs_log_err(%struct.TYPE_21__* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %81

32:                                               ; preds = %5
  %33 = load i8*, i8** %7, align 8
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 7
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 6
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %46, align 8
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %49, align 8
  store %struct.TYPE_23__* %50, %struct.TYPE_23__** %13, align 8
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ocs_memcpy(%struct.TYPE_23__* %51, i32 %56, i32 24)
  %58 = load i32, i32* @FC_ELS_CMD_FDISC, align 4
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @ocs_display_sparams(i32 %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* null, i32 %68)
  %70 = load i32, i32* @OCS_HW_ELS_REQ, align 4
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  store i8* %73, i8** %77, align 8
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %79 = load i32, i32* @__ocs_els_init, align 4
  %80 = call i32 @ocs_io_transition(%struct.TYPE_22__* %78, i32 %79, i32* null)
  br label %81

81:                                               ; preds = %32, %29
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  ret %struct.TYPE_22__* %82
}

declare dso_local i32 @ocs_assert(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @node_els_trace(...) #1

declare dso_local %struct.TYPE_22__* @ocs_els_io_alloc(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @ocs_log_err(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @ocs_memcpy(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @ocs_display_sparams(i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @ocs_io_transition(%struct.TYPE_22__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
