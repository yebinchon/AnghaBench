; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_knote_drop_detached.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_knote_drop_detached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__, i32*, %struct.kqueue* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.kqueue = type { i32, %struct.klist*, %struct.klist* }
%struct.klist = type { i32 }
%struct.thread = type { i32 }

@KN_DETACHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"knote %p still attached\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"knote_drop called on %p with influx %d\00", align 1
@knote = common dso_local global i32 0, align 4
@kn_link = common dso_local global i32 0, align 4
@KN_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knote*, %struct.thread*)* @knote_drop_detached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @knote_drop_detached(%struct.knote* %0, %struct.thread* %1) #0 {
  %3 = alloca %struct.knote*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.kqueue*, align 8
  %6 = alloca %struct.klist*, align 8
  store %struct.knote* %0, %struct.knote** %3, align 8
  store %struct.thread* %1, %struct.thread** %4, align 8
  %7 = load %struct.knote*, %struct.knote** %3, align 8
  %8 = getelementptr inbounds %struct.knote, %struct.knote* %7, i32 0, i32 6
  %9 = load %struct.kqueue*, %struct.kqueue** %8, align 8
  store %struct.kqueue* %9, %struct.kqueue** %5, align 8
  %10 = load %struct.knote*, %struct.knote** %3, align 8
  %11 = getelementptr inbounds %struct.knote, %struct.knote* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @KN_DETACHED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = load %struct.knote*, %struct.knote** %3, align 8
  %18 = bitcast %struct.knote* %17 to i8*
  %19 = call i32 @KASSERT(i32 %16, i8* %18)
  %20 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %21 = call i32 @KQ_NOTOWNED(%struct.kqueue* %20)
  %22 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %23 = call i32 @KQ_LOCK(%struct.kqueue* %22)
  %24 = load %struct.knote*, %struct.knote** %3, align 8
  %25 = getelementptr inbounds %struct.knote, %struct.knote* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 1
  %28 = zext i1 %27 to i32
  %29 = load %struct.knote*, %struct.knote** %3, align 8
  %30 = load %struct.knote*, %struct.knote** %3, align 8
  %31 = getelementptr inbounds %struct.knote, %struct.knote* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @KASSERT(i32 %28, i8* %34)
  %36 = load %struct.knote*, %struct.knote** %3, align 8
  %37 = getelementptr inbounds %struct.knote, %struct.knote* %36, i32 0, i32 3
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %2
  %43 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %44 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %43, i32 0, i32 2
  %45 = load %struct.klist*, %struct.klist** %44, align 8
  %46 = load %struct.knote*, %struct.knote** %3, align 8
  %47 = getelementptr inbounds %struct.knote, %struct.knote* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.klist, %struct.klist* %45, i64 %48
  store %struct.klist* %49, %struct.klist** %6, align 8
  br label %62

50:                                               ; preds = %2
  %51 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %52 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %51, i32 0, i32 1
  %53 = load %struct.klist*, %struct.klist** %52, align 8
  %54 = load %struct.knote*, %struct.knote** %3, align 8
  %55 = getelementptr inbounds %struct.knote, %struct.knote* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %58 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @KN_HASH(i64 %56, i32 %59)
  %61 = getelementptr inbounds %struct.klist, %struct.klist* %53, i64 %60
  store %struct.klist* %61, %struct.klist** %6, align 8
  br label %62

62:                                               ; preds = %50, %42
  %63 = load %struct.klist*, %struct.klist** %6, align 8
  %64 = call i32 @SLIST_EMPTY(%struct.klist* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %62
  %67 = load %struct.klist*, %struct.klist** %6, align 8
  %68 = load %struct.knote*, %struct.knote** %3, align 8
  %69 = load i32, i32* @knote, align 4
  %70 = load i32, i32* @kn_link, align 4
  %71 = call i32 @SLIST_REMOVE(%struct.klist* %67, %struct.knote* %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %66, %62
  %73 = load %struct.knote*, %struct.knote** %3, align 8
  %74 = getelementptr inbounds %struct.knote, %struct.knote* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @KN_QUEUED, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load %struct.knote*, %struct.knote** %3, align 8
  %81 = call i32 @knote_dequeue(%struct.knote* %80)
  br label %82

82:                                               ; preds = %79, %72
  %83 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %84 = call i32 @KQ_UNLOCK_FLUX(%struct.kqueue* %83)
  %85 = load %struct.knote*, %struct.knote** %3, align 8
  %86 = getelementptr inbounds %struct.knote, %struct.knote* %85, i32 0, i32 3
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %82
  %92 = load %struct.knote*, %struct.knote** %3, align 8
  %93 = getelementptr inbounds %struct.knote, %struct.knote* %92, i32 0, i32 5
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.thread*, %struct.thread** %4, align 8
  %96 = call i32 @fdrop(i32* %94, %struct.thread* %95)
  %97 = load %struct.knote*, %struct.knote** %3, align 8
  %98 = getelementptr inbounds %struct.knote, %struct.knote* %97, i32 0, i32 5
  store i32* null, i32** %98, align 8
  br label %99

99:                                               ; preds = %91, %82
  %100 = load %struct.knote*, %struct.knote** %3, align 8
  %101 = getelementptr inbounds %struct.knote, %struct.knote* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @kqueue_fo_release(i32 %103)
  %105 = load %struct.knote*, %struct.knote** %3, align 8
  %106 = getelementptr inbounds %struct.knote, %struct.knote* %105, i32 0, i32 3
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %106, align 8
  %107 = load %struct.knote*, %struct.knote** %3, align 8
  %108 = call i32 @knote_free(%struct.knote* %107)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @KQ_NOTOWNED(%struct.kqueue*) #1

declare dso_local i32 @KQ_LOCK(%struct.kqueue*) #1

declare dso_local i64 @KN_HASH(i64, i32) #1

declare dso_local i32 @SLIST_EMPTY(%struct.klist*) #1

declare dso_local i32 @SLIST_REMOVE(%struct.klist*, %struct.knote*, i32, i32) #1

declare dso_local i32 @knote_dequeue(%struct.knote*) #1

declare dso_local i32 @KQ_UNLOCK_FLUX(%struct.kqueue*) #1

declare dso_local i32 @fdrop(i32*, %struct.thread*) #1

declare dso_local i32 @kqueue_fo_release(i32) #1

declare dso_local i32 @knote_free(%struct.knote*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
