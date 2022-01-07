; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_xabt_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_xabt_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i64, i64, i32, i64, i32 (%struct.TYPE_19__*, i32, i32, i32, i32, i8*)*, i32, i32, i32, i8*, i32, i64 }

@SLI_QENTRY_XABT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Error: xabt io lookup failed rid=%#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"xabt io not busy rid=%#x\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@OCS_HW_IO_STATE_INUSE = common dso_local global i64 0, align 8
@OCS_HW_IO_STATE_WAIT_FREE = common dso_local global i64 0, align 8
@OCS_HW_IO_STATE_FREE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocs_hw_xabt_process(%struct.TYPE_18__* %0, %struct.TYPE_20__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32 (%struct.TYPE_19__*, i32, i32, i32, i32, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %9, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.TYPE_19__* @ocs_hw_io_lookup(%struct.TYPE_18__* %15, i32 %16)
  store %struct.TYPE_19__* %17, %struct.TYPE_19__** %9, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 3
  %20 = load i32, i32* @SLI_QENTRY_XABT, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = bitcast i32* %21 to i8*
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 1
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 1
  %40 = and i32 %33, %39
  %41 = call i32 @ocs_queue_history_cqe(i32* %19, i32 %20, i8* %22, i32 0, i32 %27, i32 %40)
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %43 = icmp eq %struct.TYPE_19__* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %4
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @ocs_log_err(i32 %47, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %170

50:                                               ; preds = %4
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 10
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @ocs_log_debug(i32 %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %65

61:                                               ; preds = %50
  %62 = load i64, i64* @FALSE, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 10
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %61, %55
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = call i32 @ocs_lock(i32* %72)
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 9
  %76 = call i32 @ocs_ref_get(i32* %75)
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = call i32 @ocs_unlock(i32* %78)
  br label %80

80:                                               ; preds = %70, %65
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 4
  %83 = load i32 (%struct.TYPE_19__*, i32, i32, i32, i32, i8*)*, i32 (%struct.TYPE_19__*, i32, i32, i32, i32, i8*)** %82, align 8
  %84 = icmp ne i32 (%struct.TYPE_19__*, i32, i32, i32, i32, i8*)* %83, null
  br i1 %84, label %85, label %115

85:                                               ; preds = %80
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 4
  %88 = load i32 (%struct.TYPE_19__*, i32, i32, i32, i32, i8*)*, i32 (%struct.TYPE_19__*, i32, i32, i32, i32, i8*)** %87, align 8
  store i32 (%struct.TYPE_19__*, i32, i32, i32, i32, i8*)* %88, i32 (%struct.TYPE_19__*, i32, i32, i32, i32, i8*)** %10, align 8
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 8
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** %11, align 8
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %12, align 4
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %13, align 4
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %14, align 4
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 4
  store i32 (%struct.TYPE_19__*, i32, i32, i32, i32, i8*)* null, i32 (%struct.TYPE_19__*, i32, i32, i32, i32, i8*)** %102, align 8
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 3
  store i64 0, i64* %104, align 8
  %105 = load i32 (%struct.TYPE_19__*, i32, i32, i32, i32, i8*)*, i32 (%struct.TYPE_19__*, i32, i32, i32, i32, i8*)** %10, align 8
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %14, align 4
  %113 = load i8*, i8** %11, align 8
  %114 = call i32 %105(%struct.TYPE_19__* %106, i32 %109, i32 %110, i32 %111, i32 %112, i8* %113)
  br label %115

115:                                              ; preds = %85, %80
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %115
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  %123 = call i32 @ocs_lock(i32* %122)
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %126 = call i32 @ocs_hw_reque_xri(%struct.TYPE_18__* %124, %struct.TYPE_19__* %125)
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  %129 = call i32 @ocs_unlock(i32* %128)
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %132 = call i32 @ocs_hw_io_free(%struct.TYPE_18__* %130, %struct.TYPE_19__* %131)
  br label %170

133:                                              ; preds = %115
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 0
  %136 = call i32 @ocs_lock(i32* %135)
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @OCS_HW_IO_STATE_INUSE, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %148, label %142

142:                                              ; preds = %133
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @OCS_HW_IO_STATE_WAIT_FREE, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %166

148:                                              ; preds = %142, %133
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @OCS_HW_IO_STATE_WAIT_FREE, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %165

154:                                              ; preds = %148
  %155 = load i64, i64* @OCS_HW_IO_STATE_FREE, align 8
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 0
  store i64 %155, i64* %157, align 8
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %161 = call i32 @ocs_list_remove(i32* %159, %struct.TYPE_19__* %160)
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %164 = call i32 @ocs_hw_io_free_move_correct_list(%struct.TYPE_18__* %162, %struct.TYPE_19__* %163)
  br label %165

165:                                              ; preds = %154, %148
  br label %166

166:                                              ; preds = %165, %142
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 0
  %169 = call i32 @ocs_unlock(i32* %168)
  br label %170

170:                                              ; preds = %166, %120, %44
  ret void
}

declare dso_local %struct.TYPE_19__* @ocs_hw_io_lookup(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ocs_queue_history_cqe(i32*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ocs_log_err(i32, i8*, i32) #1

declare dso_local i32 @ocs_log_debug(i32, i8*, i32) #1

declare dso_local i32 @ocs_lock(i32*) #1

declare dso_local i32 @ocs_ref_get(i32*) #1

declare dso_local i32 @ocs_unlock(i32*) #1

declare dso_local i32 @ocs_hw_reque_xri(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @ocs_hw_io_free(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @ocs_list_remove(i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @ocs_hw_io_free_move_correct_list(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
