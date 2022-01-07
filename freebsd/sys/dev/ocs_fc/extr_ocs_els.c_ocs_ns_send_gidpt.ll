; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_els.c_ocs_ns_send_gidpt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_els.c_ocs_ns_send_gidpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i8*, i32, %struct.TYPE_15__, i8*, i32, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i64, i64, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i64, i32, i32 }
%struct.TYPE_16__ = type { i32* }

@OCS_ELS_GID_PT_RSP_LEN = common dso_local global i64 0, align 8
@OCS_ELS_ROLE_ORIGINATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"IO alloc failed\0A\00", align 1
@FC_RCTL_ELS = common dso_local global i32 0, align 4
@FC_TYPE_GS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"gidpt\00", align 1
@FC_GS_NAMESERVER_GID_PT = common dso_local global i32 0, align 4
@OCS_HW_FC_CT = common dso_local global i32 0, align 4
@__ocs_els_init = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @ocs_ns_send_gidpt(%struct.TYPE_16__* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %12, align 8
  %17 = call i32 (...) @node_els_trace()
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %19 = load i64, i64* @OCS_ELS_GID_PT_RSP_LEN, align 8
  %20 = load i32, i32* @OCS_ELS_ROLE_ORIGINATOR, align 4
  %21 = call %struct.TYPE_17__* @ocs_els_io_alloc_size(%struct.TYPE_16__* %18, i32 32, i64 %19, i32 %20)
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %11, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %23 = icmp eq %struct.TYPE_17__* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32*, i32** %12, align 8
  %26 = call i32 @ocs_log_err(i32* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %79

27:                                               ; preds = %5
  %28 = load i32, i32* @FC_RCTL_ELS, align 4
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 3
  store i32 %28, i32* %32, align 4
  %33 = load i32, i32* @FC_TYPE_GS, align 4
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 2
  store i32 %33, i32* %37, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %54, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %57, align 8
  store %struct.TYPE_18__* %58, %struct.TYPE_18__** %13, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %60 = call i32 @ocs_memset(%struct.TYPE_18__* %59, i32 0, i32 32)
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 3
  %63 = load i32, i32* @FC_GS_NAMESERVER_GID_PT, align 4
  %64 = load i64, i64* @OCS_ELS_GID_PT_RSP_LEN, align 8
  %65 = sub i64 %64, 4
  %66 = call i32 @fcct_build_req_header(i32* %62, i32 %63, i64 %65)
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 2
  store i64 0, i64* %68, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  store i32 127, i32* %72, align 8
  %73 = load i32, i32* @OCS_HW_FC_CT, align 4
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %77 = load i32, i32* @__ocs_els_init, align 4
  %78 = call i32 @ocs_io_transition(%struct.TYPE_17__* %76, i32 %77, i32* null)
  br label %79

79:                                               ; preds = %27, %24
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  ret %struct.TYPE_17__* %80
}

declare dso_local i32 @node_els_trace(...) #1

declare dso_local %struct.TYPE_17__* @ocs_els_io_alloc_size(%struct.TYPE_16__*, i32, i64, i32) #1

declare dso_local i32 @ocs_log_err(i32*, i8*) #1

declare dso_local i32 @ocs_memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @fcct_build_req_header(i32*, i32, i64) #1

declare dso_local i32 @ocs_io_transition(%struct.TYPE_17__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
