; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_mode_sense.c_sati_mode_sense_is_page_code_supported.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_mode_sense.c_sati_mode_sense_is_page_code_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@SCSI_MODE_SENSE_PAGE_CODE_ENABLE = common dso_local global i32 0, align 4
@SCSI_MODE_SENSE_6 = common dso_local global i32 0, align 4
@SATI_SEQUENCE_MODE_SENSE_6_CACHING = common dso_local global i32 0, align 4
@SATI_SEQUENCE_MODE_SENSE_10_CACHING = common dso_local global i32 0, align 4
@SATI_SEQUENCE_MODE_SENSE_6_ALL_PAGES = common dso_local global i32 0, align 4
@SATI_SEQUENCE_MODE_SENSE_10_ALL_PAGES = common dso_local global i32 0, align 4
@SATI_SEQUENCE_MODE_SENSE_6_READ_WRITE_ERROR = common dso_local global i32 0, align 4
@SATI_SEQUENCE_MODE_SENSE_10_READ_WRITE_ERROR = common dso_local global i32 0, align 4
@SATI_SEQUENCE_MODE_SENSE_6_DISCONNECT_RECONNECT = common dso_local global i32 0, align 4
@SATI_SEQUENCE_MODE_SENSE_10_DISCONNECT_RECONNECT = common dso_local global i32 0, align 4
@SATI_SEQUENCE_MODE_SENSE_6_CONTROL = common dso_local global i32 0, align 4
@SATI_SEQUENCE_MODE_SENSE_10_CONTROL = common dso_local global i32 0, align 4
@SATI_SEQUENCE_MODE_SENSE_6_POWER_CONDITION = common dso_local global i32 0, align 4
@SATI_SEQUENCE_MODE_SENSE_10_POWER_CONDITION = common dso_local global i32 0, align 4
@SATI_DEVICE_CAP_SMART_SUPPORT = common dso_local global i32 0, align 4
@SCSI_STATUS_CHECK_CONDITION = common dso_local global i32 0, align 4
@SCSI_SENSE_ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SCSI_ASC_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@SCSI_ASCQ_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@SCSI_ASC_INVALID_FIELD_IN_PARM_LIST = common dso_local global i32 0, align 4
@SCSI_ASCQ_INVALID_FIELD_IN_PARM_LIST = common dso_local global i32 0, align 4
@SATI_FAILURE_CHECK_RESPONSE_DATA = common dso_local global i32 0, align 4
@SATI_SEQUENCE_MODE_SENSE_6_INFORMATIONAL_EXCP_CONTROL = common dso_local global i32 0, align 4
@SATI_SEQUENCE_MODE_SENSE_10_INFORMATIONAL_EXCP_CONTROL = common dso_local global i32 0, align 4
@SATI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i32)* @sati_mode_sense_is_page_code_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sati_mode_sense_is_page_code_supported(%struct.TYPE_6__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = call i32* @sati_cb_get_cdb_address(i8* %9)
  store i32* %10, i32** %8, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = call i32 @sati_get_cdb_byte(i32* %11, i32 2)
  %13 = load i32, i32* @SCSI_MODE_SENSE_PAGE_CODE_ENABLE, align 4
  %14 = and i32 %12, %13
  switch i32 %14, label %145 [
    i32 133, label %15
    i32 134, label %29
    i32 128, label %43
    i32 131, label %57
    i32 132, label %71
    i32 129, label %85
    i32 130, label %99
  ]

15:                                               ; preds = %3
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @sati_get_cdb_byte(i32* %16, i32 0)
  %18 = load i32, i32* @SCSI_MODE_SENSE_6, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @SATI_SEQUENCE_MODE_SENSE_6_CACHING, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  br label %28

24:                                               ; preds = %15
  %25 = load i32, i32* @SATI_SEQUENCE_MODE_SENSE_10_CACHING, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %24, %20
  br label %154

29:                                               ; preds = %3
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @sati_get_cdb_byte(i32* %30, i32 0)
  %32 = load i32, i32* @SCSI_MODE_SENSE_6, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @SATI_SEQUENCE_MODE_SENSE_6_ALL_PAGES, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  br label %42

38:                                               ; preds = %29
  %39 = load i32, i32* @SATI_SEQUENCE_MODE_SENSE_10_ALL_PAGES, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %38, %34
  br label %154

43:                                               ; preds = %3
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @sati_get_cdb_byte(i32* %44, i32 0)
  %46 = load i32, i32* @SCSI_MODE_SENSE_6, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @SATI_SEQUENCE_MODE_SENSE_6_READ_WRITE_ERROR, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %56

52:                                               ; preds = %43
  %53 = load i32, i32* @SATI_SEQUENCE_MODE_SENSE_10_READ_WRITE_ERROR, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %52, %48
  br label %154

57:                                               ; preds = %3
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @sati_get_cdb_byte(i32* %58, i32 0)
  %60 = load i32, i32* @SCSI_MODE_SENSE_6, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* @SATI_SEQUENCE_MODE_SENSE_6_DISCONNECT_RECONNECT, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %70

66:                                               ; preds = %57
  %67 = load i32, i32* @SATI_SEQUENCE_MODE_SENSE_10_DISCONNECT_RECONNECT, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %66, %62
  br label %154

71:                                               ; preds = %3
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @sati_get_cdb_byte(i32* %72, i32 0)
  %74 = load i32, i32* @SCSI_MODE_SENSE_6, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32, i32* @SATI_SEQUENCE_MODE_SENSE_6_CONTROL, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  br label %84

80:                                               ; preds = %71
  %81 = load i32, i32* @SATI_SEQUENCE_MODE_SENSE_10_CONTROL, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %80, %76
  br label %154

85:                                               ; preds = %3
  %86 = load i32*, i32** %8, align 8
  %87 = call i32 @sati_get_cdb_byte(i32* %86, i32 0)
  %88 = load i32, i32* @SCSI_MODE_SENSE_6, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i32, i32* @SATI_SEQUENCE_MODE_SENSE_6_POWER_CONDITION, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  br label %98

94:                                               ; preds = %85
  %95 = load i32, i32* @SATI_SEQUENCE_MODE_SENSE_10_POWER_CONDITION, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %94, %90
  br label %154

99:                                               ; preds = %3
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @SATI_DEVICE_CAP_SMART_SUPPORT, align 4
  %106 = or i32 %104, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %131

108:                                              ; preds = %99
  %109 = load i32*, i32** %8, align 8
  %110 = call i32 @sati_get_cdb_byte(i32* %109, i32 0)
  %111 = load i32, i32* @SCSI_MODE_SENSE_6, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %108
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %115 = load i8*, i8** %6, align 8
  %116 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %117 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %118 = load i32, i32* @SCSI_ASC_INVALID_FIELD_IN_CDB, align 4
  %119 = load i32, i32* @SCSI_ASCQ_INVALID_FIELD_IN_CDB, align 4
  %120 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_6__* %114, i8* %115, i32 %116, i32 %117, i32 %118, i32 %119)
  br label %129

121:                                              ; preds = %108
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %123 = load i8*, i8** %6, align 8
  %124 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %125 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %126 = load i32, i32* @SCSI_ASC_INVALID_FIELD_IN_PARM_LIST, align 4
  %127 = load i32, i32* @SCSI_ASCQ_INVALID_FIELD_IN_PARM_LIST, align 4
  %128 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_6__* %122, i8* %123, i32 %124, i32 %125, i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %121, %113
  %130 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %130, i32* %4, align 4
  br label %156

131:                                              ; preds = %99
  %132 = load i32*, i32** %8, align 8
  %133 = call i32 @sati_get_cdb_byte(i32* %132, i32 0)
  %134 = load i32, i32* @SCSI_MODE_SENSE_6, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %131
  %137 = load i32, i32* @SATI_SEQUENCE_MODE_SENSE_6_INFORMATIONAL_EXCP_CONTROL, align 4
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  br label %144

140:                                              ; preds = %131
  %141 = load i32, i32* @SATI_SEQUENCE_MODE_SENSE_10_INFORMATIONAL_EXCP_CONTROL, align 4
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  br label %144

144:                                              ; preds = %140, %136
  br label %154

145:                                              ; preds = %3
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %147 = load i8*, i8** %6, align 8
  %148 = load i32, i32* @SCSI_STATUS_CHECK_CONDITION, align 4
  %149 = load i32, i32* @SCSI_SENSE_ILLEGAL_REQUEST, align 4
  %150 = load i32, i32* @SCSI_ASC_INVALID_FIELD_IN_CDB, align 4
  %151 = load i32, i32* @SCSI_ASCQ_INVALID_FIELD_IN_CDB, align 4
  %152 = call i32 @sati_scsi_sense_data_construct(%struct.TYPE_6__* %146, i8* %147, i32 %148, i32 %149, i32 %150, i32 %151)
  %153 = load i32, i32* @SATI_FAILURE_CHECK_RESPONSE_DATA, align 4
  store i32 %153, i32* %4, align 4
  br label %156

154:                                              ; preds = %144, %98, %84, %70, %56, %42, %28
  %155 = load i32, i32* @SATI_SUCCESS, align 4
  store i32 %155, i32* %4, align 4
  br label %156

156:                                              ; preds = %154, %145, %129
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local i32* @sati_cb_get_cdb_address(i8*) #1

declare dso_local i32 @sati_get_cdb_byte(i32*, i32) #1

declare dso_local i32 @sati_scsi_sense_data_construct(%struct.TYPE_6__*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
