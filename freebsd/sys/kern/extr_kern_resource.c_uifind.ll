; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_uifind.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_uifind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.ucred* }
%struct.ucred = type { %struct.uidinfo*, %struct.uidinfo* }
%struct.uidinfo = type { i64, i32, i32 }

@curthread = common dso_local global %struct.TYPE_2__* null, align 8
@uihashtbl_lock = common dso_local global i32 0, align 4
@M_UIDINFO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ui_hash = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.uidinfo* @uifind(i64 %0) #0 {
  %2 = alloca %struct.uidinfo*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.uidinfo*, align 8
  %5 = alloca %struct.uidinfo*, align 8
  %6 = alloca %struct.ucred*, align 8
  store i64 %0, i64* %3, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.ucred*, %struct.ucred** %8, align 8
  store %struct.ucred* %9, %struct.ucred** %6, align 8
  %10 = load %struct.ucred*, %struct.ucred** %6, align 8
  %11 = getelementptr inbounds %struct.ucred, %struct.ucred* %10, i32 0, i32 1
  %12 = load %struct.uidinfo*, %struct.uidinfo** %11, align 8
  %13 = getelementptr inbounds %struct.uidinfo, %struct.uidinfo* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.ucred*, %struct.ucred** %6, align 8
  %19 = getelementptr inbounds %struct.ucred, %struct.ucred* %18, i32 0, i32 1
  %20 = load %struct.uidinfo*, %struct.uidinfo** %19, align 8
  store %struct.uidinfo* %20, %struct.uidinfo** %5, align 8
  %21 = load %struct.uidinfo*, %struct.uidinfo** %5, align 8
  %22 = call i32 @uihold(%struct.uidinfo* %21)
  %23 = load %struct.uidinfo*, %struct.uidinfo** %5, align 8
  store %struct.uidinfo* %23, %struct.uidinfo** %2, align 8
  br label %86

24:                                               ; preds = %1
  %25 = load %struct.ucred*, %struct.ucred** %6, align 8
  %26 = getelementptr inbounds %struct.ucred, %struct.ucred* %25, i32 0, i32 0
  %27 = load %struct.uidinfo*, %struct.uidinfo** %26, align 8
  %28 = getelementptr inbounds %struct.uidinfo, %struct.uidinfo* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %3, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = load %struct.ucred*, %struct.ucred** %6, align 8
  %34 = getelementptr inbounds %struct.ucred, %struct.ucred* %33, i32 0, i32 0
  %35 = load %struct.uidinfo*, %struct.uidinfo** %34, align 8
  store %struct.uidinfo* %35, %struct.uidinfo** %5, align 8
  %36 = load %struct.uidinfo*, %struct.uidinfo** %5, align 8
  %37 = call i32 @uihold(%struct.uidinfo* %36)
  %38 = load %struct.uidinfo*, %struct.uidinfo** %5, align 8
  store %struct.uidinfo* %38, %struct.uidinfo** %2, align 8
  br label %86

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %39
  %41 = call i32 @rw_rlock(i32* @uihashtbl_lock)
  %42 = load i64, i64* %3, align 8
  %43 = call %struct.uidinfo* @uilookup(i64 %42)
  store %struct.uidinfo* %43, %struct.uidinfo** %5, align 8
  %44 = call i32 @rw_runlock(i32* @uihashtbl_lock)
  %45 = load %struct.uidinfo*, %struct.uidinfo** %5, align 8
  %46 = icmp ne %struct.uidinfo* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load %struct.uidinfo*, %struct.uidinfo** %5, align 8
  store %struct.uidinfo* %48, %struct.uidinfo** %2, align 8
  br label %86

49:                                               ; preds = %40
  %50 = load i32, i32* @M_UIDINFO, align 4
  %51 = load i32, i32* @M_WAITOK, align 4
  %52 = load i32, i32* @M_ZERO, align 4
  %53 = or i32 %51, %52
  %54 = call %struct.uidinfo* @malloc(i32 16, i32 %50, i32 %53)
  store %struct.uidinfo* %54, %struct.uidinfo** %4, align 8
  %55 = load %struct.uidinfo*, %struct.uidinfo** %4, align 8
  %56 = getelementptr inbounds %struct.uidinfo, %struct.uidinfo* %55, i32 0, i32 1
  %57 = call i32 @racct_create(i32* %56)
  %58 = load %struct.uidinfo*, %struct.uidinfo** %4, align 8
  %59 = getelementptr inbounds %struct.uidinfo, %struct.uidinfo* %58, i32 0, i32 2
  %60 = call i32 @refcount_init(i32* %59, i32 1)
  %61 = load i64, i64* %3, align 8
  %62 = load %struct.uidinfo*, %struct.uidinfo** %4, align 8
  %63 = getelementptr inbounds %struct.uidinfo, %struct.uidinfo* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = call i32 @rw_wlock(i32* @uihashtbl_lock)
  %65 = load i64, i64* %3, align 8
  %66 = call %struct.uidinfo* @uilookup(i64 %65)
  store %struct.uidinfo* %66, %struct.uidinfo** %5, align 8
  %67 = icmp eq %struct.uidinfo* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %49
  %69 = load i64, i64* %3, align 8
  %70 = call i32 @UIHASH(i64 %69)
  %71 = load %struct.uidinfo*, %struct.uidinfo** %4, align 8
  %72 = load i32, i32* @ui_hash, align 4
  %73 = call i32 @LIST_INSERT_HEAD(i32 %70, %struct.uidinfo* %71, i32 %72)
  %74 = call i32 @rw_wunlock(i32* @uihashtbl_lock)
  %75 = load %struct.uidinfo*, %struct.uidinfo** %4, align 8
  store %struct.uidinfo* %75, %struct.uidinfo** %5, align 8
  br label %84

76:                                               ; preds = %49
  %77 = call i32 @rw_wunlock(i32* @uihashtbl_lock)
  %78 = load %struct.uidinfo*, %struct.uidinfo** %4, align 8
  %79 = getelementptr inbounds %struct.uidinfo, %struct.uidinfo* %78, i32 0, i32 1
  %80 = call i32 @racct_destroy(i32* %79)
  %81 = load %struct.uidinfo*, %struct.uidinfo** %4, align 8
  %82 = load i32, i32* @M_UIDINFO, align 4
  %83 = call i32 @free(%struct.uidinfo* %81, i32 %82)
  br label %84

84:                                               ; preds = %76, %68
  %85 = load %struct.uidinfo*, %struct.uidinfo** %5, align 8
  store %struct.uidinfo* %85, %struct.uidinfo** %2, align 8
  br label %86

86:                                               ; preds = %84, %47, %32, %17
  %87 = load %struct.uidinfo*, %struct.uidinfo** %2, align 8
  ret %struct.uidinfo* %87
}

declare dso_local i32 @uihold(%struct.uidinfo*) #1

declare dso_local i32 @rw_rlock(i32*) #1

declare dso_local %struct.uidinfo* @uilookup(i64) #1

declare dso_local i32 @rw_runlock(i32*) #1

declare dso_local %struct.uidinfo* @malloc(i32, i32, i32) #1

declare dso_local i32 @racct_create(i32*) #1

declare dso_local i32 @refcount_init(i32*, i32) #1

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32, %struct.uidinfo*, i32) #1

declare dso_local i32 @UIHASH(i64) #1

declare dso_local i32 @rw_wunlock(i32*) #1

declare dso_local i32 @racct_destroy(i32*) #1

declare dso_local i32 @free(%struct.uidinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
