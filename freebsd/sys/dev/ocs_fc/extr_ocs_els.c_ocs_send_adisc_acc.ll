; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_els.c_ocs_send_adisc_acc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_els.c_ocs_send_adisc_acc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i8*, i32, %struct.TYPE_20__, %struct.TYPE_17__, i8*, i8*, i32, %struct.TYPE_23__* }
%struct.TYPE_20__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_23__ = type { %struct.TYPE_22__, %struct.TYPE_19__*, %struct.TYPE_23__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_25__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"adisc_acc\00", align 1
@FC_ELS_CMD_ACC = common dso_local global i32 0, align 4
@OCS_HW_ELS_RSP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_24__* @ocs_send_adisc_acc(%struct.TYPE_24__* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 7
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  store %struct.TYPE_23__* %16, %struct.TYPE_23__** %9, align 8
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %18 = call i32 @ocs_assert(%struct.TYPE_23__* %17, i32* null)
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %22 = call i32 @ocs_assert(%struct.TYPE_23__* %21, i32* null)
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  store %struct.TYPE_23__* %25, %struct.TYPE_23__** %13, align 8
  %26 = call i32 (...) @node_els_trace()
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 5
  store i8* %30, i8** %32, align 8
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %34, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 3
  %40 = call i32 @ocs_memset(%struct.TYPE_17__* %39, i32 0, i32 48)
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 7
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  store i8* %41, i8** %45, align 8
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %51, %struct.TYPE_25__** %12, align 8
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %54, align 8
  store %struct.TYPE_17__* %55, %struct.TYPE_17__** %11, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %57 = call i32 @ocs_memset(%struct.TYPE_17__* %56, i32 0, i32 48)
  %58 = load i32, i32* @FC_ELS_CMD_ACC, align 4
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 5
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @fc_htobe24(i32 %88)
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* @OCS_HW_ELS_RSP, align 4
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %96 = call i32 @ocs_els_send_rsp(%struct.TYPE_24__* %95, i32 48)
  store i32 %96, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %4
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %100 = call i32 @ocs_els_io_free(%struct.TYPE_24__* %99)
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %5, align 8
  br label %101

101:                                              ; preds = %98, %4
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  ret %struct.TYPE_24__* %102
}

declare dso_local i32 @ocs_assert(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @node_els_trace(...) #1

declare dso_local i32 @ocs_memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @fc_htobe24(i32) #1

declare dso_local i32 @ocs_els_send_rsp(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @ocs_els_io_free(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
