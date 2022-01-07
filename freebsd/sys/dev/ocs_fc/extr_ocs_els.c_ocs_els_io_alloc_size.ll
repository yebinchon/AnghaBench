; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_els.c_ocs_els_io_alloc_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_els.c_ocs_els_io_alloc_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i8*, i32, i64, i64, i32, %struct.TYPE_23__, %struct.TYPE_20__, %struct.TYPE_19__, i32, %struct.TYPE_21__*, %struct.TYPE_21__*, i32*, i8*, i8*, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, %struct.TYPE_21__*, %struct.TYPE_21__* }

@.str = private unnamed_addr constant [38 x i8] c"called with io_alloc_enabled = FALSE\0A\00", align 1
@_ocs_els_io_free = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"assertion failed.  HIO is not null\0A\00", align 1
@OCS_IO_TYPE_ELS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"pending\00", align 1
@OCS_ELS_REQ_LEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"ELS command request len greater than allocated\0A\00", align 1
@OCS_ELS_GID_PT_RSP_LEN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [53 x i8] c"ELS command response len: %d greater than allocated\0A\00", align 1
@OCS_FC_ELS_DEFAULT_RETRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_22__* @ocs_els_io_alloc_size(%struct.TYPE_21__* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %14 = call i32 @ocs_assert(%struct.TYPE_21__* %13, i32* null)
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 5
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %18 = call i32 @ocs_assert(%struct.TYPE_21__* %17, i32* null)
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 5
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  store %struct.TYPE_21__* %21, %struct.TYPE_21__** %10, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 4
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %25 = call i32 @ocs_assert(%struct.TYPE_21__* %24, i32* null)
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 4
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  store %struct.TYPE_21__* %28, %struct.TYPE_21__** %11, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = call i32 @ocs_lock(i32* %30)
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %4
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %38 = call i32 @ocs_log_debug(%struct.TYPE_21__* %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 0
  %41 = call i32 @ocs_unlock(i32* %40)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %5, align 8
  br label %166

42:                                               ; preds = %4
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %44 = call %struct.TYPE_22__* @ocs_io_alloc(%struct.TYPE_21__* %43)
  store %struct.TYPE_22__* %44, %struct.TYPE_22__** %12, align 8
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %46 = icmp eq %struct.TYPE_22__* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 2
  %50 = call i32 @ocs_atomic_add_return(i32* %49, i32 1)
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 0
  %53 = call i32 @ocs_unlock(i32* %52)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %5, align 8
  br label %166

54:                                               ; preds = %42
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 14
  %57 = load i32, i32* @_ocs_els_io_free, align 4
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %59 = call i32 @ocs_ref_init(i32* %56, i32 %57, %struct.TYPE_22__* %58)
  %60 = load i32, i32* %9, align 4
  switch i32 %60, label %75 [
    i32 129, label %61
    i32 128, label %68
  ]

61:                                               ; preds = %54
  %62 = load i8*, i8** @TRUE, align 8
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 13
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** @FALSE, align 8
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 12
  store i8* %65, i8** %67, align 8
  br label %75

68:                                               ; preds = %54
  %69 = load i8*, i8** @FALSE, align 8
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 13
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** @TRUE, align 8
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 12
  store i8* %72, i8** %74, align 8
  br label %75

75:                                               ; preds = %54, %68, %61
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 11
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %89

80:                                               ; preds = %75
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %82 = call i32 (%struct.TYPE_21__*, i8*, ...) @ocs_log_err(%struct.TYPE_21__* %81, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %85 = call i32 @ocs_io_free(%struct.TYPE_21__* %83, %struct.TYPE_22__* %84)
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = call i32 @ocs_unlock(i32* %87)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %5, align 8
  br label %166

89:                                               ; preds = %75
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 10
  store %struct.TYPE_21__* %90, %struct.TYPE_21__** %92, align 8
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 9
  store %struct.TYPE_21__* %93, %struct.TYPE_21__** %95, align 8
  %96 = load i32, i32* @OCS_IO_TYPE_ELS, align 4
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 8
  store i32 %96, i32* %98, align 8
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %100, align 8
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* @OCS_ELS_REQ_LEN, align 8
  %103 = icmp sgt i64 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %89
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %106 = call i32 (%struct.TYPE_21__*, i8*, ...) @ocs_log_err(%struct.TYPE_21__* %105, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %109 = call i32 @ocs_io_free(%struct.TYPE_21__* %107, %struct.TYPE_22__* %108)
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 0
  %112 = call i32 @ocs_unlock(i32* %111)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %5, align 8
  br label %166

113:                                              ; preds = %89
  %114 = load i64, i64* %8, align 8
  %115 = load i64, i64* @OCS_ELS_GID_PT_RSP_LEN, align 8
  %116 = icmp sgt i64 %114, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %113
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %119 = load i64, i64* %8, align 8
  %120 = call i32 (%struct.TYPE_21__*, i8*, ...) @ocs_log_err(%struct.TYPE_21__* %118, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i64 %119)
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %123 = call i32 @ocs_io_free(%struct.TYPE_21__* %121, %struct.TYPE_22__* %122)
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 0
  %126 = call i32 @ocs_unlock(i32* %125)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %5, align 8
  br label %166

127:                                              ; preds = %113
  %128 = load i64, i64* %7, align 8
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 7
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  store i64 %128, i64* %131, align 8
  %132 = load i64, i64* %8, align 8
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 6
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 0
  store i64 %132, i64* %135, align 8
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %137 = icmp ne %struct.TYPE_22__* %136, null
  br i1 %137, label %138, label %161

138:                                              ; preds = %127
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 5
  %141 = call i32 @ocs_memset(%struct.TYPE_23__* %140, i32 0, i32 8)
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 5
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 0
  store %struct.TYPE_22__* %142, %struct.TYPE_22__** %145, align 8
  %146 = load i32, i32* @OCS_FC_ELS_DEFAULT_RETRIES, align 4
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 8
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 3
  store i64 0, i64* %150, align 8
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 1
  store i32 0, i32* %152, align 8
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 2
  store i64 0, i64* %154, align 8
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %158 = call i32 @ocs_list_add_tail(i32* %156, %struct.TYPE_22__* %157)
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 1
  store i32 1, i32* %160, align 8
  br label %161

161:                                              ; preds = %138, %127
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 0
  %164 = call i32 @ocs_unlock(i32* %163)
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  store %struct.TYPE_22__* %165, %struct.TYPE_22__** %5, align 8
  br label %166

166:                                              ; preds = %161, %117, %104, %80, %47, %36
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  ret %struct.TYPE_22__* %167
}

declare dso_local i32 @ocs_assert(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @ocs_lock(i32*) #1

declare dso_local i32 @ocs_log_debug(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @ocs_unlock(i32*) #1

declare dso_local %struct.TYPE_22__* @ocs_io_alloc(%struct.TYPE_21__*) #1

declare dso_local i32 @ocs_atomic_add_return(i32*, i32) #1

declare dso_local i32 @ocs_ref_init(i32*, i32, %struct.TYPE_22__*) #1

declare dso_local i32 @ocs_log_err(%struct.TYPE_21__*, i8*, ...) #1

declare dso_local i32 @ocs_io_free(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @ocs_memset(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @ocs_list_add_tail(i32*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
