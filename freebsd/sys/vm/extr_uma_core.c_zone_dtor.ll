; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_zone_dtor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_zone_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32*, i32, i32, i32, %struct.TYPE_8__* }

@UMA_ZFLAG_INTERNAL = common dso_local global i32 0, align 4
@uma_rwlock = common dso_local global i32 0, align 4
@uz_link = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@UMA_ZONE_SECONDARY = common dso_local global i32 0, align 4
@UMA_ZFLAG_CACHE = common dso_local global i32 0, align 4
@uk_link = common dso_local global i32 0, align 4
@kegs = common dso_local global i32 0, align 4
@SKIP_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*)* @zone_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zone_dtor(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %7, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @UMA_ZFLAG_INTERNAL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %19 = call i32 @cache_drain(%struct.TYPE_8__* %18)
  br label %20

20:                                               ; preds = %17, %3
  %21 = call i32 @rw_wlock(i32* @uma_rwlock)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %23 = load i32, i32* @uz_link, align 4
  %24 = call i32 @LIST_REMOVE(%struct.TYPE_8__* %22, i32 %23)
  %25 = call i32 @rw_wunlock(i32* @uma_rwlock)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = load i32, i32* @M_WAITOK, align 4
  %28 = call i32 @zone_reclaim(%struct.TYPE_8__* %26, i32 %27, i32 1)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @UMA_ZONE_SECONDARY, align 4
  %33 = load i32, i32* @UMA_ZFLAG_CACHE, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %20
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 6
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %8, align 8
  %41 = call i32 @rw_wlock(i32* @uma_rwlock)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %43 = load i32, i32* @uk_link, align 4
  %44 = call i32 @LIST_REMOVE(%struct.TYPE_8__* %42, i32 %43)
  %45 = call i32 @rw_wunlock(i32* @uma_rwlock)
  %46 = load i32, i32* @kegs, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %48 = load i32, i32* @SKIP_NONE, align 4
  %49 = call i32 @zone_free_item(i32 %46, %struct.TYPE_8__* %47, i32* null, i32 %48)
  br label %50

50:                                               ; preds = %37, %20
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @counter_u64_free(i32 %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @counter_u64_free(i32 %57)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @counter_u64_free(i32 %61)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = icmp eq i32* %65, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %50
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %71 = call i32 @ZONE_LOCK_FINI(%struct.TYPE_8__* %70)
  br label %72

72:                                               ; preds = %69, %50
  ret void
}

declare dso_local i32 @cache_drain(%struct.TYPE_8__*) #1

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @rw_wunlock(i32*) #1

declare dso_local i32 @zone_reclaim(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @zone_free_item(i32, %struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @counter_u64_free(i32) #1

declare dso_local i32 @ZONE_LOCK_FINI(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
