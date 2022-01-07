; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_node.c_ocs_node_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_node.c_ocs_node_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32*, i64, %struct.TYPE_26__, %struct.TYPE_27__, %struct.TYPE_32__, i32, i32, i32, i8*, i32, i32, i32, i8*, i8*, %struct.TYPE_29__*, %struct.TYPE_30__*, i8* }
%struct.TYPE_26__ = type { %struct.TYPE_31__* }
%struct.TYPE_27__ = type { %struct.TYPE_31__*, i32 }
%struct.TYPE_32__ = type { i32, %struct.TYPE_31__* }
%struct.TYPE_29__ = type { i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_30__ = type { i32, i32, i64, %struct.TYPE_29__* }

@.str = private unnamed_addr constant [40 x i8] c"node allocation when shutting down %06x\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"node allocation failed %06x\00", align 1
@UINT32_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"ocs_hw_node_alloc failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"pend_frames_lock[%d]\00", align 1
@ocs_hw_sequence_t = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"active_ios[%d]\00", align 1
@ocs_io_t = common dso_local global i32 0, align 4
@node_mgmt_functions = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_31__* @ocs_node_alloc(%struct.TYPE_30__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_31__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_29__*, align 8
  %15 = alloca %struct.TYPE_28__*, align 8
  %16 = alloca %struct.TYPE_32__, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %11, align 8
  %17 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  store %struct.TYPE_29__* %19, %struct.TYPE_29__** %14, align 8
  %20 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %21 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %21, align 8
  store %struct.TYPE_28__* %22, %struct.TYPE_28__** %15, align 8
  %23 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %24 = call i32 @ocs_assert(%struct.TYPE_30__* %23, i32* null)
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @ocs_log_debug(%struct.TYPE_29__* %30, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %31)
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %5, align 8
  br label %186

33:                                               ; preds = %4
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %35 = call i32 @ocs_device_lock(%struct.TYPE_29__* %34)
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 0
  %38 = call %struct.TYPE_31__* @ocs_list_remove_head(i32* %37)
  store %struct.TYPE_31__* %38, %struct.TYPE_31__** %11, align 8
  %39 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %40 = call i32 @ocs_device_unlock(%struct.TYPE_29__* %39)
  %41 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %42 = icmp eq %struct.TYPE_31__* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %33
  %44 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @ocs_log_err(%struct.TYPE_29__* %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %5, align 8
  br label %186

47:                                               ; preds = %33
  %48 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %48, i32 0, i32 8
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %12, align 8
  %51 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %51, i32 0, i32 16
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %13, align 8
  %54 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %54, i32 0, i32 4
  %56 = bitcast %struct.TYPE_32__* %16 to i8*
  %57 = bitcast %struct.TYPE_32__* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 16, i1 false)
  %58 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %59 = call i32 @ocs_memset(%struct.TYPE_31__* %58, i32 0, i32 136)
  %60 = load i8*, i8** %12, align 8
  %61 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %61, i32 0, i32 8
  store i8* %60, i8** %62, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %64, i32 0, i32 16
  store i8* %63, i8** %65, align 8
  %66 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %66, i32 0, i32 4
  %68 = bitcast %struct.TYPE_32__* %67 to i8*
  %69 = bitcast %struct.TYPE_32__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 16, i1 false)
  %70 = load i32, i32* @UINT32_MAX, align 4
  %71 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 8
  %74 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %75 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %75, i32 0, i32 15
  store %struct.TYPE_30__* %74, %struct.TYPE_30__** %76, align 8
  %77 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %78 = call i32 @ocs_sport_lock(%struct.TYPE_30__* %77)
  %79 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %80 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %80, i32 0, i32 14
  store %struct.TYPE_29__* %79, %struct.TYPE_29__** %81, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %83, i32 0, i32 13
  store i8* %82, i8** %84, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %86, i32 0, i32 12
  store i8* %85, i8** %87, align 8
  %88 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %90, i32 0, i32 3
  %92 = load i8*, i8** %7, align 8
  %93 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %94 = call i8* @ocs_hw_node_alloc(i32* %89, %struct.TYPE_27__* %91, i8* %92, %struct.TYPE_30__* %93)
  store i8* %94, i8** %10, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %111

97:                                               ; preds = %47
  %98 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = call i32 @ocs_log_err(%struct.TYPE_29__* %98, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %99)
  %101 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %102 = call i32 @ocs_sport_unlock(%struct.TYPE_30__* %101)
  %103 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %104 = call i32 @ocs_device_lock(%struct.TYPE_29__* %103)
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %108 = call i32 @ocs_list_add_tail(i32* %106, %struct.TYPE_31__* %107)
  %109 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %110 = call i32 @ocs_device_unlock(%struct.TYPE_29__* %109)
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %5, align 8
  br label %186

111:                                              ; preds = %47
  %112 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %115 = call i32 @ocs_list_add_tail(i32* %113, %struct.TYPE_31__* %114)
  %116 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %117 = call i32 @ocs_node_lock_init(%struct.TYPE_31__* %116)
  %118 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %119 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %119, i32 0, i32 11
  %121 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %121, i32 0, i32 8
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @ocs_lock_init(%struct.TYPE_29__* %118, i32* %120, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %123)
  %125 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %125, i32 0, i32 10
  %127 = load i32, i32* @ocs_hw_sequence_t, align 4
  %128 = load i32, i32* @link, align 4
  %129 = call i32 @ocs_list_init(i32* %126, i32 %127, i32 %128)
  %130 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %131 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %131, i32 0, i32 9
  %133 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %133, i32 0, i32 8
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @ocs_lock_init(%struct.TYPE_29__* %130, i32* %132, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %135)
  %137 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %137, i32 0, i32 7
  %139 = load i32, i32* @ocs_io_t, align 4
  %140 = load i32, i32* @link, align 4
  %141 = call i32 @ocs_list_init(i32* %138, i32 %139, i32 %140)
  %142 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %142, i32 0, i32 6
  %144 = load i32, i32* @ocs_io_t, align 4
  %145 = load i32, i32* @link, align 4
  %146 = call i32 @ocs_list_init(i32* %143, i32 %144, i32 %145)
  %147 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %147, i32 0, i32 5
  %149 = load i32, i32* @ocs_io_t, align 4
  %150 = load i32, i32* @link, align 4
  %151 = call i32 @ocs_list_init(i32* %148, i32 %149, i32 %150)
  %152 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %153 = call i32 @ocs_scsi_io_alloc_enable(%struct.TYPE_31__* %152)
  %154 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_31__*, %struct.TYPE_31__** %156, align 8
  %158 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %158, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @ocs_memset(%struct.TYPE_31__* %157, i32 0, i32 %161)
  %163 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %164 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %165, i32 0, i32 0
  store %struct.TYPE_31__* %163, %struct.TYPE_31__** %166, align 8
  %167 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %168 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %169, i32 0, i32 0
  store %struct.TYPE_31__* %167, %struct.TYPE_31__** %170, align 8
  %171 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %171, i32 0, i32 1
  store i64 0, i64* %172, align 8
  %173 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %174 = call i32 @ocs_node_update_display_name(%struct.TYPE_31__* %173)
  %175 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i8*, i8** %7, align 8
  %179 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %180 = call i32 @spv_set(i32 %177, i8* %178, %struct.TYPE_31__* %179)
  %181 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %182 = call i32 @ocs_sport_unlock(%struct.TYPE_30__* %181)
  %183 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %183, i32 0, i32 0
  store i32* @node_mgmt_functions, i32** %184, align 8
  %185 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  store %struct.TYPE_31__* %185, %struct.TYPE_31__** %5, align 8
  br label %186

186:                                              ; preds = %111, %97, %43, %29
  %187 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  ret %struct.TYPE_31__* %187
}

declare dso_local i32 @ocs_assert(%struct.TYPE_30__*, i32*) #1

declare dso_local i32 @ocs_log_debug(%struct.TYPE_29__*, i8*, i8*) #1

declare dso_local i32 @ocs_device_lock(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_31__* @ocs_list_remove_head(i32*) #1

declare dso_local i32 @ocs_device_unlock(%struct.TYPE_29__*) #1

declare dso_local i32 @ocs_log_err(%struct.TYPE_29__*, i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ocs_memset(%struct.TYPE_31__*, i32, i32) #1

declare dso_local i32 @ocs_sport_lock(%struct.TYPE_30__*) #1

declare dso_local i8* @ocs_hw_node_alloc(i32*, %struct.TYPE_27__*, i8*, %struct.TYPE_30__*) #1

declare dso_local i32 @ocs_sport_unlock(%struct.TYPE_30__*) #1

declare dso_local i32 @ocs_list_add_tail(i32*, %struct.TYPE_31__*) #1

declare dso_local i32 @ocs_node_lock_init(%struct.TYPE_31__*) #1

declare dso_local i32 @ocs_lock_init(%struct.TYPE_29__*, i32*, i8*, i8*) #1

declare dso_local i32 @ocs_list_init(i32*, i32, i32) #1

declare dso_local i32 @ocs_scsi_io_alloc_enable(%struct.TYPE_31__*) #1

declare dso_local i32 @ocs_node_update_display_name(%struct.TYPE_31__*) #1

declare dso_local i32 @spv_set(i32, i8*, %struct.TYPE_31__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
