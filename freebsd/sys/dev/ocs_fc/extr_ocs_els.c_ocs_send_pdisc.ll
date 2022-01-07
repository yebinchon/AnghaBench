; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_els.c_ocs_send_pdisc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_els.c_ocs_send_pdisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i8*, %struct.TYPE_17__, i32, %struct.TYPE_14__, i8*, i32, i8*, i8* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_14__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__*, i32* }
%struct.TYPE_15__ = type { i32 }

@OCS_ELS_ROLE_ORIGINATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"IO alloc failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"pdisc\00", align 1
@FC_ELS_CMD_PDISC = common dso_local global i32 0, align 4
@OCS_HW_ELS_REQ = common dso_local global i32 0, align 4
@__ocs_els_init = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_19__* @ocs_send_pdisc(%struct.TYPE_18__* %0, i8* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %12, align 8
  %17 = call i32 (...) @node_els_trace()
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %19 = load i32, i32* @OCS_ELS_ROLE_ORIGINATOR, align 4
  %20 = call %struct.TYPE_19__* @ocs_els_io_alloc(%struct.TYPE_18__* %18, i32 16, i32 %19)
  store %struct.TYPE_19__* %20, %struct.TYPE_19__** %11, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %22 = icmp eq %struct.TYPE_19__* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32*, i32** %12, align 8
  %25 = call i32 @ocs_log_err(i32* %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %68

26:                                               ; preds = %5
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 7
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 6
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 4
  store i8* %36, i8** %38, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %40, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %43, align 8
  store %struct.TYPE_20__* %44, %struct.TYPE_20__** %13, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ocs_memcpy(%struct.TYPE_20__* %45, i32 %50, i32 16)
  %52 = load i32, i32* @FC_ELS_CMD_PDISC, align 4
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* @OCS_HW_ELS_REQ, align 4
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  store i8* %60, i8** %64, align 8
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %66 = load i32, i32* @__ocs_els_init, align 4
  %67 = call i32 @ocs_io_transition(%struct.TYPE_19__* %65, i32 %66, i32* null)
  br label %68

68:                                               ; preds = %26, %23
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  ret %struct.TYPE_19__* %69
}

declare dso_local i32 @node_els_trace(...) #1

declare dso_local %struct.TYPE_19__* @ocs_els_io_alloc(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @ocs_log_err(i32*, i8*) #1

declare dso_local i32 @ocs_memcpy(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @ocs_io_transition(%struct.TYPE_19__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
