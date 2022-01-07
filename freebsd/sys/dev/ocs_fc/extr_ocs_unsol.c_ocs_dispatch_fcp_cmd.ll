; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_unsol.c_ocs_dispatch_fcp_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_unsol.c_ocs_dispatch_fcp_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_38__ = type { i32, %struct.TYPE_32__*, %struct.TYPE_33__* }
%struct.TYPE_32__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { %struct.TYPE_39__* }
%struct.TYPE_39__ = type { i32, i32, i64, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_37__ = type { i64, i32 }
%struct.TYPE_40__ = type { i32 }

@UINT64_MAX = common dso_local global i64 0, align 8
@OCS_SCSI_IO_ROLE_RESPONDER = common dso_local global i32 0, align 4
@OCS_HW_SEND_FRAME_CAPABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"ocs_sframe_send_task_set_full_or_busy failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"IO allocation failed ox_id %04x\0A\00", align 1
@FC_DFCTL_DEVICE_HDR_16_MASK = common dso_local global i32 0, align 4
@FC_DFCTL_ESP_HDR_MASK = common dso_local global i32 0, align 4
@FC_DFCTL_ESP_HDR_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"ESP Header present. Fix ESP Size.\0A\00", align 1
@FC_DFCTL_NETWORK_HDR_MASK = common dso_local global i32 0, align 4
@FC_DFCTL_NETWORK_HDR_SIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_36__*, %struct.TYPE_38__*)* @ocs_dispatch_fcp_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_dispatch_fcp_cmd(%struct.TYPE_36__* %0, %struct.TYPE_38__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_36__*, align 8
  %5 = alloca %struct.TYPE_38__*, align 8
  %6 = alloca %struct.TYPE_35__*, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca %struct.TYPE_39__*, align 8
  %9 = alloca %struct.TYPE_37__*, align 8
  %10 = alloca %struct.TYPE_40__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %4, align 8
  store %struct.TYPE_38__* %1, %struct.TYPE_38__** %5, align 8
  %17 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  store %struct.TYPE_35__* %19, %struct.TYPE_35__** %6, align 8
  %20 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_33__*, %struct.TYPE_33__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %24, align 8
  store %struct.TYPE_30__* %25, %struct.TYPE_30__** %7, align 8
  store %struct.TYPE_39__* null, %struct.TYPE_39__** %8, align 8
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %9, align 8
  %26 = load i64, i64* @UINT64_MAX, align 8
  store i64 %26, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %27 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_32__*, %struct.TYPE_32__** %28, align 8
  %30 = call i32 @ocs_assert(%struct.TYPE_32__* %29, i32 -1)
  %31 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_32__*, %struct.TYPE_32__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_39__*, %struct.TYPE_39__** %35, align 8
  store %struct.TYPE_39__* %36, %struct.TYPE_39__** %8, align 8
  %37 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %38 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %39 = call i64 @ocs_validate_fcp_cmd(%struct.TYPE_35__* %37, %struct.TYPE_38__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %176

42:                                               ; preds = %2
  %43 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @be64dec(i32 %45)
  %47 = call i64 @CAM_EXTLUN_BYTE_SWIZZLE(i32 %46)
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* @UINT64_MAX, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  store i32 -1, i32* %3, align 4
  br label %176

52:                                               ; preds = %42
  %53 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %54 = load i32, i32* @OCS_SCSI_IO_ROLE_RESPONDER, align 4
  %55 = call %struct.TYPE_37__* @ocs_scsi_io_alloc(%struct.TYPE_36__* %53, i32 %54)
  store %struct.TYPE_37__* %55, %struct.TYPE_37__** %9, align 8
  %56 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %57 = icmp eq %struct.TYPE_37__* %56, null
  br i1 %57, label %58, label %87

58:                                               ; preds = %52
  %59 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %59, i32 0, i32 0
  %61 = load i32, i32* @OCS_HW_SEND_FRAME_CAPABLE, align 4
  %62 = call i32 @ocs_hw_get(i32* %60, i32 %61, i32* %14)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %58
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %65
  %69 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %70 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %71 = call i32 @ocs_sframe_send_task_set_full_or_busy(%struct.TYPE_36__* %69, %struct.TYPE_38__* %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @ocs_log_test(%struct.TYPE_35__* %75, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %74, %68
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* %3, align 4
  br label %176

80:                                               ; preds = %65, %58
  %81 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %82 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ocs_be16toh(i32 %84)
  %86 = call i32 (%struct.TYPE_35__*, i8*, ...) @ocs_log_err(%struct.TYPE_35__* %81, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  store i32 -1, i32* %3, align 4
  br label %176

87:                                               ; preds = %52
  %88 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  %95 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* @FC_DFCTL_DEVICE_HDR_16_MASK, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %136

102:                                              ; preds = %87
  store i32 0, i32* %15, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @FC_DFCTL_ESP_HDR_MASK, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load i32, i32* @FC_DFCTL_ESP_HDR_SIZE, align 4
  %109 = load i32, i32* %15, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %15, align 4
  %111 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %112 = call i32 (%struct.TYPE_35__*, i8*, ...) @ocs_log_err(%struct.TYPE_35__* %111, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %113

113:                                              ; preds = %107, %102
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @FC_DFCTL_NETWORK_HDR_MASK, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load i32, i32* @FC_DFCTL_NETWORK_HDR_SIZE, align 4
  %120 = load i32, i32* %15, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %15, align 4
  br label %122

122:                                              ; preds = %118, %113
  %123 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %124 = bitcast %struct.TYPE_30__* %123 to i8*
  %125 = getelementptr inbounds i8, i8* %124, i64 8
  %126 = load i32, i32* %15, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = bitcast i8* %128 to %struct.TYPE_40__*
  store %struct.TYPE_40__* %129, %struct.TYPE_40__** %10, align 8
  %130 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @ocs_be32toh(i32 %132)
  %134 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  br label %136

136:                                              ; preds = %122, %87
  %137 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %138 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %139 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %140 = load i32, i32* @TRUE, align 4
  %141 = call i32 @ocs_populate_io_fcp_cmd(%struct.TYPE_37__* %137, %struct.TYPE_39__* %138, %struct.TYPE_30__* %139, i32 %140)
  %142 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %136
  %147 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %148 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %152 = load i64, i64* %12, align 8
  %153 = call i32 @ocs_dispatch_unsolicited_tmf(%struct.TYPE_37__* %147, i64 %150, %struct.TYPE_36__* %151, i64 %152)
  br label %171

154:                                              ; preds = %136
  %155 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %156 = call i32 @ocs_get_flags_fcp_cmd(%struct.TYPE_39__* %155)
  store i32 %156, i32* %16, align 4
  %157 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %158 = load i64, i64* %12, align 8
  %159 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = sext i32 %164 to i64
  %166 = mul i64 %165, 4
  %167 = add i64 4, %166
  %168 = trunc i64 %167 to i32
  %169 = load i32, i32* %16, align 4
  %170 = call i32 @ocs_scsi_recv_cmd(%struct.TYPE_37__* %157, i64 %158, i32 %161, i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %154, %146
  %172 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %175 = call i32 @ocs_hw_sequence_free(i32* %173, %struct.TYPE_38__* %174)
  store i32 0, i32* %3, align 4
  br label %176

176:                                              ; preds = %171, %80, %78, %51, %41
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local i32 @ocs_assert(%struct.TYPE_32__*, i32) #1

declare dso_local i64 @ocs_validate_fcp_cmd(%struct.TYPE_35__*, %struct.TYPE_38__*) #1

declare dso_local i64 @CAM_EXTLUN_BYTE_SWIZZLE(i32) #1

declare dso_local i32 @be64dec(i32) #1

declare dso_local %struct.TYPE_37__* @ocs_scsi_io_alloc(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @ocs_hw_get(i32*, i32, i32*) #1

declare dso_local i32 @ocs_sframe_send_task_set_full_or_busy(%struct.TYPE_36__*, %struct.TYPE_38__*) #1

declare dso_local i32 @ocs_log_test(%struct.TYPE_35__*, i8*, i32) #1

declare dso_local i32 @ocs_log_err(%struct.TYPE_35__*, i8*, ...) #1

declare dso_local i32 @ocs_be16toh(i32) #1

declare dso_local i64 @ocs_be32toh(i32) #1

declare dso_local i32 @ocs_populate_io_fcp_cmd(%struct.TYPE_37__*, %struct.TYPE_39__*, %struct.TYPE_30__*, i32) #1

declare dso_local i32 @ocs_dispatch_unsolicited_tmf(%struct.TYPE_37__*, i64, %struct.TYPE_36__*, i64) #1

declare dso_local i32 @ocs_get_flags_fcp_cmd(%struct.TYPE_39__*) #1

declare dso_local i32 @ocs_scsi_recv_cmd(%struct.TYPE_37__*, i64, i32, i32, i32) #1

declare dso_local i32 @ocs_hw_sequence_free(i32*, %struct.TYPE_38__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
