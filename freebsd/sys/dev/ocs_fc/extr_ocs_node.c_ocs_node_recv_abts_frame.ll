; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_node.c_ocs_node_recv_abts_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_node.c_ocs_node_recv_abts_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_31__ = type { i32, i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i32, i32, i32, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_24__*, i32, %struct.TYPE_26__* }
%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_29__*, %struct.TYPE_28__*, i32 }

@.str = private unnamed_addr constant [27 x i8] c"IO not found (ox_id %04x)\0A\00", align 1
@OCS_HW_SEND_FRAME_CAPABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"ocs_bls_acc_send_frame failed\0A\00", align 1
@OCS_SCSI_IO_ROLE_RESPONDER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@OCS_EVT_ABTS_RCVD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [87 x i8] c"SCSI IO allocation failed for ABTS received s_id %06x d_id %06x ox_id %04x rx_id %04x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ocs_node_recv_abts_frame(%struct.TYPE_29__* %0, %struct.TYPE_31__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_32__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_30__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %4, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %5, align 8
  %14 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  store %struct.TYPE_28__* %16, %struct.TYPE_28__** %6, align 8
  %17 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  store %struct.TYPE_27__* %19, %struct.TYPE_27__** %7, align 8
  %20 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_32__*, %struct.TYPE_32__** %24, align 8
  store %struct.TYPE_32__* %25, %struct.TYPE_32__** %8, align 8
  %26 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ocs_be16toh(i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ocs_be16toh(i32 %32)
  store i32 %33, i32* %10, align 4
  store i64 0, i64* %12, align 8
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %39 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32* @ocs_io_find_tgt_io(%struct.TYPE_28__* %38, %struct.TYPE_29__* %39, i32 %40, i32 %41)
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %69

44:                                               ; preds = %2
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @ocs_log_debug(%struct.TYPE_28__* %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %48, i32 0, i32 0
  %50 = load i32, i32* @OCS_HW_SEND_FRAME_CAPABLE, align 4
  %51 = call i64 @ocs_hw_get(i32* %49, i32 %50, i64* %13)
  store i64 %51, i64* %12, align 8
  %52 = load i64, i64* %12, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %44
  %55 = load i64, i64* %13, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %59 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %60 = call i64 @ocs_sframe_send_bls_acc(%struct.TYPE_29__* %58, %struct.TYPE_31__* %59)
  store i64 %60, i64* %12, align 8
  %61 = load i64, i64* %12, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %65 = call i32 @ocs_log_test(%struct.TYPE_28__* %64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %57
  %67 = load i64, i64* %12, align 8
  store i64 %67, i64* %3, align 8
  br label %138

68:                                               ; preds = %54, %44
  br label %69

69:                                               ; preds = %68, %2
  %70 = call i32 @ocs_memset(%struct.TYPE_30__* %11, i32 0, i32 24)
  %71 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 2
  store %struct.TYPE_26__* %73, %struct.TYPE_26__** %74, align 8
  %75 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 1
  store i32 %77, i32* %78, align 8
  %79 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %80 = load i32, i32* @OCS_SCSI_IO_ROLE_RESPONDER, align 4
  %81 = call %struct.TYPE_24__* @ocs_scsi_io_alloc(%struct.TYPE_29__* %79, i32 %80)
  %82 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 0
  store %struct.TYPE_24__* %81, %struct.TYPE_24__** %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 0
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %83, align 8
  %85 = icmp ne %struct.TYPE_24__* %84, null
  br i1 %85, label %86, label %111

86:                                               ; preds = %69
  %87 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 0
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 4
  store i32 %89, i32* %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 0
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  %96 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 0
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 3
  store %struct.TYPE_28__* %96, %struct.TYPE_28__** %99, align 8
  %100 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 0
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 2
  store %struct.TYPE_29__* %100, %struct.TYPE_29__** %103, align 8
  %104 = load i32, i32* @TRUE, align 4
  %105 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 0
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 1
  store i32 %104, i32* %107, align 4
  %108 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %109 = load i32, i32* @OCS_EVT_ABTS_RCVD, align 4
  %110 = call i32 @ocs_node_post_event(%struct.TYPE_29__* %108, i32 %109, %struct.TYPE_30__* %11)
  br label %133

111:                                              ; preds = %69
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 0
  %114 = call i32 @ocs_atomic_add_return(i32* %113, i32 1)
  %115 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %116 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @fc_be24toh(i32 %118)
  %120 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @fc_be24toh(i32 %122)
  %124 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @ocs_be16toh(i32 %126)
  %128 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @ocs_be16toh(i32 %130)
  %132 = call i32 @node_printf(%struct.TYPE_29__* %115, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.2, i64 0, i64 0), i32 %119, i32 %123, i32 %127, i32 %131)
  br label %133

133:                                              ; preds = %111, %86
  %134 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %137 = call i32 @ocs_hw_sequence_free(i32* %135, %struct.TYPE_31__* %136)
  store i64 0, i64* %3, align 8
  br label %138

138:                                              ; preds = %133, %66
  %139 = load i64, i64* %3, align 8
  ret i64 %139
}

declare dso_local i32 @ocs_be16toh(i32) #1

declare dso_local i32* @ocs_io_find_tgt_io(%struct.TYPE_28__*, %struct.TYPE_29__*, i32, i32) #1

declare dso_local i32 @ocs_log_debug(%struct.TYPE_28__*, i8*, i32) #1

declare dso_local i64 @ocs_hw_get(i32*, i32, i64*) #1

declare dso_local i64 @ocs_sframe_send_bls_acc(%struct.TYPE_29__*, %struct.TYPE_31__*) #1

declare dso_local i32 @ocs_log_test(%struct.TYPE_28__*, i8*) #1

declare dso_local i32 @ocs_memset(%struct.TYPE_30__*, i32, i32) #1

declare dso_local %struct.TYPE_24__* @ocs_scsi_io_alloc(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @ocs_node_post_event(%struct.TYPE_29__*, i32, %struct.TYPE_30__*) #1

declare dso_local i32 @ocs_atomic_add_return(i32*, i32) #1

declare dso_local i32 @node_printf(%struct.TYPE_29__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @fc_be24toh(i32) #1

declare dso_local i32 @ocs_hw_sequence_free(i32*, %struct.TYPE_31__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
