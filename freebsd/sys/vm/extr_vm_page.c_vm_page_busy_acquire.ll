; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_busy_acquire.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_busy_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }

@VM_ALLOC_SBUSY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@VM_ALLOC_NOWAIT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"vmpba\00", align 1
@VM_ALLOC_WAITFAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"vm_page_busy_acquire: page %p does not belong to %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_page_busy_acquire(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %6, align 8
  br label %11

11:                                               ; preds = %88, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @VM_ALLOC_SBUSY, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = call i64 @vm_page_tryxbusy(%struct.TYPE_7__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @TRUE, align 4
  store i32 %21, i32* %3, align 4
  br label %95

22:                                               ; preds = %16
  br label %30

23:                                               ; preds = %11
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = call i64 @vm_page_trysbusy(%struct.TYPE_7__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @TRUE, align 4
  store i32 %28, i32* %3, align 4
  br label %95

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29, %22
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @VM_ALLOC_NOWAIT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %3, align 4
  br label %95

37:                                               ; preds = %30
  %38 = load i32*, i32** %6, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @VM_OBJECT_WOWNED(i32* %41)
  store i32 %42, i32* %7, align 4
  br label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %43, %40
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = call i64 @vm_page_wired(%struct.TYPE_7__* %49)
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %48, %45
  %53 = phi i1 [ true, %45 ], [ %51, %48 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @MPASS(i32 %54)
  %56 = load i32*, i32** %6, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @VM_ALLOC_SBUSY, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @_vm_page_busy_sleep(i32* %56, %struct.TYPE_7__* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %52
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @VM_OBJECT_WLOCK(i32* %68)
  br label %70

70:                                               ; preds = %67, %52
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @VM_ALLOC_WAITFAIL, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @FALSE, align 4
  store i32 %76, i32* %3, align 4
  br label %95

77:                                               ; preds = %70
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = icmp eq i32* %80, %81
  br i1 %82, label %88, label %83

83:                                               ; preds = %77
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %86, null
  br label %88

88:                                               ; preds = %83, %77
  %89 = phi i1 [ true, %77 ], [ %87, %83 ]
  %90 = zext i1 %89 to i32
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = bitcast i32* %92 to i8*
  %94 = call i32 @KASSERT(i32 %90, i8* %93)
  br label %11

95:                                               ; preds = %75, %35, %27, %20
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i64 @vm_page_tryxbusy(%struct.TYPE_7__*) #1

declare dso_local i64 @vm_page_trysbusy(%struct.TYPE_7__*) #1

declare dso_local i32 @VM_OBJECT_WOWNED(i32*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @vm_page_wired(%struct.TYPE_7__*) #1

declare dso_local i32 @_vm_page_busy_sleep(i32*, %struct.TYPE_7__*, i8*, i32, i32) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
