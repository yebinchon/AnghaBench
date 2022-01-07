; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_els.c_ocs_ns_send_rffid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_els.c_ocs_ns_send_rffid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i8*, i32, %struct.TYPE_18__, i8*, i32, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i64, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__*, %struct.TYPE_20__, i32* }
%struct.TYPE_21__ = type { i64, i64 }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }

@OCS_ELS_ROLE_ORIGINATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"IO alloc failed\0A\00", align 1
@FC_RCTL_ELS = common dso_local global i32 0, align 4
@FC_TYPE_GS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"rffid\00", align 1
@FC_GS_NAMESERVER_RFF_ID = common dso_local global i32 0, align 4
@OCS_ELS_RSP_LEN = common dso_local global i64 0, align 8
@FC4_FEATURE_INITIATOR = common dso_local global i32 0, align 4
@FC4_FEATURE_TARGET = common dso_local global i32 0, align 4
@FC_TYPE_FCP = common dso_local global i32 0, align 4
@OCS_HW_FC_CT = common dso_local global i32 0, align 4
@__ocs_els_init = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_23__* @ocs_ns_send_rffid(%struct.TYPE_22__* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %12, align 8
  %17 = call i32 (...) @node_els_trace()
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %19 = load i32, i32* @OCS_ELS_ROLE_ORIGINATOR, align 4
  %20 = call %struct.TYPE_23__* @ocs_els_io_alloc(%struct.TYPE_22__* %18, i32 16, i32 %19)
  store %struct.TYPE_23__* %20, %struct.TYPE_23__** %11, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %22 = icmp eq %struct.TYPE_23__* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32*, i32** %12, align 8
  %25 = call i32 @ocs_log_err(i32* %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %110

26:                                               ; preds = %5
  %27 = load i32, i32* @FC_RCTL_ELS, align 4
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 3
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* @FC_TYPE_GS, align 4
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 2
  store i32 %32, i32* %36, align 8
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 3
  store i8* %49, i8** %51, align 8
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %53, align 8
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %56, align 8
  store %struct.TYPE_24__* %57, %struct.TYPE_24__** %13, align 8
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %59 = call i32 @ocs_memset(%struct.TYPE_24__* %58, i32 0, i32 16)
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 3
  %62 = load i32, i32* @FC_GS_NAMESERVER_RFF_ID, align 4
  %63 = load i64, i64* @OCS_ELS_RSP_LEN, align 8
  %64 = sub i64 %63, 4
  %65 = call i32 @fcct_build_req_header(i32* %61, i32 %62, i64 %64)
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ocs_htobe32(i32 %71)
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %26
  %82 = load i32, i32* @FC4_FEATURE_INITIATOR, align 4
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %81, %26
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %87
  %95 = load i32, i32* @FC4_FEATURE_TARGET, align 4
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %94, %87
  %101 = load i32, i32* @FC_TYPE_FCP, align 4
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @OCS_HW_FC_CT, align 4
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %108 = load i32, i32* @__ocs_els_init, align 4
  %109 = call i32 @ocs_io_transition(%struct.TYPE_23__* %107, i32 %108, i32* null)
  br label %110

110:                                              ; preds = %100, %23
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  ret %struct.TYPE_23__* %111
}

declare dso_local i32 @node_els_trace(...) #1

declare dso_local %struct.TYPE_23__* @ocs_els_io_alloc(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @ocs_log_err(i32*, i8*) #1

declare dso_local i32 @ocs_memset(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @fcct_build_req_header(i32*, i32, i64) #1

declare dso_local i32 @ocs_htobe32(i32) #1

declare dso_local i32 @ocs_io_transition(%struct.TYPE_23__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
