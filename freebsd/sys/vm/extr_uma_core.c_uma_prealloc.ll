; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_uma_prealloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_uma_prealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_domainset_iter = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_16__, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@M_NOWAIT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@us_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uma_prealloc(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_domainset_iter, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %14 = call i32 @KEG_GET(i32 %12, %struct.TYPE_14__* %13)
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %16 = call i32 @KEG_LOCK(%struct.TYPE_14__* %15)
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sdiv i32 %17, %20
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = mul nsw i32 %22, %25
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* %11, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %29, %2
  br label %33

33:                                               ; preds = %88, %32
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %11, align 4
  %36 = icmp sgt i32 %34, 0
  br i1 %36, label %37, label %89

37:                                               ; preds = %33
  %38 = load i32, i32* @M_NOWAIT, align 4
  store i32 %38, i32* %9, align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = call i32 @vm_domainset_iter_policy_ref_init(%struct.vm_domainset_iter* %5, %struct.TYPE_16__* %40, i32* %10, i32* %9)
  br label %42

42:                                               ; preds = %87, %37
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @M_WAITOK, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call %struct.TYPE_13__* @keg_alloc_slab(%struct.TYPE_14__* %43, i32 %44, i32 %45, i32 %46, i32 %47)
  store %struct.TYPE_13__* %48, %struct.TYPE_13__** %7, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %50 = icmp ne %struct.TYPE_13__* %49, null
  br i1 %50, label %51, label %71

51:                                               ; preds = %42
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %56 = icmp eq %struct.TYPE_14__* %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @MPASS(i32 %57)
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %60, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i64 %64
  store %struct.TYPE_15__* %65, %struct.TYPE_15__** %6, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %69 = load i32, i32* @us_link, align 4
  %70 = call i32 @LIST_INSERT_HEAD(i32* %67, %struct.TYPE_13__* %68, i32 %69)
  br label %88

71:                                               ; preds = %42
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %73 = call i32 @KEG_LOCK(%struct.TYPE_14__* %72)
  %74 = call i64 @vm_domainset_iter_policy(%struct.vm_domainset_iter* %5, i32* %10)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %71
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %78 = call i32 @KEG_UNLOCK(%struct.TYPE_14__* %77)
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = call i32 @vm_wait_doms(i32* %83)
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %86 = call i32 @KEG_LOCK(%struct.TYPE_14__* %85)
  br label %87

87:                                               ; preds = %76, %71
  br label %42

88:                                               ; preds = %51
  br label %33

89:                                               ; preds = %33
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %91 = call i32 @KEG_UNLOCK(%struct.TYPE_14__* %90)
  ret void
}

declare dso_local i32 @KEG_GET(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @KEG_LOCK(%struct.TYPE_14__*) #1

declare dso_local i32 @vm_domainset_iter_policy_ref_init(%struct.vm_domainset_iter*, %struct.TYPE_16__*, i32*, i32*) #1

declare dso_local %struct.TYPE_13__* @keg_alloc_slab(%struct.TYPE_14__*, i32, i32, i32, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i64 @vm_domainset_iter_policy(%struct.vm_domainset_iter*, i32*) #1

declare dso_local i32 @KEG_UNLOCK(%struct.TYPE_14__*) #1

declare dso_local i32 @vm_wait_doms(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
