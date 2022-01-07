; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt2host_iocfacts_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt2host_iocfacts_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@MsgVersion = common dso_local global i32 0, align 4
@HeaderVersion = common dso_local global i32 0, align 4
@MsgContext = common dso_local global i32 0, align 4
@IOCExceptions = common dso_local global i32 0, align 4
@IOCStatus = common dso_local global i32 0, align 4
@IOCLogInfo = common dso_local global i32 0, align 4
@ReplyQueueDepth = common dso_local global i32 0, align 4
@RequestFrameSize = common dso_local global i32 0, align 4
@Reserved_0101_FWVersion = common dso_local global i32 0, align 4
@ProductID = common dso_local global i32 0, align 4
@CurrentHostMfaHighAddr = common dso_local global i32 0, align 4
@GlobalCredits = common dso_local global i32 0, align 4
@CurrentSenseBufferHighAddr = common dso_local global i32 0, align 4
@CurReplyFrameSize = common dso_local global i32 0, align 4
@FWImageSize = common dso_local global i32 0, align 4
@IOCCapabilities = common dso_local global i32 0, align 4
@FWVersion = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@HighPriorityQueueDepth = common dso_local global i32 0, align 4
@Reserved2 = common dso_local global i32 0, align 4
@ReplyFifoHostSignalingAddr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpt2host_iocfacts_reply(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %4 = load i32, i32* @MsgVersion, align 4
  %5 = call i32 @MPT_2_HOST16(%struct.TYPE_6__* %3, i32 %4)
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = load i32, i32* @HeaderVersion, align 4
  %8 = call i32 @MPT_2_HOST16(%struct.TYPE_6__* %6, i32 %7)
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = load i32, i32* @MsgContext, align 4
  %11 = call i32 @MPT_2_HOST32(%struct.TYPE_6__* %9, i32 %10)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = load i32, i32* @IOCExceptions, align 4
  %14 = call i32 @MPT_2_HOST16(%struct.TYPE_6__* %12, i32 %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %16 = load i32, i32* @IOCStatus, align 4
  %17 = call i32 @MPT_2_HOST16(%struct.TYPE_6__* %15, i32 %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = load i32, i32* @IOCLogInfo, align 4
  %20 = call i32 @MPT_2_HOST32(%struct.TYPE_6__* %18, i32 %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = load i32, i32* @ReplyQueueDepth, align 4
  %23 = call i32 @MPT_2_HOST16(%struct.TYPE_6__* %21, i32 %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = load i32, i32* @RequestFrameSize, align 4
  %26 = call i32 @MPT_2_HOST16(%struct.TYPE_6__* %24, i32 %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %28 = load i32, i32* @Reserved_0101_FWVersion, align 4
  %29 = call i32 @MPT_2_HOST16(%struct.TYPE_6__* %27, i32 %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %31 = load i32, i32* @ProductID, align 4
  %32 = call i32 @MPT_2_HOST16(%struct.TYPE_6__* %30, i32 %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %34 = load i32, i32* @CurrentHostMfaHighAddr, align 4
  %35 = call i32 @MPT_2_HOST32(%struct.TYPE_6__* %33, i32 %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %37 = load i32, i32* @GlobalCredits, align 4
  %38 = call i32 @MPT_2_HOST16(%struct.TYPE_6__* %36, i32 %37)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %40 = load i32, i32* @CurrentSenseBufferHighAddr, align 4
  %41 = call i32 @MPT_2_HOST32(%struct.TYPE_6__* %39, i32 %40)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %43 = load i32, i32* @CurReplyFrameSize, align 4
  %44 = call i32 @MPT_2_HOST16(%struct.TYPE_6__* %42, i32 %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %46 = load i32, i32* @FWImageSize, align 4
  %47 = call i32 @MPT_2_HOST32(%struct.TYPE_6__* %45, i32 %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %49 = load i32, i32* @IOCCapabilities, align 4
  %50 = call i32 @MPT_2_HOST32(%struct.TYPE_6__* %48, i32 %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @FWVersion, i32 0, i32 0), align 4
  %53 = call i32 @MPT_2_HOST32(%struct.TYPE_6__* %51, i32 %52)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %55 = load i32, i32* @HighPriorityQueueDepth, align 4
  %56 = call i32 @MPT_2_HOST16(%struct.TYPE_6__* %54, i32 %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %58 = load i32, i32* @Reserved2, align 4
  %59 = call i32 @MPT_2_HOST16(%struct.TYPE_6__* %57, i32 %58)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = call i32 @mpt2host_sge_simple_union(i32* %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %64 = load i32, i32* @ReplyFifoHostSignalingAddr, align 4
  %65 = call i32 @MPT_2_HOST32(%struct.TYPE_6__* %63, i32 %64)
  ret void
}

declare dso_local i32 @MPT_2_HOST16(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @MPT_2_HOST32(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @mpt2host_sge_simple_union(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
