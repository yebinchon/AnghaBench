; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_knlist_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_knlist_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knlist = type { void (i8*)*, void (i8*)*, void (i8*)*, void (i8*)*, i32, i64, i32* }

@knlist_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @knlist_init(%struct.knlist* %0, i8* %1, void (i8*)* %2, void (i8*)* %3, void (i8*)* %4, void (i8*)* %5) #0 {
  %7 = alloca %struct.knlist*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca void (i8*)*, align 8
  %10 = alloca void (i8*)*, align 8
  %11 = alloca void (i8*)*, align 8
  %12 = alloca void (i8*)*, align 8
  store %struct.knlist* %0, %struct.knlist** %7, align 8
  store i8* %1, i8** %8, align 8
  store void (i8*)* %2, void (i8*)** %9, align 8
  store void (i8*)* %3, void (i8*)** %10, align 8
  store void (i8*)* %4, void (i8*)** %11, align 8
  store void (i8*)* %5, void (i8*)** %12, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %6
  %16 = load %struct.knlist*, %struct.knlist** %7, align 8
  %17 = getelementptr inbounds %struct.knlist, %struct.knlist* %16, i32 0, i32 6
  store i32* @knlist_lock, i32** %17, align 8
  br label %23

18:                                               ; preds = %6
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to i32*
  %21 = load %struct.knlist*, %struct.knlist** %7, align 8
  %22 = getelementptr inbounds %struct.knlist, %struct.knlist* %21, i32 0, i32 6
  store i32* %20, i32** %22, align 8
  br label %23

23:                                               ; preds = %18, %15
  %24 = load void (i8*)*, void (i8*)** %9, align 8
  %25 = icmp eq void (i8*)* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.knlist*, %struct.knlist** %7, align 8
  %28 = getelementptr inbounds %struct.knlist, %struct.knlist* %27, i32 0, i32 0
  store void (i8*)* @knlist_mtx_lock, void (i8*)** %28, align 8
  br label %33

29:                                               ; preds = %23
  %30 = load void (i8*)*, void (i8*)** %9, align 8
  %31 = load %struct.knlist*, %struct.knlist** %7, align 8
  %32 = getelementptr inbounds %struct.knlist, %struct.knlist* %31, i32 0, i32 0
  store void (i8*)* %30, void (i8*)** %32, align 8
  br label %33

33:                                               ; preds = %29, %26
  %34 = load void (i8*)*, void (i8*)** %10, align 8
  %35 = icmp eq void (i8*)* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load %struct.knlist*, %struct.knlist** %7, align 8
  %38 = getelementptr inbounds %struct.knlist, %struct.knlist* %37, i32 0, i32 1
  store void (i8*)* @knlist_mtx_unlock, void (i8*)** %38, align 8
  br label %43

39:                                               ; preds = %33
  %40 = load void (i8*)*, void (i8*)** %10, align 8
  %41 = load %struct.knlist*, %struct.knlist** %7, align 8
  %42 = getelementptr inbounds %struct.knlist, %struct.knlist* %41, i32 0, i32 1
  store void (i8*)* %40, void (i8*)** %42, align 8
  br label %43

43:                                               ; preds = %39, %36
  %44 = load void (i8*)*, void (i8*)** %11, align 8
  %45 = icmp eq void (i8*)* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load %struct.knlist*, %struct.knlist** %7, align 8
  %48 = getelementptr inbounds %struct.knlist, %struct.knlist* %47, i32 0, i32 2
  store void (i8*)* @knlist_mtx_assert_locked, void (i8*)** %48, align 8
  br label %53

49:                                               ; preds = %43
  %50 = load void (i8*)*, void (i8*)** %11, align 8
  %51 = load %struct.knlist*, %struct.knlist** %7, align 8
  %52 = getelementptr inbounds %struct.knlist, %struct.knlist* %51, i32 0, i32 2
  store void (i8*)* %50, void (i8*)** %52, align 8
  br label %53

53:                                               ; preds = %49, %46
  %54 = load void (i8*)*, void (i8*)** %12, align 8
  %55 = icmp eq void (i8*)* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.knlist*, %struct.knlist** %7, align 8
  %58 = getelementptr inbounds %struct.knlist, %struct.knlist* %57, i32 0, i32 3
  store void (i8*)* @knlist_mtx_assert_unlocked, void (i8*)** %58, align 8
  br label %63

59:                                               ; preds = %53
  %60 = load void (i8*)*, void (i8*)** %12, align 8
  %61 = load %struct.knlist*, %struct.knlist** %7, align 8
  %62 = getelementptr inbounds %struct.knlist, %struct.knlist* %61, i32 0, i32 3
  store void (i8*)* %60, void (i8*)** %62, align 8
  br label %63

63:                                               ; preds = %59, %56
  %64 = load %struct.knlist*, %struct.knlist** %7, align 8
  %65 = getelementptr inbounds %struct.knlist, %struct.knlist* %64, i32 0, i32 5
  store i64 0, i64* %65, align 8
  %66 = load %struct.knlist*, %struct.knlist** %7, align 8
  %67 = getelementptr inbounds %struct.knlist, %struct.knlist* %66, i32 0, i32 4
  %68 = call i32 @SLIST_INIT(i32* %67)
  ret void
}

declare dso_local void @knlist_mtx_lock(i8*) #1

declare dso_local void @knlist_mtx_unlock(i8*) #1

declare dso_local void @knlist_mtx_assert_locked(i8*) #1

declare dso_local void @knlist_mtx_assert_unlocked(i8*) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
