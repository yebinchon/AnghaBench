; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_knlist_remove_kq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_knlist_remove_kq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knlist = type { i32, i32, i32 (i32)* }
%struct.knote = type { i32, %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"kq locked w/o knl locked\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4
@MA_NOTOWNED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"knote %p not in flux\00", align 1
@KN_DETACHED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"knote %p was already detached\00", align 1
@knote = common dso_local global i32 0, align 4
@kn_selnext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knlist*, %struct.knote*, i32, i32)* @knlist_remove_kq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @knlist_remove_kq(%struct.knlist* %0, %struct.knote* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.knlist*, align 8
  %6 = alloca %struct.knote*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.knlist* %0, %struct.knlist** %5, align 8
  store %struct.knote* %1, %struct.knote** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br label %14

14:                                               ; preds = %11, %4
  %15 = phi i1 [ true, %4 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @KASSERT(i32 %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.knlist*, %struct.knlist** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @KNL_ASSERT_LOCK(%struct.knlist* %18, i32 %19)
  %21 = load %struct.knote*, %struct.knote** %6, align 8
  %22 = getelementptr inbounds %struct.knote, %struct.knote* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = load i32, i32* @MA_OWNED, align 4
  br label %31

29:                                               ; preds = %14
  %30 = load i32, i32* @MA_NOTOWNED, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = call i32 @mtx_assert(i32* %24, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load %struct.knote*, %struct.knote** %6, align 8
  %38 = call i64 @kn_in_flux(%struct.knote* %37)
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %36, %31
  %41 = phi i1 [ true, %31 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  %43 = load %struct.knote*, %struct.knote** %6, align 8
  %44 = bitcast %struct.knote* %43 to i8*
  %45 = call i32 @KASSERT(i32 %42, i8* %44)
  %46 = load %struct.knote*, %struct.knote** %6, align 8
  %47 = getelementptr inbounds %struct.knote, %struct.knote* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @KN_DETACHED, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = load %struct.knote*, %struct.knote** %6, align 8
  %54 = bitcast %struct.knote* %53 to i8*
  %55 = call i32 @KASSERT(i32 %52, i8* %54)
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %40
  %59 = load %struct.knlist*, %struct.knlist** %5, align 8
  %60 = getelementptr inbounds %struct.knlist, %struct.knlist* %59, i32 0, i32 2
  %61 = load i32 (i32)*, i32 (i32)** %60, align 8
  %62 = load %struct.knlist*, %struct.knlist** %5, align 8
  %63 = getelementptr inbounds %struct.knlist, %struct.knlist* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 %61(i32 %64)
  br label %66

66:                                               ; preds = %58, %40
  %67 = load %struct.knlist*, %struct.knlist** %5, align 8
  %68 = getelementptr inbounds %struct.knlist, %struct.knlist* %67, i32 0, i32 0
  %69 = load %struct.knote*, %struct.knote** %6, align 8
  %70 = load i32, i32* @knote, align 4
  %71 = load i32, i32* @kn_selnext, align 4
  %72 = call i32 @SLIST_REMOVE(i32* %68, %struct.knote* %69, i32 %70, i32 %71)
  %73 = load %struct.knote*, %struct.knote** %6, align 8
  %74 = getelementptr inbounds %struct.knote, %struct.knote* %73, i32 0, i32 2
  store i32* null, i32** %74, align 8
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %66
  %78 = load %struct.knlist*, %struct.knlist** %5, align 8
  %79 = call i32 @kn_list_unlock(%struct.knlist* %78)
  br label %80

80:                                               ; preds = %77, %66
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %80
  %84 = load %struct.knote*, %struct.knote** %6, align 8
  %85 = getelementptr inbounds %struct.knote, %struct.knote* %84, i32 0, i32 1
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = call i32 @KQ_LOCK(%struct.TYPE_3__* %86)
  br label %88

88:                                               ; preds = %83, %80
  %89 = load i32, i32* @KN_DETACHED, align 4
  %90 = load %struct.knote*, %struct.knote** %6, align 8
  %91 = getelementptr inbounds %struct.knote, %struct.knote* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %88
  %97 = load %struct.knote*, %struct.knote** %6, align 8
  %98 = getelementptr inbounds %struct.knote, %struct.knote* %97, i32 0, i32 1
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = call i32 @KQ_UNLOCK(%struct.TYPE_3__* %99)
  br label %101

101:                                              ; preds = %96, %88
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @KNL_ASSERT_LOCK(%struct.knlist*, i32) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i64 @kn_in_flux(%struct.knote*) #1

declare dso_local i32 @SLIST_REMOVE(i32*, %struct.knote*, i32, i32) #1

declare dso_local i32 @kn_list_unlock(%struct.knlist*) #1

declare dso_local i32 @KQ_LOCK(%struct.TYPE_3__*) #1

declare dso_local i32 @KQ_UNLOCK(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
