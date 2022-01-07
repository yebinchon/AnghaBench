; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_lookup_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_lookup_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_10__*, %struct.TYPE_10__* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_map_lookup_entry(%struct.TYPE_9__* %0, i64 %1, %struct.TYPE_10__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__**, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_10__** %2, %struct.TYPE_10__*** %7, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %8, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %15 = icmp eq %struct.TYPE_10__* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %19, align 8
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %4, align 4
  br label %115

21:                                               ; preds = %3
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %22, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %35 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %35, align 8
  %36 = load i32, i32* @TRUE, align 4
  store i32 %36, i32* %4, align 4
  br label %115

37:                                               ; preds = %27, %21
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = call i32 @vm_map_locked(%struct.TYPE_9__* %38)
  store i32 %39, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = call i64 @sx_try_upgrade(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %78

46:                                               ; preds = %41, %37
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call %struct.TYPE_10__* @vm_map_splay(%struct.TYPE_9__* %47, i64 %48)
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %8, align 8
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = call i32 @VM_MAP_UNLOCK_CONSISTENT(%struct.TYPE_9__* %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = call i32 @sx_downgrade(i32* %56)
  br label %58

58:                                               ; preds = %52, %46
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %59, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  store %struct.TYPE_10__* %66, %struct.TYPE_10__** %67, align 8
  %68 = load i32, i32* @FALSE, align 4
  store i32 %68, i32* %4, align 4
  br label %115

69:                                               ; preds = %58
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %71 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  store %struct.TYPE_10__* %70, %struct.TYPE_10__** %71, align 8
  %72 = load i64, i64* %6, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %72, %75
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %4, align 4
  br label %115

78:                                               ; preds = %41
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  store %struct.TYPE_10__* %80, %struct.TYPE_10__** %9, align 8
  br label %81

81:                                               ; preds = %108, %78
  %82 = load i64, i64* %6, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp slt i64 %82, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  store %struct.TYPE_10__* %90, %struct.TYPE_10__** %8, align 8
  br label %107

91:                                               ; preds = %81
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %6, align 8
  %96 = icmp sle i64 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %91
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %98, %struct.TYPE_10__** %9, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  store %struct.TYPE_10__* %101, %struct.TYPE_10__** %8, align 8
  br label %106

102:                                              ; preds = %91
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %104 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  store %struct.TYPE_10__* %103, %struct.TYPE_10__** %104, align 8
  %105 = load i32, i32* @TRUE, align 4
  store i32 %105, i32* %4, align 4
  br label %115

106:                                              ; preds = %97
  br label %107

107:                                              ; preds = %106, %87
  br label %108

108:                                              ; preds = %107
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %110 = icmp ne %struct.TYPE_10__* %109, null
  br i1 %110, label %81, label %111

111:                                              ; preds = %108
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %113 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  store %struct.TYPE_10__* %112, %struct.TYPE_10__** %113, align 8
  %114 = load i32, i32* @FALSE, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %111, %102, %69, %64, %33, %16
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @vm_map_locked(%struct.TYPE_9__*) #1

declare dso_local i64 @sx_try_upgrade(i32*) #1

declare dso_local %struct.TYPE_10__* @vm_map_splay(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @VM_MAP_UNLOCK_CONSISTENT(%struct.TYPE_9__*) #1

declare dso_local i32 @sx_downgrade(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
