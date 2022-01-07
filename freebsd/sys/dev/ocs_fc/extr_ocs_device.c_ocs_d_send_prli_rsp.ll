; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_device.c_ocs_d_send_prli_rsp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_device.c_ocs_d_send_prli_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i64, i8*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i64 }

@.str = private unnamed_addr constant [55 x i8] c"PRLI rejected by target-server, fc-type not supported\0A\00", align 1
@FC_REASON_UNABLE_TO_PERFORM = common dso_local global i32 0, align 4
@FC_EXPL_REQUEST_NOT_SUPPORTED = common dso_local global i32 0, align 4
@OCS_NODE_SHUTDOWN_DEFAULT = common dso_local global i8* null, align 8
@__ocs_d_initiate_shutdown = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"PRLI rejected by target-server\0A\00", align 1
@FC_EXPL_NO_ADDITIONAL = common dso_local global i32 0, align 4
@__ocs_d_device_ready = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocs_d_send_prli_rsp(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %9, %struct.TYPE_12__** %5, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %6, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %2
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %22 = call i32 @node_printf(%struct.TYPE_13__* %21, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @FC_REASON_UNABLE_TO_PERFORM, align 4
  %26 = load i32, i32* @FC_EXPL_REQUEST_NOT_SUPPORTED, align 4
  %27 = call i32 @ocs_send_ls_rjt(%struct.TYPE_14__* %23, i32 %24, i32 %25, i32 %26, i32 0, i32* null, i32* null)
  %28 = load i8*, i8** @OCS_NODE_SHUTDOWN_DEFAULT, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %32 = load i32, i32* @__ocs_d_initiate_shutdown, align 4
  %33 = call i32 @ocs_node_transition(%struct.TYPE_13__* %31, i32 %32, i32* null)
  br label %34

34:                                               ; preds = %20, %2
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %34
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = call i64 @ocs_scsi_validate_initiator(%struct.TYPE_13__* %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %47 = call i32 @node_printf(%struct.TYPE_13__* %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @FC_REASON_UNABLE_TO_PERFORM, align 4
  %51 = load i32, i32* @FC_EXPL_NO_ADDITIONAL, align 4
  %52 = call i32 @ocs_send_ls_rjt(%struct.TYPE_14__* %48, i32 %49, i32 %50, i32 %51, i32 0, i32* null, i32* null)
  %53 = load i8*, i8** @OCS_NODE_SHUTDOWN_DEFAULT, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %57 = load i32, i32* @__ocs_d_initiate_shutdown, align 4
  %58 = call i32 @ocs_node_transition(%struct.TYPE_13__* %56, i32 %57, i32* null)
  br label %69

59:                                               ; preds = %41, %34
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @ocs_send_prli_acc(%struct.TYPE_14__* %60, i32 %61, i64 %64, i32* null, i32* null)
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %67 = load i32, i32* @__ocs_d_device_ready, align 4
  %68 = call i32 @ocs_node_transition(%struct.TYPE_13__* %66, i32 %67, i32* null)
  br label %69

69:                                               ; preds = %59, %45
  ret void
}

declare dso_local i32 @node_printf(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @ocs_send_ls_rjt(%struct.TYPE_14__*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ocs_node_transition(%struct.TYPE_13__*, i32, i32*) #1

declare dso_local i64 @ocs_scsi_validate_initiator(%struct.TYPE_13__*) #1

declare dso_local i32 @ocs_send_prli_acc(%struct.TYPE_14__*, i32, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
