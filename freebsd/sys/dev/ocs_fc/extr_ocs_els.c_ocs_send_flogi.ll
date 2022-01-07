; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_els.c_ocs_send_flogi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_els.c_ocs_send_flogi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i8*, %struct.TYPE_18__, i32, %struct.TYPE_16__, i8*, i32, i8*, i8* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_16__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32*, i64, i32 }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_19__*, %struct.TYPE_19__* }

@OCS_ELS_ROLE_ORIGINATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"IO alloc failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"flogi\00", align 1
@FC_ELS_CMD_FLOGI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"flogi send req\00", align 1
@OCS_HW_ELS_REQ = common dso_local global i32 0, align 4
@__ocs_els_init = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @ocs_send_flogi(%struct.TYPE_19__* %0, i8* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %15 = call i32 @ocs_assert(%struct.TYPE_19__* %14, i32* null)
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %19 = call i32 @ocs_assert(%struct.TYPE_19__* %18, i32* null)
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %23 = call i32 @ocs_assert(%struct.TYPE_19__* %22, i32* null)
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %25, align 8
  store %struct.TYPE_19__* %26, %struct.TYPE_19__** %12, align 8
  %27 = call i32 (...) @node_els_trace()
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %29 = load i32, i32* @OCS_ELS_ROLE_ORIGINATOR, align 4
  %30 = call %struct.TYPE_20__* @ocs_els_io_alloc(%struct.TYPE_19__* %28, i32 24, i32 %29)
  store %struct.TYPE_20__* %30, %struct.TYPE_20__** %11, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %32 = icmp eq %struct.TYPE_20__* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %5
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %35 = call i32 @ocs_log_err(%struct.TYPE_19__* %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %92

36:                                               ; preds = %5
  %37 = load i8*, i8** %7, align 8
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 7
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 6
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 4
  store i8* %46, i8** %48, align 8
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %50, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %53, align 8
  store %struct.TYPE_21__* %54, %struct.TYPE_21__** %13, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ocs_memcpy(%struct.TYPE_21__* %55, i32 %60, i32 24)
  %62 = load i32, i32* @FC_ELS_CMD_FLOGI, align 4
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = call i32 @ocs_htobe32(i32 8388608)
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %67
  store i32 %73, i32* %71, align 4
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @ocs_display_sparams(i32 %76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* null, i32* %79)
  %81 = load i32, i32* @OCS_HW_ELS_REQ, align 4
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  store i8* %84, i8** %88, align 8
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %90 = load i32, i32* @__ocs_els_init, align 4
  %91 = call i32 @ocs_io_transition(%struct.TYPE_20__* %89, i32 %90, i32* null)
  br label %92

92:                                               ; preds = %36, %33
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  ret %struct.TYPE_20__* %93
}

declare dso_local i32 @ocs_assert(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @node_els_trace(...) #1

declare dso_local %struct.TYPE_20__* @ocs_els_io_alloc(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @ocs_log_err(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @ocs_memcpy(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @ocs_htobe32(i32) #1

declare dso_local i32 @ocs_display_sparams(i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @ocs_io_transition(%struct.TYPE_20__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
