; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_send_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i64, i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@MPT_PRT_DEBUG2 = common dso_local global i64 0, align 8
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@REQ_STATE_QUEUED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"req %p:%u func %x on freelist list in mpt_send_cmd\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"req %p:%u func %x already on pending list in mpt_send_cmd\00", align 1
@links = common dso_local global i32 0, align 4
@MPT_OFFSET_REQUEST_Q = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpt_send_cmd(%struct.mpt_softc* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.mpt_softc*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store %struct.mpt_softc* %0, %struct.mpt_softc** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %5 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %6 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MPT_PRT_DEBUG2, align 8
  %9 = icmp sgt i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = call i32 @mpt_dump_request(%struct.mpt_softc* %11, %struct.TYPE_8__* %12)
  br label %14

14:                                               ; preds = %10, %2
  %15 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %16 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %19 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %22 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @bus_dmamap_sync(i32 %17, i32 %20, i32 %23)
  %25 = load i32, i32* @REQ_STATE_QUEUED, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = call i64 @mpt_req_on_free_list(%struct.mpt_softc* %30, %struct.TYPE_8__* %31)
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.TYPE_9__*
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 @KASSERT(i32 %34, i8* %46)
  %48 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = call i64 @mpt_req_on_pending_list(%struct.mpt_softc* %48, %struct.TYPE_8__* %49)
  %51 = icmp eq i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.TYPE_9__*
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 @KASSERT(i32 %52, i8* %64)
  %66 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %67 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %66, i32 0, i32 1
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = load i32, i32* @links, align 4
  %70 = call i32 @TAILQ_INSERT_HEAD(i32* %67, %struct.TYPE_8__* %68, i32 %69)
  %71 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %72 = load i32, i32* @MPT_OFFSET_REQUEST_Q, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i32 @mpt_write(%struct.mpt_softc* %71, i32 %72, i32 %76)
  ret void
}

declare dso_local i32 @mpt_dump_request(%struct.mpt_softc*, %struct.TYPE_8__*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @mpt_req_on_free_list(%struct.mpt_softc*, %struct.TYPE_8__*) #1

declare dso_local i64 @mpt_req_on_pending_list(%struct.mpt_softc*, %struct.TYPE_8__*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @mpt_write(%struct.mpt_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
