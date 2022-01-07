; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_scsi.c_ocs_target_io_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_scsi.c_ocs_target_io_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64, i32 (%struct.TYPE_11__*, i32, i32, i32)*, i32, %struct.TYPE_11__*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }

@OCS_SCSI_STATUS_GOOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"status x%x ext_status x%x\0A\00", align 1
@OCS_SCSI_IO_CMPL_RSP_SENT = common dso_local global i32 0, align 4
@OCS_SCSI_IO_CMPL = common dso_local global i32 0, align 4
@SLI4_FC_DI_ERROR_GE = common dso_local global i32 0, align 4
@OCS_SCSI_STATUS_DIF_GUARD_ERROR = common dso_local global i32 0, align 4
@SLI4_FC_DI_ERROR_AE = common dso_local global i32 0, align 4
@OCS_SCSI_STATUS_DIF_APP_TAG_ERROR = common dso_local global i32 0, align 4
@SLI4_FC_DI_ERROR_RE = common dso_local global i32 0, align 4
@OCS_SCSI_STATUS_DIF_REF_TAG_ERROR = common dso_local global i32 0, align 4
@SLI4_FC_DI_ERROR_EDIR = common dso_local global i32 0, align 4
@SLI4_FC_DI_ERROR_TDPV = common dso_local global i32 0, align 4
@SLI4_DIF_PASS_THROUGH = common dso_local global i32 0, align 4
@OCS_HW_SGE_DIF_OP_IN_RAW_OUT_RAW = common dso_local global i32 0, align 4
@OCS_SCSI_STATUS_ABORTED = common dso_local global i32 0, align 4
@OCS_SCSI_STATUS_NEXUS_LOST = common dso_local global i32 0, align 4
@OCS_SCSI_STATUS_NO_IO = common dso_local global i32 0, align 4
@OCS_SCSI_STATUS_ERROR = common dso_local global i32 0, align 4
@OCS_SCSI_STATUS_TIMEDOUT_AND_ABORTED = common dso_local global i32 0, align 4
@OCS_SCSI_STATUS_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32, i8*)* @ocs_target_io_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocs_target_io_cb(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_12__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32 (%struct.TYPE_11__*, i32, i32, i32)*, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %13, align 8
  %25 = load i32, i32* @OCS_SCSI_STATUS_GOOD, align 4
  store i32 %25, i32* %15, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 6
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %19, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %29 = call i32 @ocs_assert(%struct.TYPE_11__* %28)
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @scsi_io_trace(%struct.TYPE_11__* %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 5
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  store %struct.TYPE_11__* %36, %struct.TYPE_11__** %14, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %38 = call i32 @ocs_assert(%struct.TYPE_11__* %37)
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %40 = call i32 @ocs_scsi_io_free_ovfl(%struct.TYPE_11__* %39)
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 3
  %48 = load i32 (%struct.TYPE_11__*, i32, i32, i32)*, i32 (%struct.TYPE_11__*, i32, i32, i32)** %47, align 8
  %49 = icmp ne i32 (%struct.TYPE_11__*, i32, i32, i32)* %48, null
  br i1 %49, label %50, label %183

50:                                               ; preds = %6
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 3
  %53 = load i32 (%struct.TYPE_11__*, i32, i32, i32)*, i32 (%struct.TYPE_11__*, i32, i32, i32)** %52, align 8
  store i32 (%struct.TYPE_11__*, i32, i32, i32)* %53, i32 (%struct.TYPE_11__*, i32, i32, i32)** %21, align 8
  store i32 0, i32* %22, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 3
  store i32 (%struct.TYPE_11__*, i32, i32, i32)* null, i32 (%struct.TYPE_11__*, i32, i32, i32)** %55, align 8
  %56 = load i32, i32* %10, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %50
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @OCS_SCSI_IO_CMPL_RSP_SENT, align 4
  %65 = load i32, i32* %22, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %22, align 4
  br label %71

67:                                               ; preds = %58, %50
  %68 = load i32, i32* @OCS_SCSI_IO_CMPL, align 4
  %69 = load i32, i32* %22, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %22, align 4
  br label %71

71:                                               ; preds = %67, %63
  %72 = load i32, i32* %10, align 4
  switch i32 %72, label %172 [
    i32 129, label %73
    i32 132, label %75
    i32 131, label %157
    i32 128, label %168
    i32 130, label %170
  ]

73:                                               ; preds = %71
  %74 = load i32, i32* @OCS_SCSI_STATUS_GOOD, align 4
  store i32 %74, i32* %15, align 4
  br label %174

75:                                               ; preds = %71
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @SLI4_FC_DI_ERROR_GE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* @OCS_SCSI_STATUS_DIF_GUARD_ERROR, align 4
  store i32 %81, i32* %15, align 4
  br label %156

82:                                               ; preds = %75
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @SLI4_FC_DI_ERROR_AE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* @OCS_SCSI_STATUS_DIF_APP_TAG_ERROR, align 4
  store i32 %88, i32* %15, align 4
  br label %155

89:                                               ; preds = %82
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @SLI4_FC_DI_ERROR_RE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* @OCS_SCSI_STATUS_DIF_REF_TAG_ERROR, align 4
  store i32 %95, i32* %15, align 4
  br label %154

96:                                               ; preds = %89
  %97 = load i32, i32* %11, align 4
  %98 = ashr i32 %97, 16
  %99 = and i32 %98, 65535
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @SLI4_FC_DI_ERROR_EDIR, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  store i32 %106, i32* %17, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @SLI4_FC_DI_ERROR_TDPV, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  store i32 %113, i32* %18, align 4
  %114 = load i32, i32* %17, align 4
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %116 = call i32 @ocs_scsi_dif_guard_is_crc(i32 %114, %struct.TYPE_12__* %115)
  store i32 %116, i32* %20, align 4
  %117 = load i32, i32* %17, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %96
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %20, align 4
  %125 = call i32 @ocs_scsi_dif_check_unknown(%struct.TYPE_11__* %120, i32 0, i32 %123, i32 %124)
  store i32 %125, i32* %15, align 4
  br label %153

126:                                              ; preds = %96
  %127 = load i32, i32* %16, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %150

129:                                              ; preds = %126
  %130 = load i32, i32* %18, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %150

132:                                              ; preds = %129
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @SLI4_DIF_PASS_THROUGH, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %150

138:                                              ; preds = %132
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @OCS_HW_SGE_DIF_OP_IN_RAW_OUT_RAW, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %138
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %16, align 4
  %148 = load i32, i32* %20, align 4
  %149 = call i32 @ocs_scsi_dif_check_unknown(%struct.TYPE_11__* %145, i32 %146, i32 %147, i32 %148)
  store i32 %149, i32* %15, align 4
  br label %152

150:                                              ; preds = %138, %132, %129, %126
  %151 = load i32, i32* @OCS_SCSI_STATUS_DIF_GUARD_ERROR, align 4
  store i32 %151, i32* %15, align 4
  br label %152

152:                                              ; preds = %150, %144
  br label %153

153:                                              ; preds = %152, %119
  br label %154

154:                                              ; preds = %153, %94
  br label %155

155:                                              ; preds = %154, %87
  br label %156

156:                                              ; preds = %155, %80
  br label %174

157:                                              ; preds = %71
  %158 = load i32, i32* %11, align 4
  switch i32 %158, label %165 [
    i32 135, label %159
    i32 136, label %159
    i32 134, label %161
    i32 133, label %163
  ]

159:                                              ; preds = %157, %157
  %160 = load i32, i32* @OCS_SCSI_STATUS_ABORTED, align 4
  store i32 %160, i32* %15, align 4
  br label %167

161:                                              ; preds = %157
  %162 = load i32, i32* @OCS_SCSI_STATUS_NEXUS_LOST, align 4
  store i32 %162, i32* %15, align 4
  br label %167

163:                                              ; preds = %157
  %164 = load i32, i32* @OCS_SCSI_STATUS_NO_IO, align 4
  store i32 %164, i32* %15, align 4
  br label %167

165:                                              ; preds = %157
  %166 = load i32, i32* @OCS_SCSI_STATUS_ERROR, align 4
  store i32 %166, i32* %15, align 4
  br label %167

167:                                              ; preds = %165, %163, %161, %159
  br label %174

168:                                              ; preds = %71
  %169 = load i32, i32* @OCS_SCSI_STATUS_TIMEDOUT_AND_ABORTED, align 4
  store i32 %169, i32* %15, align 4
  br label %174

170:                                              ; preds = %71
  %171 = load i32, i32* @OCS_SCSI_STATUS_SHUTDOWN, align 4
  store i32 %171, i32* %15, align 4
  br label %174

172:                                              ; preds = %71
  %173 = load i32, i32* @OCS_SCSI_STATUS_ERROR, align 4
  store i32 %173, i32* %15, align 4
  br label %174

174:                                              ; preds = %172, %170, %168, %167, %156, %73
  %175 = load i32 (%struct.TYPE_11__*, i32, i32, i32)*, i32 (%struct.TYPE_11__*, i32, i32, i32)** %21, align 8
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %177 = load i32, i32* %15, align 4
  %178 = load i32, i32* %22, align 4
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 %175(%struct.TYPE_11__* %176, i32 %177, i32 %178, i32 %181)
  br label %183

183:                                              ; preds = %174, %6
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %185 = call i32 @ocs_scsi_check_pending(%struct.TYPE_11__* %184)
  ret void
}

declare dso_local i32 @ocs_assert(%struct.TYPE_11__*) #1

declare dso_local i32 @scsi_io_trace(%struct.TYPE_11__*, i8*, i32, i32) #1

declare dso_local i32 @ocs_scsi_io_free_ovfl(%struct.TYPE_11__*) #1

declare dso_local i32 @ocs_scsi_dif_guard_is_crc(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @ocs_scsi_dif_check_unknown(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @ocs_scsi_check_pending(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
