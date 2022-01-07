; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_sport.c_ocs_sport_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_sport.c_ocs_sport_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32*, i32, i64, i32, %struct.TYPE_22__*, i32, i64, i64, i32, i32, i8*, i8*, %struct.TYPE_19__, i32, i32, %struct.TYPE_21__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_21__ = type { %struct.TYPE_22__*, i32, %struct.TYPE_20__*, i32, i32 }

@OCS_CTRLMASK_INHIBIT_INITIATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Failed: SPORT %016llx  %016llx already allocated\0A\00", align 1
@OCS_M_NOWAIT = common dso_local global i32 0, align 4
@OCS_M_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"------\00", align 1
@ocs_node_t = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"%016llx\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"node_group_lock[%d]\00", align 1
@ocs_node_group_dir_t = common dso_local global i32 0, align 4
@sport_mgmt_functions = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"[%s] allocate sport\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @ocs_sport_alloc(%struct.TYPE_21__* %0, i64 %1, i64 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @OCS_CTRLMASK_INHIBIT_INITIATOR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  store i8* null, i8** %12, align 8
  br label %24

24:                                               ; preds = %23, %6
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %24
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call %struct.TYPE_20__* @ocs_sport_find_wwn(%struct.TYPE_21__* %28, i64 %29, i64 %30)
  store %struct.TYPE_20__* %31, %struct.TYPE_20__** %14, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %33 = icmp ne %struct.TYPE_20__* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %36, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @ocs_log_test(%struct.TYPE_22__* %37, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %38, i64 %39)
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %7, align 8
  br label %180

41:                                               ; preds = %27
  br label %42

42:                                               ; preds = %41, %24
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %44, align 8
  %46 = load i32, i32* @OCS_M_NOWAIT, align 4
  %47 = load i32, i32* @OCS_M_ZERO, align 4
  %48 = or i32 %46, %47
  %49 = call %struct.TYPE_20__* @ocs_malloc(%struct.TYPE_22__* %45, i32 120, i32 %48)
  store %struct.TYPE_20__* %49, %struct.TYPE_20__** %14, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %51 = icmp ne %struct.TYPE_20__* %50, null
  br i1 %51, label %52, label %178

52:                                               ; preds = %42
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %54, align 8
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 6
  store %struct.TYPE_22__* %55, %struct.TYPE_22__** %57, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32, i32, i8*, ...) @ocs_snprintf(i32 %60, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 17
  store %struct.TYPE_21__* %62, %struct.TYPE_21__** %64, align 8
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %66, align 8
  %68 = call i32 @spv_new(%struct.TYPE_22__* %67)
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 16
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = sext i32 %73 to i64
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 4
  store i64 %75, i64* %77, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %79 = call i32 @ocs_sport_lock_init(%struct.TYPE_20__* %78)
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 15
  %82 = load i32, i32* @ocs_node_t, align 4
  %83 = load i32, i32* @link, align 4
  %84 = call i32 @ocs_list_init(i32* %81, i32 %82, i32 %83)
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 14
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 0
  store %struct.TYPE_20__* %85, %struct.TYPE_20__** %88, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 13
  store i8* %89, i8** %91, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 12
  store i8* %92, i8** %94, align 8
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 13
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %112, label %99

99:                                               ; preds = %52
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 12
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 6
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %106, align 8
  %108 = call i64 @enable_target_rscn(%struct.TYPE_22__* %107)
  %109 = icmp ne i64 %108, 0
  br label %110

110:                                              ; preds = %104, %99
  %111 = phi i1 [ false, %99 ], [ %109, %104 ]
  br label %112

112:                                              ; preds = %110, %52
  %113 = phi i1 [ true, %52 ], [ %111, %110 ]
  %114 = zext i1 %113 to i32
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 11
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @ocs_memcpy(i32 %119, i32 %122, i32 4)
  %124 = load i32, i32* %11, align 4
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 10
  store i32 %124, i32* %126, align 8
  %127 = load i64, i64* %9, align 8
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 9
  store i64 %127, i64* %129, align 8
  %130 = load i64, i64* %10, align 8
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 8
  store i64 %130, i64* %132, align 8
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 7
  %135 = load i32, i32* %134, align 8
  %136 = load i64, i64* %10, align 8
  %137 = call i32 (i32, i32, i8*, ...) @ocs_snprintf(i32 %135, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %136)
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 6
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %139, align 8
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 5
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @ocs_lock_init(%struct.TYPE_22__* %140, i32* %142, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %145)
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 3
  %149 = load i32, i32* @ocs_node_group_dir_t, align 4
  %150 = load i32, i32* @link, align 4
  %151 = call i32 @ocs_list_init(i32* %148, i32 %149, i32 %150)
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %153 = call i32 @ocs_domain_lock(%struct.TYPE_21__* %152)
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 1
  %156 = call i64 @ocs_list_empty(i32* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %112
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 2
  store %struct.TYPE_20__* %159, %struct.TYPE_20__** %161, align 8
  br label %162

162:                                              ; preds = %158, %112
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %166 = call i32 @ocs_list_add_tail(i32* %164, %struct.TYPE_20__* %165)
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %168 = call i32 @ocs_domain_unlock(%struct.TYPE_21__* %167)
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 2
  store i32* @sport_mgmt_functions, i32** %170, align 8
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %172, align 8
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @ocs_log_debug(%struct.TYPE_22__* %173, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %176)
  br label %178

178:                                              ; preds = %162, %42
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  store %struct.TYPE_20__* %179, %struct.TYPE_20__** %7, align 8
  br label %180

180:                                              ; preds = %178, %34
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  ret %struct.TYPE_20__* %181
}

declare dso_local %struct.TYPE_20__* @ocs_sport_find_wwn(%struct.TYPE_21__*, i64, i64) #1

declare dso_local i32 @ocs_log_test(%struct.TYPE_22__*, i8*, i64, i64) #1

declare dso_local %struct.TYPE_20__* @ocs_malloc(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @ocs_snprintf(i32, i32, i8*, ...) #1

declare dso_local i32 @spv_new(%struct.TYPE_22__*) #1

declare dso_local i32 @ocs_sport_lock_init(%struct.TYPE_20__*) #1

declare dso_local i32 @ocs_list_init(i32*, i32, i32) #1

declare dso_local i64 @enable_target_rscn(%struct.TYPE_22__*) #1

declare dso_local i32 @ocs_memcpy(i32, i32, i32) #1

declare dso_local i32 @ocs_lock_init(%struct.TYPE_22__*, i32*, i8*, i64) #1

declare dso_local i32 @ocs_domain_lock(%struct.TYPE_21__*) #1

declare dso_local i64 @ocs_list_empty(i32*) #1

declare dso_local i32 @ocs_list_add_tail(i32*, %struct.TYPE_20__*) #1

declare dso_local i32 @ocs_domain_unlock(%struct.TYPE_21__*) #1

declare dso_local i32 @ocs_log_debug(%struct.TYPE_22__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
