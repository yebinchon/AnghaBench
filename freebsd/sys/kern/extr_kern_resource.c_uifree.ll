; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_uifree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_uifree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uidinfo = type { i64, i32, i64, i64, i32, i32 }

@uihashtbl_lock = common dso_local global i32 0, align 4
@ui_hash = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"freeing uidinfo: uid = %d, sbsize = %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"freeing uidinfo: uid = %d, proccnt = %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"freeing uidinfo: uid = %d, swapuse = %lld\0A\00", align 1
@M_UIDINFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uifree(%struct.uidinfo* %0) #0 {
  %2 = alloca %struct.uidinfo*, align 8
  store %struct.uidinfo* %0, %struct.uidinfo** %2, align 8
  %3 = load %struct.uidinfo*, %struct.uidinfo** %2, align 8
  %4 = getelementptr inbounds %struct.uidinfo, %struct.uidinfo* %3, i32 0, i32 5
  %5 = call i64 @refcount_release_if_not_last(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %66

8:                                                ; preds = %1
  %9 = call i32 @rw_wlock(i32* @uihashtbl_lock)
  %10 = load %struct.uidinfo*, %struct.uidinfo** %2, align 8
  %11 = getelementptr inbounds %struct.uidinfo, %struct.uidinfo* %10, i32 0, i32 5
  %12 = call i64 @refcount_release(i32* %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = call i32 @rw_wunlock(i32* @uihashtbl_lock)
  br label %66

16:                                               ; preds = %8
  %17 = load %struct.uidinfo*, %struct.uidinfo** %2, align 8
  %18 = getelementptr inbounds %struct.uidinfo, %struct.uidinfo* %17, i32 0, i32 4
  %19 = call i32 @racct_destroy(i32* %18)
  %20 = load %struct.uidinfo*, %struct.uidinfo** %2, align 8
  %21 = load i32, i32* @ui_hash, align 4
  %22 = call i32 @LIST_REMOVE(%struct.uidinfo* %20, i32 %21)
  %23 = call i32 @rw_wunlock(i32* @uihashtbl_lock)
  %24 = load %struct.uidinfo*, %struct.uidinfo** %2, align 8
  %25 = getelementptr inbounds %struct.uidinfo, %struct.uidinfo* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %16
  %29 = load %struct.uidinfo*, %struct.uidinfo** %2, align 8
  %30 = getelementptr inbounds %struct.uidinfo, %struct.uidinfo* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.uidinfo*, %struct.uidinfo** %2, align 8
  %33 = getelementptr inbounds %struct.uidinfo, %struct.uidinfo* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %31, i64 %34)
  br label %36

36:                                               ; preds = %28, %16
  %37 = load %struct.uidinfo*, %struct.uidinfo** %2, align 8
  %38 = getelementptr inbounds %struct.uidinfo, %struct.uidinfo* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.uidinfo*, %struct.uidinfo** %2, align 8
  %43 = getelementptr inbounds %struct.uidinfo, %struct.uidinfo* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.uidinfo*, %struct.uidinfo** %2, align 8
  %46 = getelementptr inbounds %struct.uidinfo, %struct.uidinfo* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %44, i64 %47)
  br label %49

49:                                               ; preds = %41, %36
  %50 = load %struct.uidinfo*, %struct.uidinfo** %2, align 8
  %51 = getelementptr inbounds %struct.uidinfo, %struct.uidinfo* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.uidinfo*, %struct.uidinfo** %2, align 8
  %56 = getelementptr inbounds %struct.uidinfo, %struct.uidinfo* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.uidinfo*, %struct.uidinfo** %2, align 8
  %59 = getelementptr inbounds %struct.uidinfo, %struct.uidinfo* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %57, i64 %60)
  br label %62

62:                                               ; preds = %54, %49
  %63 = load %struct.uidinfo*, %struct.uidinfo** %2, align 8
  %64 = load i32, i32* @M_UIDINFO, align 4
  %65 = call i32 @free(%struct.uidinfo* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %14, %7
  ret void
}

declare dso_local i64 @refcount_release_if_not_last(i32*) #1

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i64 @refcount_release(i32*) #1

declare dso_local i32 @rw_wunlock(i32*) #1

declare dso_local i32 @racct_destroy(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.uidinfo*, i32) #1

declare dso_local i32 @printf(i8*, i32, i64) #1

declare dso_local i32 @free(%struct.uidinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
