; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_knlist_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_knlist_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knlist = type { i32, i32 (i32)*, i32, i32 (i32)* }
%struct.knote = type { i32, i32, %struct.knlist* }

@.str = private unnamed_addr constant [21 x i8] c"knote %p not in flux\00", align 1
@KN_DETACHED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"knote %p was not detached\00", align 1
@kn_selnext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @knlist_add(%struct.knlist* %0, %struct.knote* %1, i32 %2) #0 {
  %4 = alloca %struct.knlist*, align 8
  %5 = alloca %struct.knote*, align 8
  %6 = alloca i32, align 4
  store %struct.knlist* %0, %struct.knlist** %4, align 8
  store %struct.knote* %1, %struct.knote** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.knlist*, %struct.knlist** %4, align 8
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @KNL_ASSERT_LOCK(%struct.knlist* %7, i32 %8)
  %10 = load %struct.knote*, %struct.knote** %5, align 8
  %11 = getelementptr inbounds %struct.knote, %struct.knote* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @KQ_NOTOWNED(i32 %12)
  %14 = load %struct.knote*, %struct.knote** %5, align 8
  %15 = call i32 @kn_in_flux(%struct.knote* %14)
  %16 = load %struct.knote*, %struct.knote** %5, align 8
  %17 = bitcast %struct.knote* %16 to i8*
  %18 = call i32 @KASSERT(i32 %15, i8* %17)
  %19 = load %struct.knote*, %struct.knote** %5, align 8
  %20 = getelementptr inbounds %struct.knote, %struct.knote* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @KN_DETACHED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = load %struct.knote*, %struct.knote** %5, align 8
  %27 = bitcast %struct.knote* %26 to i8*
  %28 = call i32 @KASSERT(i32 %25, i8* %27)
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %3
  %32 = load %struct.knlist*, %struct.knlist** %4, align 8
  %33 = getelementptr inbounds %struct.knlist, %struct.knlist* %32, i32 0, i32 3
  %34 = load i32 (i32)*, i32 (i32)** %33, align 8
  %35 = load %struct.knlist*, %struct.knlist** %4, align 8
  %36 = getelementptr inbounds %struct.knlist, %struct.knlist* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 %34(i32 %37)
  br label %39

39:                                               ; preds = %31, %3
  %40 = load %struct.knlist*, %struct.knlist** %4, align 8
  %41 = getelementptr inbounds %struct.knlist, %struct.knlist* %40, i32 0, i32 2
  %42 = load %struct.knote*, %struct.knote** %5, align 8
  %43 = load i32, i32* @kn_selnext, align 4
  %44 = call i32 @SLIST_INSERT_HEAD(i32* %41, %struct.knote* %42, i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %39
  %48 = load %struct.knlist*, %struct.knlist** %4, align 8
  %49 = getelementptr inbounds %struct.knlist, %struct.knlist* %48, i32 0, i32 1
  %50 = load i32 (i32)*, i32 (i32)** %49, align 8
  %51 = load %struct.knlist*, %struct.knlist** %4, align 8
  %52 = getelementptr inbounds %struct.knlist, %struct.knlist* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 %50(i32 %53)
  br label %55

55:                                               ; preds = %47, %39
  %56 = load %struct.knote*, %struct.knote** %5, align 8
  %57 = getelementptr inbounds %struct.knote, %struct.knote* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @KQ_LOCK(i32 %58)
  %60 = load %struct.knlist*, %struct.knlist** %4, align 8
  %61 = load %struct.knote*, %struct.knote** %5, align 8
  %62 = getelementptr inbounds %struct.knote, %struct.knote* %61, i32 0, i32 2
  store %struct.knlist* %60, %struct.knlist** %62, align 8
  %63 = load i32, i32* @KN_DETACHED, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.knote*, %struct.knote** %5, align 8
  %66 = getelementptr inbounds %struct.knote, %struct.knote* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %struct.knote*, %struct.knote** %5, align 8
  %70 = getelementptr inbounds %struct.knote, %struct.knote* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @KQ_UNLOCK(i32 %71)
  ret void
}

declare dso_local i32 @KNL_ASSERT_LOCK(%struct.knlist*, i32) #1

declare dso_local i32 @KQ_NOTOWNED(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @kn_in_flux(%struct.knote*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.knote*, i32) #1

declare dso_local i32 @KQ_LOCK(i32) #1

declare dso_local i32 @KQ_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
