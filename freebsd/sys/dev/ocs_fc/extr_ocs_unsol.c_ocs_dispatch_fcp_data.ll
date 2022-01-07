; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_unsol.c_ocs_dispatch_fcp_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_unsol.c_ocs_dispatch_fcp_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_21__*, %struct.TYPE_21__*, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_22__, %struct.TYPE_19__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"data received for NULL io, xri=0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"data received for host owned XRI, xri=0x%x\0A\00", align 1
@OCS_HW_UNSOL_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"data with status 0x%x received, xri=0x%x\0A\00", align 1
@OCS_SCSI_FIRST_BURST_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"error passing first burst, xri=0x%x, oxid=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_20__*)* @ocs_dispatch_fcp_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_dispatch_fcp_data(%struct.TYPE_18__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca [1 x %struct.TYPE_22__], align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %6, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  store i32* %15, i32** %7, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  store %struct.TYPE_21__* %18, %struct.TYPE_21__** %8, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %22 = call i32 @ocs_assert(%struct.TYPE_21__* %21, i32 -1)
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %24 = call i32 @ocs_assert(%struct.TYPE_21__* %23, i32 -1)
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  store %struct.TYPE_19__* %27, %struct.TYPE_19__** %9, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %29 = icmp eq %struct.TYPE_19__* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (%struct.TYPE_17__*, i8*, i32, ...) @ocs_log_err(%struct.TYPE_17__* %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 -1, i32* %3, align 4
  br label %111

36:                                               ; preds = %2
  %37 = load i32*, i32** %7, align 8
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %39, align 8
  %41 = call i32 @ocs_hw_is_io_port_owned(i32* %37, %struct.TYPE_21__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %36
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (%struct.TYPE_17__*, i8*, i32, ...) @ocs_log_err(%struct.TYPE_17__* %44, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  store i32 -1, i32* %3, align 4
  br label %111

49:                                               ; preds = %36
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @OCS_HW_UNSOL_SUCCESS, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %49
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (%struct.TYPE_17__*, i8*, i32, ...) @ocs_log_err(%struct.TYPE_17__* %56, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %62)
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %66, align 8
  %68 = call i32 @ocs_port_owned_abort(%struct.TYPE_17__* %64, %struct.TYPE_21__* %67)
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %70 = load i32, i32* @OCS_SCSI_FIRST_BURST_ERR, align 4
  %71 = call i64 @ocs_scsi_recv_cmd_first_burst(%struct.TYPE_19__* %69, i32 0, i32* null, i32 0, i32 %70, %struct.TYPE_22__* null, i32 0)
  store i32 -1, i32* %3, align 4
  br label %111

72:                                               ; preds = %49
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 4
  %75 = getelementptr inbounds [1 x %struct.TYPE_22__], [1 x %struct.TYPE_22__]* %10, i64 0, i64 0
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 1
  %80 = bitcast %struct.TYPE_22__* %75 to i8*
  %81 = bitcast %struct.TYPE_22__* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %80, i8* align 4 %81, i64 4, i1 false)
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %91 = getelementptr inbounds [1 x %struct.TYPE_22__], [1 x %struct.TYPE_22__]* %10, i64 0, i64 0
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @ocs_scsi_recv_cmd_first_burst(%struct.TYPE_19__* %90, i32 0, i32* null, i32 0, i32 0, %struct.TYPE_22__* %91, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %72
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (%struct.TYPE_17__*, i8*, i32, ...) @ocs_log_err(%struct.TYPE_17__* %98, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %101, i32 %104)
  br label %106

106:                                              ; preds = %97, %72
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %110 = call i32 @ocs_hw_sequence_free(i32* %108, %struct.TYPE_20__* %109)
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %106, %55, %43, %30
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @ocs_assert(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ocs_log_err(%struct.TYPE_17__*, i8*, i32, ...) #1

declare dso_local i32 @ocs_hw_is_io_port_owned(i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @ocs_port_owned_abort(%struct.TYPE_17__*, %struct.TYPE_21__*) #1

declare dso_local i64 @ocs_scsi_recv_cmd_first_burst(%struct.TYPE_19__*, i32, i32*, i32, i32, %struct.TYPE_22__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ocs_hw_sequence_free(i32*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
