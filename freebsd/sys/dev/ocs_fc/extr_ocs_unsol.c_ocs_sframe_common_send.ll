; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_unsol.c_ocs_sframe_common_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_unsol.c_ocs_sframe_common_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_25__*, %struct.TYPE_23__* }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i64, i8** }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_30__ = type { i32, i32, i32, %struct.TYPE_21__, %struct.TYPE_29__*, i64, i8*, i8*, i8*, i64, i64, i8*, i64, i8*, i8* }
%struct.TYPE_21__ = type { i32, i8**, i32, i32 }

@FC_SOFI3 = common dso_local global i32 0, align 4
@FC_EOFT = common dso_local global i32 0, align 4
@ocs_sframe_common_send_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"ocs_hw_send_frame failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, %struct.TYPE_29__*, i8*, i8*, i32, i8*, i8*, i32)* @ocs_sframe_common_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_sframe_common_send(%struct.TYPE_27__* %0, %struct.TYPE_29__* %1, i8* %2, i8* %3, i32 %4, i8* %5, i8* %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_26__*, align 8
  %18 = alloca %struct.TYPE_28__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_20__*, align 8
  %21 = alloca %struct.TYPE_30__, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca %struct.TYPE_30__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i8**, align 8
  %30 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %9, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  %31 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %32, align 8
  store %struct.TYPE_26__* %33, %struct.TYPE_26__** %17, align 8
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %35 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %34, i32 0, i32 0
  store %struct.TYPE_28__* %35, %struct.TYPE_28__** %18, align 8
  store i64 0, i64* %19, align 8
  %36 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  store %struct.TYPE_20__* %41, %struct.TYPE_20__** %20, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @fc_be24toh(i32 %44)
  store i32 %45, i32* %22, align 4
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @fc_be24toh(i32 %48)
  store i32 %49, i32* %23, align 4
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @ocs_be16toh(i32 %52)
  store i8* %53, i8** %24, align 8
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @ocs_be16toh(i32 %56)
  store i8* %57, i8** %25, align 8
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %27, align 4
  %64 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %28, align 8
  %70 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 2
  %75 = load i8**, i8*** %74, align 8
  store i8** %75, i8*** %29, align 8
  store i32 0, i32* %30, align 4
  %76 = call i32 @ocs_memset(%struct.TYPE_30__* %21, i32 0, i32 128)
  %77 = load i32, i32* %22, align 4
  %78 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %21, i32 0, i32 0
  store i32 %77, i32* %78, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %21, i32 0, i32 14
  store i8* %79, i8** %80, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %21, i32 0, i32 13
  store i8* %81, i8** %82, align 8
  %83 = load i32, i32* %23, align 4
  %84 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %21, i32 0, i32 1
  store i32 %83, i32* %84, align 4
  %85 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %21, i32 0, i32 12
  store i64 0, i64* %85, align 8
  %86 = load i32, i32* %13, align 4
  %87 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %21, i32 0, i32 2
  store i32 %86, i32* %87, align 8
  %88 = load i8*, i8** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %21, i32 0, i32 11
  store i8* %88, i8** %89, align 8
  %90 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %21, i32 0, i32 10
  store i64 0, i64* %90, align 8
  %91 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %21, i32 0, i32 9
  store i64 0, i64* %91, align 8
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %93 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %92, i32 0, i32 0
  %94 = call i64 @ocs_atomic_add_return(i32* %93, i32 1)
  %95 = inttoptr i64 %94 to i8*
  %96 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %21, i32 0, i32 8
  store i8* %95, i8** %96, align 8
  %97 = load i8*, i8** %25, align 8
  %98 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %21, i32 0, i32 7
  store i8* %97, i8** %98, align 8
  %99 = load i8*, i8** %24, align 8
  %100 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %21, i32 0, i32 6
  store i8* %99, i8** %100, align 8
  %101 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %21, i32 0, i32 5
  store i64 0, i64* %101, align 8
  %102 = load i8**, i8*** %29, align 8
  %103 = load i32, i32* %30, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = bitcast i8** %105 to i8*
  %107 = bitcast i8* %106 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %107, %struct.TYPE_30__** %26, align 8
  %108 = load i32, i32* %30, align 4
  %109 = sext i32 %108 to i64
  %110 = add i64 %109, 128
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %30, align 4
  %112 = load i32, i32* %30, align 4
  %113 = load i32, i32* %27, align 4
  %114 = icmp slt i32 %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @ocs_assert(i32 %115, i32 -1)
  %117 = load %struct.TYPE_30__*, %struct.TYPE_30__** %26, align 8
  %118 = call i32 @ocs_memset(%struct.TYPE_30__* %117, i32 0, i32 128)
  %119 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %120 = load %struct.TYPE_30__*, %struct.TYPE_30__** %26, align 8
  %121 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %120, i32 0, i32 4
  store %struct.TYPE_29__* %119, %struct.TYPE_29__** %121, align 8
  %122 = load i64, i64* %28, align 8
  %123 = load i32, i32* %30, align 4
  %124 = sext i32 %123 to i64
  %125 = add i64 %122, %124
  %126 = trunc i64 %125 to i32
  %127 = load %struct.TYPE_30__*, %struct.TYPE_30__** %26, align 8
  %128 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 8
  %130 = load i8**, i8*** %29, align 8
  %131 = load i32, i32* %30, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %130, i64 %132
  %134 = load %struct.TYPE_30__*, %struct.TYPE_30__** %26, align 8
  %135 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 1
  store i8** %133, i8*** %136, align 8
  %137 = load i32, i32* %16, align 4
  %138 = load %struct.TYPE_30__*, %struct.TYPE_30__** %26, align 8
  %139 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 2
  store i32 %137, i32* %140, align 8
  %141 = load i32, i32* %16, align 4
  %142 = load %struct.TYPE_30__*, %struct.TYPE_30__** %26, align 8
  %143 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 3
  store i32 %141, i32* %144, align 4
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* %30, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %30, align 4
  %148 = load i32, i32* %30, align 4
  %149 = load i32, i32* %27, align 4
  %150 = icmp sle i32 %148, %149
  %151 = zext i1 %150 to i32
  %152 = call i32 @ocs_assert(i32 %151, i32 -1)
  %153 = load %struct.TYPE_30__*, %struct.TYPE_30__** %26, align 8
  %154 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 1
  %156 = load i8**, i8*** %155, align 8
  %157 = load i8*, i8** %15, align 8
  %158 = load i32, i32* %16, align 4
  %159 = call i32 @ocs_memcpy(i8** %156, i8* %157, i32 %158)
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 0
  %162 = bitcast %struct.TYPE_30__* %21 to i8*
  %163 = load i32, i32* @FC_SOFI3, align 4
  %164 = load i32, i32* @FC_EOFT, align 4
  %165 = load %struct.TYPE_30__*, %struct.TYPE_30__** %26, align 8
  %166 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %165, i32 0, i32 3
  %167 = load %struct.TYPE_30__*, %struct.TYPE_30__** %26, align 8
  %168 = load i32, i32* @ocs_sframe_common_send_cb, align 4
  %169 = load %struct.TYPE_30__*, %struct.TYPE_30__** %26, align 8
  %170 = call i64 @ocs_hw_send_frame(%struct.TYPE_28__* %161, i8* %162, i32 %163, i32 %164, %struct.TYPE_21__* %166, %struct.TYPE_30__* %167, i32 %168, %struct.TYPE_30__* %169)
  store i64 %170, i64* %19, align 8
  %171 = load i64, i64* %19, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %8
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %175 = load i64, i64* %19, align 8
  %176 = call i32 @ocs_log_test(%struct.TYPE_26__* %174, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %175)
  br label %177

177:                                              ; preds = %173, %8
  %178 = load i64, i64* %19, align 8
  %179 = icmp ne i64 %178, 0
  %180 = zext i1 %179 to i64
  %181 = select i1 %179, i32 -1, i32 0
  ret i32 %181
}

declare dso_local i32 @fc_be24toh(i32) #1

declare dso_local i8* @ocs_be16toh(i32) #1

declare dso_local i32 @ocs_memset(%struct.TYPE_30__*, i32, i32) #1

declare dso_local i64 @ocs_atomic_add_return(i32*, i32) #1

declare dso_local i32 @ocs_assert(i32, i32) #1

declare dso_local i32 @ocs_memcpy(i8**, i8*, i32) #1

declare dso_local i64 @ocs_hw_send_frame(%struct.TYPE_28__*, i8*, i32, i32, %struct.TYPE_21__*, %struct.TYPE_30__*, i32, %struct.TYPE_30__*) #1

declare dso_local i32 @ocs_log_test(%struct.TYPE_26__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
