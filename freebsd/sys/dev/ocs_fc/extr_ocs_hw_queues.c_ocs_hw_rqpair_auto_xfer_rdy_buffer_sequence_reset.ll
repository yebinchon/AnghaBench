; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw_queues.c_ocs_hw_rqpair_auto_xfer_rdy_buffer_sequence_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw_queues.c_ocs_hw_rqpair_auto_xfer_rdy_buffer_sequence_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_12__, i64, i64, i64, i64, i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_17__*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }

@FC_RCTL_INFO_SOL_DATA = common dso_local global i32 0, align 4
@FC_RCTL_FC4_DATA = common dso_local global i32 0, align 4
@FC_TYPE_FCP = common dso_local global i32 0, align 4
@FC_FCTL_EXCHANGE_RESPONDER = common dso_local global i32 0, align 4
@FC_FCTL_FIRST_SEQUENCE = common dso_local global i32 0, align 4
@FC_FCTL_LAST_SEQUENCE = common dso_local global i32 0, align 4
@FC_FCTL_END_SEQUENCE = common dso_local global i32 0, align 4
@FC_FCTL_SEQUENCE_INITIATIVE = common dso_local global i32 0, align 4
@OCS_HW_RQ_INDEX_DUMMY_HDR = common dso_local global i32 0, align 4
@OCS_HW_RQ_INDEX_DUMMY_DATA = common dso_local global i32 0, align 4
@OCS_HW_RTN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_16__*)* @ocs_hw_rqpair_auto_xfer_rdy_buffer_sequence_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_hw_rqpair_auto_xfer_rdy_buffer_sequence_reset(i32* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %6 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_17__* %11, %struct.TYPE_17__** %5, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 7
  store i64 0, i64* %13, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 6
  store i64 0, i64* %15, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 5
  store i64 0, i64* %17, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @FC_RCTL_INFO_SOL_DATA, align 4
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 3
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @FC_RCTL_FC4_DATA, align 4
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 8
  %30 = load i32, i32* @FC_TYPE_FCP, align 4
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @FC_FCTL_EXCHANGE_RESPONDER, align 4
  %35 = load i32, i32* @FC_FCTL_FIRST_SEQUENCE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @FC_FCTL_LAST_SEQUENCE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @FC_FCTL_END_SEQUENCE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @FC_FCTL_SEQUENCE_INITIATIVE, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @fc_htobe24(i32 %42)
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  %47 = load i32, i32* @OCS_HW_RQ_INDEX_DUMMY_HDR, align 4
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 3
  store %struct.TYPE_12__* %52, %struct.TYPE_12__** %56, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 2
  store %struct.TYPE_17__* %57, %struct.TYPE_17__** %61, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  store i32 16, i32* %65, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  store i32 16, i32* %69, align 4
  %70 = load i32, i32* @OCS_HW_RQ_INDEX_DUMMY_DATA, align 4
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @ocs_hw_rqpair_auto_xfer_rdy_dnrx_check(i32* %74)
  %76 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  ret i32 %76
}

declare dso_local i32 @fc_htobe24(i32) #1

declare dso_local i32 @ocs_hw_rqpair_auto_xfer_rdy_dnrx_check(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
