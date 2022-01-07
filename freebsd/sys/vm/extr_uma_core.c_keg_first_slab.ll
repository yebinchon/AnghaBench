; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_keg_first_slab.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_keg_first_slab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@vm_ndomains = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"keg_first_slab: domain %d out of range\00", align 1
@us_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*, i32, i32)* @keg_first_slab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @keg_first_slab(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @vm_ndomains, align 4
  %16 = icmp slt i32 %14, %15
  br label %17

17:                                               ; preds = %13, %3
  %18 = phi i1 [ false, %3 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 @KASSERT(i32 %19, i8* %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = call i32 @KEG_LOCK_ASSERT(%struct.TYPE_5__* %24)
  store i32* null, i32** %9, align 8
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %69, %17
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %32
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %8, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = call i32 @LIST_EMPTY(i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %27
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = call i32* @LIST_FIRST(i32* %40)
  store i32* %41, i32** %4, align 8
  br label %74

42:                                               ; preds = %27
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = call i32 @LIST_EMPTY(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = call i32* @LIST_FIRST(i32* %49)
  store i32* %50, i32** %9, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* @us_link, align 4
  %53 = call i32 @LIST_REMOVE(i32* %51, i32 %52)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* @us_link, align 4
  %58 = call i32 @LIST_INSERT_HEAD(i32* %55, i32* %56, i32 %57)
  %59 = load i32*, i32** %9, align 8
  store i32* %59, i32** %4, align 8
  br label %74

60:                                               ; preds = %42
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  %66 = load i32, i32* @vm_ndomains, align 4
  %67 = srem i32 %65, %66
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %63, %60
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %27, label %73

73:                                               ; preds = %69
  store i32* null, i32** %4, align 8
  br label %74

74:                                               ; preds = %73, %47, %38
  %75 = load i32*, i32** %4, align 8
  ret i32* %75
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @KEG_LOCK_ASSERT(%struct.TYPE_5__*) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local i32* @LIST_FIRST(i32*) #1

declare dso_local i32 @LIST_REMOVE(i32*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
