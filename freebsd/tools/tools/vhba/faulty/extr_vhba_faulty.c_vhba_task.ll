; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/vhba/faulty/extr_vhba_faulty.c_vhba_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/vhba/faulty/extr_vhba_faulty.c_vhba_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__* }
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
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = call i32 @mtx_lock(i32* %12)
  br label %14

14:                                               ; preds = %47, %2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = call %struct.ccb_hdr* @TAILQ_FIRST(i32* %18)
  store %struct.ccb_hdr* %19, %struct.ccb_hdr** %6, align 8
  %20 = icmp ne %struct.ccb_hdr* %19, null
  br i1 %20, label %21, label %48

21:                                               ; preds = %14
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sim_links, i32 0, i32 0), align 4
  %28 = call i32 @TAILQ_REMOVE(i32* %25, %struct.ccb_hdr* %26, i32 %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %31 = bitcast %struct.ccb_hdr* %30 to %struct.ccb_scsiio*
  %32 = call i32 @faulty_act(%struct.TYPE_6__* %29, %struct.ccb_scsiio* %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, i64* %34, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %21
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  store i32 1, i32* %40, align 8
  %41 = call i32 (...) @arc4random()
  %42 = and i32 %41, 255
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %38, %21
  br label %14

48:                                               ; preds = %14
  br label %49

49:                                               ; preds = %56, %48
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = call %struct.ccb_hdr* @TAILQ_FIRST(i32* %53)
  store %struct.ccb_hdr* %54, %struct.ccb_hdr** %6, align 8
  %55 = icmp ne %struct.ccb_hdr* %54, null
  br i1 %55, label %56, label %67

56:                                               ; preds = %49
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sim_links, i32 0, i32 0), align 4
  %63 = call i32 @TAILQ_REMOVE(i32* %60, %struct.ccb_hdr* %61, i32 %62)
  %64 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %65 = bitcast %struct.ccb_hdr* %64 to %union.ccb*
  %66 = call i32 @xpt_done(%union.ccb* %65)
  br label %49

67:                                               ; preds = %49
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = call i32 @mtx_unlock(i32* %71)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.ccb_hdr* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.ccb_hdr*, i32) #1

declare dso_local i32 @faulty_act(%struct.TYPE_6__*, %struct.ccb_scsiio*) #1

declare dso_local i32 @arc4random(...) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
