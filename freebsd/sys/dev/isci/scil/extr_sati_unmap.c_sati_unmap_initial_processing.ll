; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_unmap.c_sati_unmap_initial_processing.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_unmap.c_sati_unmap_initial_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, %struct.TYPE_11__*, i32, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64, i64, i32, i32*, i32, i32 }

@SATI_SEQUENCE_UNMAP = common dso_local global i32 0, align 4
@SATI_DEVICE_CAP_DSM_TRIM_SUPPORT = common dso_local global i32 0, align 4
@SCSI_STATUS_CHECK_CONDITION = common dso_local global i32 0, align 4
@SCSI_SENSE_ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SCSI_ASC_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@SCSI_ASCQ_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@SATI_FAILURE_CHECK_RESPONSE_DATA = common dso_local global i32 0, align 4
@SATI_SUCCESS = common dso_local global i32 0, align 4
@SATI_UNMAP_SIZEOF_SCSI_UNMAP_PARAMETER_LIST = common dso_local global i64 0, align 8
@SATI_UNMAP_SIZEOF_SCSI_UNMAP_BLOCK_DESCRIPTOR = common dso_local global i64 0, align 8
@SCSI_STATUS_BUSY = common dso_local global i32 0, align 4
@SCSI_SENSE_NO_SENSE = common dso_local global i32 0, align 4
@SCSI_ASC_NO_ADDITIONAL_SENSE = common dso_local global i32 0, align 4
@SCSI_ASCQ_NO_ADDITIONAL_SENSE = common dso_local global i32 0, align 4
@SATI_SEQUENCE_STATE_INCOMPLETE = common dso_local global i32 0, align 4
@SATI_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sati_unmap_initial_processing(%struct.TYPE_13__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca [8 x i32], align 16
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %8, align 8
  %18 = load i32, i32* @SATI_SEQUENCE_UNMAP, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SATI_DEVICE_CAP_DSM_TRIM_SUPPORT, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @SATI_DEVICE_CAP_DSM_TRIM_SUPPORT, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %3
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %34 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %35 = load i32, i32* @SCSI_ASC_INVALID_FIELD_IN_CDB, align 4
  %36 = load i32, i32* @SCSI_ASCQ_INVALID_FIELD_IN_CDB, align 4
  %37 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_13__* %31, i8* %32, i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %38, i32* %4, align 4
  br label %173

39:                                               ; preds = %3
  %40 = load i8*, i8** %6, align 8
  %41 = call i32* @sati_cb_get_cdb_address(i8* %40)
  store i32* %41, i32** %9, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @sati_get_cdb_byte(i32* %42, i32 7)
  %44 = shl i32 %43, 8
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @sati_get_cdb_byte(i32* %45, i32 8)
  %47 = or i32 %44, %46
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %10, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = load i32, i32* @SATI_SUCCESS, align 4
  store i32 %52, i32* %4, align 4
  br label %173

53:                                               ; preds = %39
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* @SATI_UNMAP_SIZEOF_SCSI_UNMAP_PARAMETER_LIST, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %61 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %62 = load i32, i32* @SCSI_ASC_INVALID_FIELD_IN_CDB, align 4
  %63 = load i32, i32* @SCSI_ASCQ_INVALID_FIELD_IN_CDB, align 4
  %64 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_13__* %58, i8* %59, i32 %60, i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %65, i32* %4, align 4
  br label %173

66:                                               ; preds = %53
  %67 = load i64, i64* %10, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  store i64 0, i64* %12, align 8
  br label %70

70:                                               ; preds = %81, %66
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* @SATI_UNMAP_SIZEOF_SCSI_UNMAP_PARAMETER_LIST, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %70
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* %12, align 8
  %79 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 %78
  %80 = call i32 @sati_get_data_byte(%struct.TYPE_13__* %75, i8* %76, i64 %77, i32* %79)
  br label %81

81:                                               ; preds = %74
  %82 = load i64, i64* %12, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %12, align 8
  br label %70

84:                                               ; preds = %70
  %85 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 2
  %86 = load i32, i32* %85, align 8
  %87 = shl i32 %86, 8
  %88 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 3
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %87, %89
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %11, align 8
  %92 = load i64, i64* %11, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %84
  %95 = load i32, i32* @SATI_SUCCESS, align 4
  store i32 %95, i32* %4, align 4
  br label %173

96:                                               ; preds = %84
  %97 = load i64, i64* %10, align 8
  %98 = load i64, i64* @SATI_UNMAP_SIZEOF_SCSI_UNMAP_PARAMETER_LIST, align 8
  %99 = sub i64 %97, %98
  %100 = load i64, i64* %11, align 8
  %101 = icmp ult i64 %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %96
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %106 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %107 = load i32, i32* @SCSI_ASC_INVALID_FIELD_IN_CDB, align 4
  %108 = load i32, i32* @SCSI_ASCQ_INVALID_FIELD_IN_CDB, align 4
  %109 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_13__* %103, i8* %104, i32 %105, i32 %106, i32 %107, i32 %108)
  %110 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %110, i32* %4, align 4
  br label %173

111:                                              ; preds = %96
  %112 = load i64, i64* %11, align 8
  %113 = load i64, i64* @SATI_UNMAP_SIZEOF_SCSI_UNMAP_BLOCK_DESCRIPTOR, align 8
  %114 = udiv i64 %112, %113
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %118 = call i64 @sati_unmap_get_max_buffer_size_in_blocks(%struct.TYPE_13__* %117)
  store i64 %118, i64* %13, align 8
  %119 = load i64, i64* %13, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = mul i64 %119, %124
  %126 = udiv i64 %125, 4
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  store i64 %126, i64* %128, align 8
  %129 = load i8*, i8** %6, align 8
  %130 = load i64, i64* %13, align 8
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = mul i64 %130, %135
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 4
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 6
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 5
  %143 = call i32 @sati_cb_allocate_dma_buffer(i8* %129, i64 %136, i32** %138, i32* %140, i32* %142)
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 4
  %146 = load i32*, i32** %145, align 8
  %147 = icmp eq i32* %146, null
  br i1 %147, label %148, label %157

148:                                              ; preds = %111
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %150 = load i8*, i8** %6, align 8
  %151 = load i32, i32* @SCSI_STATUS_BUSY, align 4
  %152 = load i32, i32* @SCSI_SENSE_NO_SENSE, align 4
  %153 = load i32, i32* @SCSI_ASC_NO_ADDITIONAL_SENSE, align 4
  %154 = load i32, i32* @SCSI_ASCQ_NO_ADDITIONAL_SENSE, align 4
  %155 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_13__* %149, i8* %150, i32 %151, i32 %152, i32 %153, i32 %154)
  %156 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %156, i32* %4, align 4
  br label %173

157:                                              ; preds = %111
  %158 = load i8*, i8** %6, align 8
  %159 = load i8*, i8** %7, align 8
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 3
  %162 = call i32 @sati_cb_sgl_next_sge(i8* %158, i8* %159, i32* null, i32* %161)
  %163 = load i64, i64* @SATI_UNMAP_SIZEOF_SCSI_UNMAP_PARAMETER_LIST, align 8
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 2
  store i64 %163, i64* %165, align 8
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %167 = load i8*, i8** %6, align 8
  %168 = call i32 @sati_unmap_load_next_descriptor(%struct.TYPE_13__* %166, i8* %167)
  %169 = load i32, i32* @SATI_SEQUENCE_STATE_INCOMPLETE, align 4
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 8
  %172 = load i32, i32* @SATI_COMPLETE, align 4
  store i32 %172, i32* %4, align 4
  br label %173

173:                                              ; preds = %157, %148, %102, %94, %57, %51, %30
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local i32 @sati_scsi_sense_data_construct(%struct.TYPE_13__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32* @sati_cb_get_cdb_address(i8*) #1

declare dso_local i32 @sati_get_cdb_byte(i32*, i32) #1

declare dso_local i32 @sati_get_data_byte(%struct.TYPE_13__*, i8*, i64, i32*) #1

declare dso_local i64 @sati_unmap_get_max_buffer_size_in_blocks(%struct.TYPE_13__*) #1

declare dso_local i32 @sati_cb_allocate_dma_buffer(i8*, i64, i32**, i32*, i32*) #1

declare dso_local i32 @sati_cb_sgl_next_sge(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @sati_unmap_load_next_descriptor(%struct.TYPE_13__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
