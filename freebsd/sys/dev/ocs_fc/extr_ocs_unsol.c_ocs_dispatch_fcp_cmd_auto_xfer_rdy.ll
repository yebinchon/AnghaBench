; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_unsol.c_ocs_dispatch_fcp_cmd_auto_xfer_rdy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_unsol.c_ocs_dispatch_fcp_cmd_auto_xfer_rdy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_38__ = type { %struct.TYPE_31__*, i32, i32, %struct.TYPE_32__*, %struct.TYPE_33__* }
%struct.TYPE_31__ = type { i32, %struct.TYPE_37__* }
%struct.TYPE_37__ = type { i32, %struct.TYPE_31__*, i32 }
%struct.TYPE_32__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { %struct.TYPE_39__* }
%struct.TYPE_39__ = type { i32, i32, i64, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_40__* }
%struct.TYPE_40__ = type { i32 }

@UINT64_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"IO is not Auto Xfr Rdy assisted, dropping FCP_CMND\0A\00", align 1
@OCS_SCSI_IO_ROLE_RESPONDER = common dso_local global i32 0, align 4
@OCS_HW_SEND_FRAME_CAPABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"ocs_sframe_send_task_set_full_or_busy failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"IO allocation failed ox_id %04x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"TMF flags set 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_36__*, %struct.TYPE_38__*)* @ocs_dispatch_fcp_cmd_auto_xfer_rdy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_dispatch_fcp_cmd_auto_xfer_rdy(%struct.TYPE_36__* %0, %struct.TYPE_38__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_36__*, align 8
  %5 = alloca %struct.TYPE_38__*, align 8
  %6 = alloca %struct.TYPE_35__*, align 8
  %7 = alloca %struct.TYPE_40__*, align 8
  %8 = alloca %struct.TYPE_39__*, align 8
  %9 = alloca %struct.TYPE_37__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %4, align 8
  store %struct.TYPE_38__* %1, %struct.TYPE_38__** %5, align 8
  %14 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  store %struct.TYPE_35__* %16, %struct.TYPE_35__** %6, align 8
  %17 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_33__*, %struct.TYPE_33__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_40__*, %struct.TYPE_40__** %21, align 8
  store %struct.TYPE_40__* %22, %struct.TYPE_40__** %7, align 8
  store %struct.TYPE_39__* null, %struct.TYPE_39__** %8, align 8
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %9, align 8
  %23 = load i32, i32* @UINT64_MAX, align 4
  store i32 %23, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %24 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %27 = call i32 @ocs_assert(%struct.TYPE_32__* %26, i32 -1)
  %28 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_32__*, %struct.TYPE_32__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_39__*, %struct.TYPE_39__** %32, align 8
  store %struct.TYPE_39__* %33, %struct.TYPE_39__** %8, align 8
  %34 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %35 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %36 = call i64 @ocs_validate_fcp_cmd(%struct.TYPE_35__* %34, %struct.TYPE_38__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %155

39:                                               ; preds = %2
  %40 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %46 = call i32 @node_printf(%struct.TYPE_36__* %45, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %155

47:                                               ; preds = %39
  %48 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @be64dec(i32 %50)
  %52 = call i32 @CAM_EXTLUN_BYTE_SWIZZLE(i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %54 = load i32, i32* @OCS_SCSI_IO_ROLE_RESPONDER, align 4
  %55 = call %struct.TYPE_37__* @ocs_scsi_io_alloc(%struct.TYPE_36__* %53, i32 %54)
  store %struct.TYPE_37__* %55, %struct.TYPE_37__** %9, align 8
  %56 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %57 = icmp eq %struct.TYPE_37__* %56, null
  br i1 %57, label %58, label %87

58:                                               ; preds = %47
  %59 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %59, i32 0, i32 0
  %61 = load i32, i32* @OCS_HW_SEND_FRAME_CAPABLE, align 4
  %62 = call i32 @ocs_hw_get(i32* %60, i32 %61, i64* %12)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %58
  %66 = load i64, i64* %12, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %65
  %69 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %70 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %71 = call i32 @ocs_sframe_send_task_set_full_or_busy(%struct.TYPE_36__* %69, %struct.TYPE_38__* %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @ocs_log_test(%struct.TYPE_35__* %75, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %74, %68
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %3, align 4
  br label %155

80:                                               ; preds = %65, %58
  %81 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %82 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @ocs_be16toh(i32 %84)
  %86 = call i32 @ocs_log_err(%struct.TYPE_35__* %81, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %85)
  store i32 -1, i32* %3, align 4
  br label %155

87:                                               ; preds = %47
  %88 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %94 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %95 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %96 = load i32, i32* @FALSE, align 4
  %97 = call i32 @ocs_populate_io_fcp_cmd(%struct.TYPE_37__* %93, %struct.TYPE_39__* %94, %struct.TYPE_40__* %95, i32 %96)
  %98 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %87
  %103 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %104 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @ocs_log_err(%struct.TYPE_35__* %103, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %106)
  %108 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %109 = call i32 @ocs_scsi_io_free(%struct.TYPE_37__* %108)
  store i32 -1, i32* %3, align 4
  br label %155

110:                                              ; preds = %87
  %111 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %112 = call i64 @ocs_get_flags_fcp_cmd(%struct.TYPE_39__* %111)
  store i64 %112, i64* %13, align 8
  %113 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_31__*, %struct.TYPE_31__** %116, align 8
  %118 = call i32 @ocs_hw_io_activate_port_owned(i32* %114, %struct.TYPE_31__* %117)
  %119 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_31__*, %struct.TYPE_31__** %120, align 8
  %122 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %122, i32 0, i32 1
  store %struct.TYPE_31__* %121, %struct.TYPE_31__** %123, align 8
  %124 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %125 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_31__*, %struct.TYPE_31__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %127, i32 0, i32 1
  store %struct.TYPE_37__* %124, %struct.TYPE_37__** %128, align 8
  %129 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_31__*, %struct.TYPE_31__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = mul i64 %144, 8
  %146 = add i64 4, %145
  %147 = trunc i64 %146 to i32
  %148 = load i64, i64* %13, align 8
  %149 = call i32 @ocs_scsi_recv_cmd_first_burst(%struct.TYPE_37__* %136, i32 %137, i32 %140, i32 %147, i64 %148, i32* null, i32 0)
  br label %150

150:                                              ; preds = %110
  %151 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %154 = call i32 @ocs_hw_sequence_free(i32* %152, %struct.TYPE_38__* %153)
  store i32 0, i32* %3, align 4
  br label %155

155:                                              ; preds = %150, %102, %80, %78, %44, %38
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32 @ocs_assert(%struct.TYPE_32__*, i32) #1

declare dso_local i64 @ocs_validate_fcp_cmd(%struct.TYPE_35__*, %struct.TYPE_38__*) #1

declare dso_local i32 @node_printf(%struct.TYPE_36__*, i8*) #1

declare dso_local i32 @CAM_EXTLUN_BYTE_SWIZZLE(i32) #1

declare dso_local i32 @be64dec(i32) #1

declare dso_local %struct.TYPE_37__* @ocs_scsi_io_alloc(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @ocs_hw_get(i32*, i32, i64*) #1

declare dso_local i32 @ocs_sframe_send_task_set_full_or_busy(%struct.TYPE_36__*, %struct.TYPE_38__*) #1

declare dso_local i32 @ocs_log_test(%struct.TYPE_35__*, i8*, i32) #1

declare dso_local i32 @ocs_log_err(%struct.TYPE_35__*, i8*, i64) #1

declare dso_local i64 @ocs_be16toh(i32) #1

declare dso_local i32 @ocs_populate_io_fcp_cmd(%struct.TYPE_37__*, %struct.TYPE_39__*, %struct.TYPE_40__*, i32) #1

declare dso_local i32 @ocs_scsi_io_free(%struct.TYPE_37__*) #1

declare dso_local i64 @ocs_get_flags_fcp_cmd(%struct.TYPE_39__*) #1

declare dso_local i32 @ocs_hw_io_activate_port_owned(i32*, %struct.TYPE_31__*) #1

declare dso_local i32 @ocs_scsi_recv_cmd_first_burst(%struct.TYPE_37__*, i32, i32, i32, i64, i32*, i32) #1

declare dso_local i32 @ocs_hw_sequence_free(i32*, %struct.TYPE_38__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
