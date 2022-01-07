; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_scsi.c_ocs_scsi_send_tmf_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_scsi.c_ocs_scsi_send_tmf_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i64, i32, i32, %struct.TYPE_18__, i32, i32, %struct.TYPE_15__*, %struct.TYPE_14__, i8*, i32, i32, i32, %struct.TYPE_17__*, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { %struct.TYPE_16__, i64, i64, i32 }
%struct.TYPE_16__ = type { i32, i32, i64, i32 }
%struct.TYPE_15__ = type { i32, i64, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_19__ = type { i32, i32 }

@FCP_TMF_COMPLETE = common dso_local global i32 0, align 4
@FCP_TMF_SUCCEEDED = common dso_local global i32 0, align 4
@FCP_TMF_REJECTED = common dso_local global i32 0, align 4
@FCP_TMF_INCORRECT_LUN = common dso_local global i32 0, align 4
@FCP_TMF_FAILED = common dso_local global i32 0, align 4
@OCS_HW_IO_TARGET_RSP = common dso_local global i32 0, align 4
@OCS_SCSI_TMF_ABORT_TASK = common dso_local global i64 0, align 8
@FCP_RSP_LEN_VALID = common dso_local global i32 0, align 4
@ocs_target_io_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_scsi_send_tmf_resp(%struct.TYPE_17__* %0, i32 %1, i32* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 -1, i32* %12, align 4
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %13, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %14, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %15, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %18 = call i32 @ocs_assert(%struct.TYPE_17__* %17, i32 -1)
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 13
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %22 = call i32 @ocs_assert(%struct.TYPE_17__* %21, i32 -1)
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 14
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %26 = call i32 @ocs_assert(%struct.TYPE_17__* %25, i32 -1)
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 13
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  store %struct.TYPE_17__* %29, %struct.TYPE_17__** %13, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 12
  %35 = call i32 @ocs_scsi_convert_dif_info(%struct.TYPE_17__* %32, i32* null, i32* %34)
  %36 = load i32, i32* %8, align 4
  switch i32 %36, label %47 [
    i32 133, label %37
    i32 130, label %39
    i32 132, label %39
    i32 131, label %41
    i32 129, label %43
    i32 128, label %45
  ]

37:                                               ; preds = %5
  %38 = load i32, i32* @FCP_TMF_COMPLETE, align 4
  store i32 %38, i32* %16, align 4
  br label %49

39:                                               ; preds = %5, %5
  %40 = load i32, i32* @FCP_TMF_SUCCEEDED, align 4
  store i32 %40, i32* %16, align 4
  br label %49

41:                                               ; preds = %5
  %42 = load i32, i32* @FCP_TMF_REJECTED, align 4
  store i32 %42, i32* %16, align 4
  br label %49

43:                                               ; preds = %5
  %44 = load i32, i32* @FCP_TMF_INCORRECT_LUN, align 4
  store i32 %44, i32* %16, align 4
  br label %49

45:                                               ; preds = %5
  %46 = load i32, i32* @FCP_TMF_FAILED, align 4
  store i32 %46, i32* %16, align 4
  br label %49

47:                                               ; preds = %5
  %48 = load i32, i32* @FCP_TMF_REJECTED, align 4
  store i32 %48, i32* %16, align 4
  br label %49

49:                                               ; preds = %47, %45, %43, %41, %39, %37
  %50 = load i32, i32* @OCS_HW_IO_TARGET_RSP, align 4
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 11
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 10
  store i32 %53, i32* %55, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 9
  store i8* %56, i8** %58, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @OCS_SCSI_TMF_ABORT_TASK, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %49
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i8*, i8** %11, align 8
  %68 = call i32 @ocs_target_send_bls_resp(%struct.TYPE_17__* %65, i32 %66, i8* %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %6, align 4
  br label %161

70:                                               ; preds = %49
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %73, align 8
  store %struct.TYPE_18__* %74, %struct.TYPE_18__** %14, align 8
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %76 = call i32 @ocs_memset(%struct.TYPE_18__* %75, i32 0, i32 48)
  %77 = load i32, i32* @FCP_RSP_LEN_VALID, align 4
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %85, %struct.TYPE_19__** %15, align 8
  %86 = load i32*, i32** %9, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %70
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %9, align 8
  %93 = call i32 @ocs_memcpy(i32 %91, i32* %92, i32 4)
  br label %94

94:                                               ; preds = %88, %70
  %95 = load i32, i32* %16, align 4
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  store i32 48, i32* %99, align 8
  %100 = call i32 @ocs_htobe32(i32 8)
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to i32*
  store i32 %100, i32* %104, align 4
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 7
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 2
  store i32 %108, i32* %113, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 7
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i64 0
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  store i64 0, i64* %118, align 8
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 7
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  store i32 %121, i32* %126, align 8
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 2
  store i32 1, i32* %128, align 8
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 4
  %131 = call i32 @ocs_memset(%struct.TYPE_18__* %130, i32 0, i32 48)
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 3
  store i32 %134, i32* %138, align 8
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 2
  store i64 0, i64* %142, align 8
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 1
  store i32 %145, i32* %149, align 4
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 4
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  store i32 %152, i32* %156, align 8
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %158 = load i32, i32* @ocs_target_io_cb, align 4
  %159 = call i32 @ocs_scsi_io_dispatch(%struct.TYPE_17__* %157, i32 %158)
  store i32 %159, i32* %12, align 4
  %160 = load i32, i32* %12, align 4
  store i32 %160, i32* %6, align 4
  br label %161

161:                                              ; preds = %94, %64
  %162 = load i32, i32* %6, align 4
  ret i32 %162
}

declare dso_local i32 @ocs_assert(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ocs_scsi_convert_dif_info(%struct.TYPE_17__*, i32*, i32*) #1

declare dso_local i32 @ocs_target_send_bls_resp(%struct.TYPE_17__*, i32, i8*) #1

declare dso_local i32 @ocs_memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @ocs_memcpy(i32, i32*, i32) #1

declare dso_local i32 @ocs_htobe32(i32) #1

declare dso_local i32 @ocs_scsi_io_dispatch(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
