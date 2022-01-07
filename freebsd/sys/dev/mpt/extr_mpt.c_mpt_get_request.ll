; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_get_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_get_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32*, i64, i32 }
%struct.mpt_softc = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"mpt_get_request: corrupted request free list\00", align 1
@REQ_STATE_FREE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"req %p:%u not free on free list %x index %d function %x\00", align 1
@links = common dso_local global i32 0, align 4
@REQ_STATE_ALLOCATED = common dso_local global i64 0, align 8
@PUSER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"mptgreq\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @mpt_get_request(%struct.mpt_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mpt_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  store %struct.mpt_softc* %0, %struct.mpt_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %6

6:                                                ; preds = %67, %2
  %7 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %8 = call i32 @MPT_LOCK_ASSERT(%struct.mpt_softc* %7)
  %9 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %10 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %9, i32 0, i32 1
  %11 = call %struct.TYPE_7__* @TAILQ_FIRST(i32* %10)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %5, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = icmp ne %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %64

14:                                               ; preds = %6
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %17 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %16, i32 0, i32 2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i64 %21
  %23 = icmp eq %struct.TYPE_7__* %15, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @KASSERT(i32 %24, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @REQ_STATE_FREE, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.TYPE_8__*
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @KASSERT(i32 %31, i8* %49)
  %51 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %52 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %51, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = load i32, i32* @links, align 4
  %55 = call i32 @TAILQ_REMOVE(i32* %52, %struct.TYPE_7__* %53, i32 %54)
  %56 = load i64, i64* @REQ_STATE_ALLOCATED, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  store i32* null, i32** %60, align 8
  %61 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %63 = call i32 @mpt_assign_serno(%struct.mpt_softc* %61, %struct.TYPE_7__* %62)
  br label %76

64:                                               ; preds = %6
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %69 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %71 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %72 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %71, i32 0, i32 1
  %73 = load i32, i32* @PUSER, align 4
  %74 = call i32 @mpt_sleep(%struct.mpt_softc* %70, i32* %72, i32 %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 0)
  br label %6

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %75, %14
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  ret %struct.TYPE_7__* %77
}

declare dso_local i32 @MPT_LOCK_ASSERT(%struct.mpt_softc*) #1

declare dso_local %struct.TYPE_7__* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @mpt_assign_serno(%struct.mpt_softc*, %struct.TYPE_7__*) #1

declare dso_local i32 @mpt_sleep(%struct.mpt_softc*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
