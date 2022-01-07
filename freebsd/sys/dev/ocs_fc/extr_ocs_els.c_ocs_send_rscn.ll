; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_els.c_ocs_send_rscn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_els.c_ocs_send_rscn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i8*, %struct.TYPE_14__, i32, %struct.TYPE_12__, i8*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32* }

@OCS_ELS_ROLE_ORIGINATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"IO alloc failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"rscn\00", align 1
@FC_ELS_CMD_RSCN = common dso_local global i32 0, align 4
@OCS_HW_ELS_REQ = common dso_local global i32 0, align 4
@__ocs_els_init = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @ocs_send_rscn(%struct.TYPE_15__* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_17__*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %16, align 8
  %22 = load i32, i32* %12, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = add i64 %25, 16
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %18, align 4
  %28 = call i32 (...) @node_els_trace()
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %30 = load i32, i32* %18, align 4
  %31 = load i32, i32* @OCS_ELS_ROLE_ORIGINATOR, align 4
  %32 = call %struct.TYPE_16__* @ocs_els_io_alloc(%struct.TYPE_15__* %29, i32 %30, i32 %31)
  store %struct.TYPE_16__* %32, %struct.TYPE_16__** %15, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %34 = icmp eq %struct.TYPE_16__* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %7
  %36 = load i32*, i32** %16, align 8
  %37 = call i32 @ocs_log_err(i32* %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %91

38:                                               ; preds = %7
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 6
  store i8* %48, i8** %50, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %52, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %55, align 8
  store %struct.TYPE_17__* %56, %struct.TYPE_17__** %17, align 8
  %57 = load i32, i32* @FC_ELS_CMD_RSCN, align 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  store i32 4, i32* %61, align 4
  %62 = load i32, i32* %12, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = mul i64 4, %64
  %66 = add i64 16, %65
  %67 = trunc i64 %66 to i32
  %68 = call i32 @ocs_htobe16(i32 %67)
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @OCS_HW_ELS_REQ, align 4
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i8*, i8** %11, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 4
  %86 = trunc i64 %85 to i32
  %87 = call i32 @ocs_memcpy(i32 %81, i8* %82, i32 %86)
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %89 = load i32, i32* @__ocs_els_init, align 4
  %90 = call i32 @ocs_io_transition(%struct.TYPE_16__* %88, i32 %89, i32* null)
  br label %91

91:                                               ; preds = %38, %35
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  ret %struct.TYPE_16__* %92
}

declare dso_local i32 @node_els_trace(...) #1

declare dso_local %struct.TYPE_16__* @ocs_els_io_alloc(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @ocs_log_err(i32*, i8*) #1

declare dso_local i32 @ocs_htobe16(i32) #1

declare dso_local i32 @ocs_memcpy(i32, i8*, i32) #1

declare dso_local i32 @ocs_io_transition(%struct.TYPE_16__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
