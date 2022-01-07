; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_els.c_ocs_ns_send_rftid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_els.c_ocs_ns_send_rftid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i8*, i32, %struct.TYPE_17__, i8*, i32, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i8**, i8*, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i64, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__, i32* }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }

@OCS_ELS_ROLE_ORIGINATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"IO alloc failed\0A\00", align 1
@FC_RCTL_ELS = common dso_local global i32 0, align 4
@FC_TYPE_GS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"rftid\00", align 1
@FC_GS_NAMESERVER_RFT_ID = common dso_local global i32 0, align 4
@OCS_ELS_RSP_LEN = common dso_local global i64 0, align 8
@FC_TYPE_FCP = common dso_local global i32 0, align 4
@OCS_HW_FC_CT = common dso_local global i32 0, align 4
@__ocs_els_init = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_21__* @ocs_ns_send_rftid(%struct.TYPE_20__* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %12, align 8
  %17 = call i32 (...) @node_els_trace()
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %19 = load i32, i32* @OCS_ELS_ROLE_ORIGINATOR, align 4
  %20 = call %struct.TYPE_21__* @ocs_els_io_alloc(%struct.TYPE_20__* %18, i32 24, i32 %19)
  store %struct.TYPE_21__* %20, %struct.TYPE_21__** %11, align 8
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %22 = icmp eq %struct.TYPE_21__* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32*, i32** %12, align 8
  %25 = call i32 @ocs_log_err(i32* %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %91

26:                                               ; preds = %5
  %27 = load i32, i32* @FC_RCTL_ELS, align 4
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 3
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* @FC_TYPE_GS, align 4
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 2
  store i32 %32, i32* %36, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 3
  store i8* %49, i8** %51, align 8
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %53, align 8
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %56, align 8
  store %struct.TYPE_22__* %57, %struct.TYPE_22__** %13, align 8
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %59 = call i32 @ocs_memset(%struct.TYPE_22__* %58, i32 0, i32 24)
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 2
  %62 = load i32, i32* @FC_GS_NAMESERVER_RFT_ID, align 4
  %63 = load i64, i64* @OCS_ELS_RSP_LEN, align 8
  %64 = sub i64 %63, 4
  %65 = call i32 @fcct_build_req_header(i32* %61, i32 %62, i64 %64)
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @ocs_htobe32(i32 %71)
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* @FC_TYPE_FCP, align 4
  %76 = call i32 @FC_GS_TYPE_BIT(i32 %75)
  %77 = shl i32 1, %76
  %78 = call i8* @ocs_htobe32(i32 %77)
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 0
  %81 = load i8**, i8*** %80, align 8
  %82 = load i32, i32* @FC_TYPE_FCP, align 4
  %83 = call i64 @FC_GS_TYPE_WORD(i32 %82)
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  store i8* %78, i8** %84, align 8
  %85 = load i32, i32* @OCS_HW_FC_CT, align 4
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %89 = load i32, i32* @__ocs_els_init, align 4
  %90 = call i32 @ocs_io_transition(%struct.TYPE_21__* %88, i32 %89, i32* null)
  br label %91

91:                                               ; preds = %26, %23
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  ret %struct.TYPE_21__* %92
}

declare dso_local i32 @node_els_trace(...) #1

declare dso_local %struct.TYPE_21__* @ocs_els_io_alloc(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @ocs_log_err(i32*, i8*) #1

declare dso_local i32 @ocs_memset(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @fcct_build_req_header(i32*, i32, i64) #1

declare dso_local i8* @ocs_htobe32(i32) #1

declare dso_local i32 @FC_GS_TYPE_BIT(i32) #1

declare dso_local i64 @FC_GS_TYPE_WORD(i32) #1

declare dso_local i32 @ocs_io_transition(%struct.TYPE_21__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
