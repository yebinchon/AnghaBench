; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_entry_unlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_entry_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32*, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_22__*, %struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_24__*, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_24__* }

@.str = private unnamed_addr constant [46 x i8] c"vm_map_entry_unlink: unlink object not mapped\00", align 1
@KTR_VM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"vm_map_entry_unlink: map %p, nentries %d, entry %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, %struct.TYPE_24__*, i32)* @vm_map_entry_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_map_entry_unlink(%struct.TYPE_23__* %0, %struct.TYPE_24__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %12 = call i32 @VM_MAP_ASSERT_LOCKED(%struct.TYPE_23__* %11)
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_24__* @vm_map_splay_split(%struct.TYPE_23__* %13, i32 %16, i32 0, %struct.TYPE_24__** %7, %struct.TYPE_24__** %8)
  store %struct.TYPE_24__* %17, %struct.TYPE_24__** %9, align 8
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %19 = icmp ne %struct.TYPE_24__* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @KASSERT(i32 %20, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %23 = call i32 @vm_map_splay_findnext(%struct.TYPE_24__* %22, %struct.TYPE_24__** %8)
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %75 [
    i32 129, label %25
    i32 128, label %46
  ]

25:                                               ; preds = %3
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  store %struct.TYPE_24__* %38, %struct.TYPE_24__** %10, align 8
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  store %struct.TYPE_24__* %39, %struct.TYPE_24__** %9, align 8
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %41, align 8
  store %struct.TYPE_24__* %42, %struct.TYPE_24__** %8, align 8
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 2
  store %struct.TYPE_24__* %43, %struct.TYPE_24__** %45, align 8
  br label %75

46:                                               ; preds = %3
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %48 = call i32 @vm_map_splay_findprev(%struct.TYPE_24__* %47, %struct.TYPE_24__** %7)
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 2
  %52 = icmp ne %struct.TYPE_24__* %49, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  store %struct.TYPE_24__* %54, %struct.TYPE_24__** %9, align 8
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %56, align 8
  store %struct.TYPE_24__* %57, %struct.TYPE_24__** %7, align 8
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 3
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %59, align 8
  br label %74

60:                                               ; preds = %46
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 2
  %64 = icmp ne %struct.TYPE_24__* %61, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  store %struct.TYPE_24__* %66, %struct.TYPE_24__** %9, align 8
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %68, align 8
  store %struct.TYPE_24__* %69, %struct.TYPE_24__** %8, align 8
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 2
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %71, align 8
  br label %73

72:                                               ; preds = %60
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %9, align 8
  br label %73

73:                                               ; preds = %72, %65
  br label %74

74:                                               ; preds = %73, %53
  br label %75

75:                                               ; preds = %3, %74, %25
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %77, align 8
  store %struct.TYPE_24__* %78, %struct.TYPE_24__** %10, align 8
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %80, align 8
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 0
  store %struct.TYPE_22__* %81, %struct.TYPE_22__** %83, align 8
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 0
  store %struct.TYPE_24__* %84, %struct.TYPE_24__** %88, align 8
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %90 = icmp ne %struct.TYPE_24__* %89, null
  br i1 %90, label %91, label %97

91:                                               ; preds = %75
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %96 = call i32 @vm_map_splay_merge(%struct.TYPE_23__* %92, %struct.TYPE_24__* %93, %struct.TYPE_24__* %94, %struct.TYPE_24__* %95)
  br label %100

97:                                               ; preds = %75
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 1
  store i32* null, i32** %99, align 8
  br label %100

100:                                              ; preds = %97, %91
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %102 = call i32 @VM_MAP_ASSERT_CONSISTENT(%struct.TYPE_23__* %101)
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %104, align 8
  %107 = load i32, i32* @KTR_VM, align 4
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %113 = call i32 @CTR3(i32 %107, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_23__* %108, i32 %111, %struct.TYPE_24__* %112)
  ret void
}

declare dso_local i32 @VM_MAP_ASSERT_LOCKED(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_24__* @vm_map_splay_split(%struct.TYPE_23__*, i32, i32, %struct.TYPE_24__**, %struct.TYPE_24__**) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_map_splay_findnext(%struct.TYPE_24__*, %struct.TYPE_24__**) #1

declare dso_local i32 @vm_map_splay_findprev(%struct.TYPE_24__*, %struct.TYPE_24__**) #1

declare dso_local i32 @vm_map_splay_merge(%struct.TYPE_23__*, %struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i32 @VM_MAP_ASSERT_CONSISTENT(%struct.TYPE_23__*) #1

declare dso_local i32 @CTR3(i32, i8*, %struct.TYPE_23__*, i32, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
