; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/vhba/medium/extr_vhba_medium.c_vhba_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/vhba/medium/extr_vhba_medium.c_vhba_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.ccb_hdr = type { i32 }
%struct.ccb_scsiio = type { i32 }
%union.ccb = type { i32 }

@sim_links = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @vhba_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhba_task(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.ccb_hdr*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = call i32 @mtx_lock(i32* %12)
  br label %14

14:                                               ; preds = %21, %2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = call %struct.ccb_hdr* @TAILQ_FIRST(i32* %18)
  store %struct.ccb_hdr* %19, %struct.ccb_hdr** %6, align 8
  %20 = icmp ne %struct.ccb_hdr* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %14
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sim_links, i32 0, i32 0), align 4
  %28 = call i32 @TAILQ_REMOVE(i32* %25, %struct.ccb_hdr* %26, i32 %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %31 = bitcast %struct.ccb_hdr* %30 to %struct.ccb_scsiio*
  %32 = call i32 @vhbamedium_act(%struct.TYPE_6__* %29, %struct.ccb_scsiio* %31)
  br label %14

33:                                               ; preds = %14
  br label %34

34:                                               ; preds = %41, %33
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = call %struct.ccb_hdr* @TAILQ_FIRST(i32* %38)
  store %struct.ccb_hdr* %39, %struct.ccb_hdr** %6, align 8
  %40 = icmp ne %struct.ccb_hdr* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %34
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sim_links, i32 0, i32 0), align 4
  %48 = call i32 @TAILQ_REMOVE(i32* %45, %struct.ccb_hdr* %46, i32 %47)
  %49 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %50 = bitcast %struct.ccb_hdr* %49 to %union.ccb*
  %51 = call i32 @xpt_done(%union.ccb* %50)
  br label %34

52:                                               ; preds = %34
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = call i32 @mtx_unlock(i32* %56)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.ccb_hdr* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.ccb_hdr*, i32) #1

declare dso_local i32 @vhbamedium_act(%struct.TYPE_6__*, %struct.ccb_scsiio*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
