; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_els.c_ocs_bls_send_acc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_els.c_ocs_bls_send_acc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i8*, %struct.TYPE_15__, i8*, i32, i32, i32, %struct.TYPE_19__*, %struct.TYPE_19__* }
%struct.TYPE_15__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i8*, i8*, %struct.TYPE_15__*, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_17__, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_21__ = type { i32, i8*, i8* }

@UINT32_MAX = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@OCS_IO_TYPE_BLS_RESP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ba_acc\00", align 1
@OCS_HW_BLS_ACC_SID = common dso_local global i32 0, align 4
@UINT16_MAX = common dso_local global i32 0, align 4
@ocs_bls_send_acc_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"ocs_scsi_io_dispatch() failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_20__* (%struct.TYPE_20__*, i64, i8*, i8*)* @ocs_bls_send_acc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_20__* @ocs_bls_send_acc(%struct.TYPE_20__* %0, i64 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 6
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %9, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %17 = call i32 @ocs_assert(%struct.TYPE_19__* %16, i32* null)
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %21 = call i32 @ocs_assert(%struct.TYPE_19__* %20, i32* null)
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  store %struct.TYPE_19__* %24, %struct.TYPE_19__** %12, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i64, i64* @UINT32_MAX, align 8
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %33, %4
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 7
  store %struct.TYPE_19__* %36, %struct.TYPE_19__** %38, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 6
  store %struct.TYPE_19__* %39, %struct.TYPE_19__** %41, align 8
  %42 = load i32, i32* @TRUE, align 4
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @OCS_IO_TYPE_BLS_RESP, align 4
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %49, align 8
  %50 = load i32, i32* @OCS_HW_BLS_ACC_SID, align 4
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 1
  %58 = call i32 @ocs_memset(%struct.TYPE_15__* %57, i32 0, i32 32)
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 3
  store i64 %59, i64* %63, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 1
  store i8* %64, i8** %68, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  store i8* %69, i8** %73, align 8
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %77, align 8
  %79 = bitcast %struct.TYPE_15__* %78 to i8*
  %80 = bitcast i8* %79 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %80, %struct.TYPE_21__** %11, align 8
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %84, align 8
  %86 = call i32 @ocs_memset(%struct.TYPE_15__* %85, i32 0, i32 8)
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 2
  store i8* %91, i8** %93, align 8
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  %101 = load i32, i32* @UINT16_MAX, align 4
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %105 = load i32, i32* @ocs_bls_send_acc_cb, align 4
  %106 = call i32 @ocs_scsi_io_dispatch(%struct.TYPE_20__* %104, i32 %105)
  store i32 %106, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %35
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @ocs_log_err(%struct.TYPE_19__* %109, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %113 = call i32 @ocs_scsi_io_free(%struct.TYPE_20__* %112)
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %5, align 8
  br label %114

114:                                              ; preds = %108, %35
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  ret %struct.TYPE_20__* %115
}

declare dso_local i32 @ocs_assert(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @ocs_memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @ocs_scsi_io_dispatch(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @ocs_log_err(%struct.TYPE_19__*, i8*, i32) #1

declare dso_local i32 @ocs_scsi_io_free(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
