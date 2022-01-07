; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_mode_select.c_sati_mode_select_translate_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_mode_select.c_sati_mode_select_translate_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32 }

@SATI_FAILURE_CHECK_RESPONSE_DATA = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@SATI_SEQUENCE_STATE_INITIAL = common dso_local global i64 0, align 8
@SATI_SEQUENCE_STATE_TRANSLATE_DATA = common dso_local global i64 0, align 8
@SCSI_STATUS_CHECK_CONDITION = common dso_local global i32 0, align 4
@SCSI_SENSE_ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SCSI_ASC_INVALID_FIELD_IN_PARM_LIST = common dso_local global i32 0, align 4
@SCSI_ASCQ_INVALID_FIELD_IN_PARM_LIST = common dso_local global i32 0, align 4
@SATI_SEQUENCE_STATE_FINAL = common dso_local global i8* null, align 8
@SATI_SEQUENCE_STATE_INCOMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*, i8*, i8*, i32)* @sati_mode_select_translate_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sati_mode_select_translate_command(%struct.TYPE_11__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [8 x i32], align 16
  %16 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i64, i64* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 8
  store i64 %17, i64* %10, align 8
  %18 = bitcast [8 x i32]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 32, i1 false)
  %19 = load i8*, i8** %7, align 8
  %20 = call i32* @sati_cb_get_cdb_address(i8* %19)
  store i32* %20, i32** %16, align 8
  %21 = load i32, i32* @FALSE, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 6
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %25, 10
  br label %27

27:                                               ; preds = %24, %4
  %28 = phi i1 [ true, %4 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  %30 = icmp eq i32 %21, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i64, i64* %10, align 8
  store i64 %32, i64* %5, align 8
  br label %179

33:                                               ; preds = %27
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SATI_SEQUENCE_STATE_INITIAL, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load i64, i64* @SATI_SEQUENCE_STATE_TRANSLATE_DATA, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %39, %33
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %123

54:                                               ; preds = %47
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, 6
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32*, i32** %16, align 8
  %59 = call i32 @sati_get_cdb_byte(i32* %58, i32 4)
  store i32 %59, i32* %14, align 4
  br label %67

60:                                               ; preds = %54
  %61 = load i32*, i32** %16, align 8
  %62 = call i32 @sati_get_cdb_byte(i32* %61, i32 7)
  %63 = shl i32 %62, 8
  %64 = load i32*, i32** %16, align 8
  %65 = call i32 @sati_get_cdb_byte(i32* %64, i32 8)
  %66 = add nsw i32 %63, %65
  store i32 %66, i32* %14, align 4
  br label %67

67:                                               ; preds = %60, %57
  %68 = load i32, i32* %14, align 4
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  store i32 0, i32* %13, align 4
  br label %71

71:                                               ; preds = %82, %67
  %72 = load i32, i32* %13, align 4
  %73 = icmp slt i32 %72, 8
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 %79
  %81 = call i32 @sati_get_data_byte(%struct.TYPE_11__* %75, i8* %76, i32 %77, i32* %80)
  br label %82

82:                                               ; preds = %74
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %13, align 4
  br label %71

85:                                               ; preds = %71
  %86 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %87 = load i32, i32* %9, align 4
  %88 = call i64 @sati_mode_select_get_medium_type(i32* %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %85
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %94 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %95 = load i32, i32* @SCSI_ASC_INVALID_FIELD_IN_PARM_LIST, align 4
  %96 = load i32, i32* @SCSI_ASCQ_INVALID_FIELD_IN_PARM_LIST, align 4
  %97 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_11__* %91, i8* %92, i32 %93, i32 %94, i32 %95, i32 %96)
  %98 = load i64, i64* %10, align 8
  store i64 %98, i64* %5, align 8
  br label %179

99:                                               ; preds = %85
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @sati_mode_select_get_mode_block_descriptor_length(i32* %100, i32 %101)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @sati_mode_select_get_mode_page_offset(i32 %103, i32 %104)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %99
  %110 = load i8*, i8** @SATI_SEQUENCE_STATE_FINAL, align 8
  %111 = ptrtoint i8* %110 to i64
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load i64, i64* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 8
  store i64 %114, i64* %10, align 8
  br label %122

115:                                              ; preds = %99
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %117 = load i8*, i8** %7, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @sati_mode_select_initialize_mode_sel_processing_state(%struct.TYPE_11__* %116, i8* %117, i8* %118, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %115, %109
  br label %123

123:                                              ; preds = %122, %47
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %123
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  store i64 0, i64* %134, align 8
  %135 = load i32, i32* @FALSE, align 4
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  store i32 %135, i32* %139, align 8
  br label %140

140:                                              ; preds = %130, %123
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %142 = load i8*, i8** %7, align 8
  %143 = load i8*, i8** %8, align 8
  %144 = call i64 @sati_mode_select_process_mode_page(%struct.TYPE_11__* %141, i8* %142, i8* %143)
  store i64 %144, i64* %10, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @FALSE, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %140
  %153 = load i8*, i8** @SATI_SEQUENCE_STATE_FINAL, align 8
  %154 = ptrtoint i8* %153 to i64
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  store i64 %154, i64* %156, align 8
  br label %161

157:                                              ; preds = %140
  %158 = load i64, i64* @SATI_SEQUENCE_STATE_INCOMPLETE, align 8
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  store i64 %158, i64* %160, align 8
  br label %161

161:                                              ; preds = %157, %152
  %162 = load i64, i64* %10, align 8
  %163 = load i64, i64* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %177

165:                                              ; preds = %161
  %166 = load i8*, i8** @SATI_SEQUENCE_STATE_FINAL, align 8
  %167 = ptrtoint i8* %166 to i64
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  store i64 %167, i64* %169, align 8
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %171 = load i8*, i8** %7, align 8
  %172 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %173 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %174 = load i32, i32* @SCSI_ASC_INVALID_FIELD_IN_PARM_LIST, align 4
  %175 = load i32, i32* @SCSI_ASCQ_INVALID_FIELD_IN_PARM_LIST, align 4
  %176 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_11__* %170, i8* %171, i32 %172, i32 %173, i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %165, %161
  %178 = load i64, i64* %10, align 8
  store i64 %178, i64* %5, align 8
  br label %179

179:                                              ; preds = %177, %90, %31
  %180 = load i64, i64* %5, align 8
  ret i64 %180
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @sati_cb_get_cdb_address(i8*) #2

declare dso_local i32 @sati_get_cdb_byte(i32*, i32) #2

declare dso_local i32 @sati_get_data_byte(%struct.TYPE_11__*, i8*, i32, i32*) #2

declare dso_local i64 @sati_mode_select_get_medium_type(i32*, i32) #2

declare dso_local i32 @sati_scsi_sense_data_construct(%struct.TYPE_11__*, i8*, i32, i32, i32, i32) #2

declare dso_local i32 @sati_mode_select_get_mode_block_descriptor_length(i32*, i32) #2

declare dso_local i32 @sati_mode_select_get_mode_page_offset(i32, i32) #2

declare dso_local i32 @sati_mode_select_initialize_mode_sel_processing_state(%struct.TYPE_11__*, i8*, i8*, i32, i32) #2

declare dso_local i64 @sati_mode_select_process_mode_page(%struct.TYPE_11__*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
