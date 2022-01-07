; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_device.c_ocs_process_abts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_device.c_ocs_process_abts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8*, i32, %struct.TYPE_14__, i32, i8*, i8*, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_17__ = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Abort request: ox_id [%04x] rx_id [%04x]\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"abts\00", align 1
@OCS_SCSI_TMF_ABORT_TASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"Abort request: ox_id [%04x], IO not found (exists=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_17__*)* @ocs_process_abts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_process_abts(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 6
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %5, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @ocs_be16toh(i32 %18)
  store i8* %19, i8** %7, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @ocs_be16toh(i32 %22)
  store i8* %23, i8** %8, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call %struct.TYPE_16__* @ocs_io_find_tgt_io(i32* %24, %struct.TYPE_15__* %25, i8* %26, i8* %27)
  store %struct.TYPE_16__* %28, %struct.TYPE_16__** %9, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %30 = icmp ne %struct.TYPE_16__* %29, null
  br i1 %30, label %31, label %63

31:                                               ; preds = %2
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = call i64 @ocs_ref_get_unless_zero(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %63

36:                                               ; preds = %31
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @node_printf(%struct.TYPE_15__* %37, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %38, i8* %39)
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %42, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 5
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 4
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* @OCS_SCSI_TMF_ABORT_TASK, align 4
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @OCS_SCSI_TMF_ABORT_TASK, align 4
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %59 = call i32 @ocs_scsi_recv_tmf(%struct.TYPE_16__* %52, i32 %56, i32 %57, %struct.TYPE_16__* %58, i32 0)
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  %62 = call i32 @ocs_ref_put(i32* %61)
  br label %75

63:                                               ; preds = %31, %2
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %67 = icmp ne %struct.TYPE_16__* %66, null
  %68 = zext i1 %67 to i32
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = call i32 @node_printf(%struct.TYPE_15__* %64, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* %65, i8* %70)
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %74 = call i32 @ocs_bls_send_acc_hdr(%struct.TYPE_16__* %72, %struct.TYPE_17__* %73)
  br label %75

75:                                               ; preds = %63, %36
  ret i32 0
}

declare dso_local i8* @ocs_be16toh(i32) #1

declare dso_local %struct.TYPE_16__* @ocs_io_find_tgt_io(i32*, %struct.TYPE_15__*, i8*, i8*) #1

declare dso_local i64 @ocs_ref_get_unless_zero(i32*) #1

declare dso_local i32 @node_printf(%struct.TYPE_15__*, i8*, i8*, i8*) #1

declare dso_local i32 @ocs_scsi_recv_tmf(%struct.TYPE_16__*, i32, i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @ocs_ref_put(i32*) #1

declare dso_local i32 @ocs_bls_send_acc_hdr(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
