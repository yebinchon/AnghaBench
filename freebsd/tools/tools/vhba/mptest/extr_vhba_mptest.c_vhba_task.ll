; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/vhba/mptest/extr_vhba_mptest.c_vhba_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/vhba/mptest/extr_vhba_mptest.c_vhba_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.ccb_hdr = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.ccb_scsiio = type { i32 }
%union.ccb = type { i32 }

@sim_links = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @vhba_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhba_task(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.ccb_hdr*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = call i32 @mtx_lock(i32* %13)
  br label %15

15:                                               ; preds = %22, %2
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = call %struct.ccb_hdr* @TAILQ_FIRST(i32* %19)
  store %struct.ccb_hdr* %20, %struct.ccb_hdr** %6, align 8
  %21 = icmp ne %struct.ccb_hdr* %20, null
  br i1 %21, label %22, label %46

22:                                               ; preds = %15
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  %27 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sim_links, i32 0, i32 0), align 4
  %29 = call i32 @TAILQ_REMOVE(i32* %26, %struct.ccb_hdr* %27, i32 %28)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %32 = bitcast %struct.ccb_hdr* %31 to %struct.ccb_scsiio*
  %33 = call i32 @mptest_act(%struct.TYPE_9__* %30, %struct.ccb_scsiio* %32)
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %38 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %42, align 8
  %43 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %44 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %43, i32 0, i32 0
  %45 = call i32 @callout_handle_init(i32* %44)
  br label %15

46:                                               ; preds = %15
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = call i32 @vhba_kick(%struct.TYPE_10__* %52)
  br label %74

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %62, %54
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = call %struct.ccb_hdr* @TAILQ_FIRST(i32* %59)
  store %struct.ccb_hdr* %60, %struct.ccb_hdr** %6, align 8
  %61 = icmp ne %struct.ccb_hdr* %60, null
  br i1 %61, label %62, label %73

62:                                               ; preds = %55
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sim_links, i32 0, i32 0), align 4
  %69 = call i32 @TAILQ_REMOVE(i32* %66, %struct.ccb_hdr* %67, i32 %68)
  %70 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %71 = bitcast %struct.ccb_hdr* %70 to %union.ccb*
  %72 = call i32 @xpt_done(%union.ccb* %71)
  br label %55

73:                                               ; preds = %55
  br label %74

74:                                               ; preds = %73, %49
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = call i32 @mtx_unlock(i32* %78)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.ccb_hdr* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.ccb_hdr*, i32) #1

declare dso_local i32 @mptest_act(%struct.TYPE_9__*, %struct.ccb_scsiio*) #1

declare dso_local i32 @callout_handle_init(i32*) #1

declare dso_local i32 @vhba_kick(%struct.TYPE_10__*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
