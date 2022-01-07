; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_object.c_vm_object_scan_all_shadowed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_object.c_vm_object_scan_all_shadowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i32, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i64 }

@OBJT_DEFAULT = common dso_local global i64 0, align 8
@OBJT_SWAP = common dso_local global i64 0, align 8
@listq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @vm_object_scan_all_shadowed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_object_scan_all_shadowed(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %12 = call i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_15__* %11)
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %16 = call i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_15__* %15)
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %4, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @OBJT_DEFAULT, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @OBJT_SWAP, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %117

32:                                               ; preds = %25, %1
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @OFF_TO_IDX(i32 %35)
  store i64 %36, i64* %7, align 8
  store i64 %36, i64* %9, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call %struct.TYPE_14__* @vm_page_find_least(%struct.TYPE_15__* %37, i64 %38)
  store %struct.TYPE_14__* %39, %struct.TYPE_14__** %5, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i64 @swap_pager_find_least(%struct.TYPE_15__* %40, i64 %41)
  store i64 %42, i64* %10, align 8
  br label %43

43:                                               ; preds = %113, %32
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %45 = icmp ne %struct.TYPE_14__* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %9, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %54 = load i32, i32* @listq, align 4
  %55 = call %struct.TYPE_14__* @TAILQ_NEXT(%struct.TYPE_14__* %53, i32 %54)
  store %struct.TYPE_14__* %55, %struct.TYPE_14__** %5, align 8
  br label %56

56:                                               ; preds = %52, %46, %43
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i64 @swap_pager_find_least(%struct.TYPE_15__* %61, i64 %62)
  store i64 %63, i64* %10, align 8
  br label %64

64:                                               ; preds = %60, %56
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %66 = icmp eq %struct.TYPE_14__* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load i64, i64* %10, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp sge i64 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %116

74:                                               ; preds = %67, %64
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %76 = icmp eq %struct.TYPE_14__* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i64, i64* %10, align 8
  store i64 %78, i64* %9, align 8
  br label %85

79:                                               ; preds = %74
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %10, align 8
  %84 = call i64 @MIN(i64 %82, i64 %83)
  store i64 %84, i64* %9, align 8
  br label %85

85:                                               ; preds = %79, %77
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* %7, align 8
  %89 = sub nsw i64 %87, %88
  store i64 %89, i64* %8, align 8
  %90 = load i64, i64* %8, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp sge i64 %90, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  br label %116

96:                                               ; preds = %86
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %98 = load i64, i64* %8, align 8
  %99 = call %struct.TYPE_14__* @vm_page_lookup(%struct.TYPE_15__* %97, i64 %98)
  store %struct.TYPE_14__* %99, %struct.TYPE_14__** %6, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %101 = icmp eq %struct.TYPE_14__* %100, null
  br i1 %101, label %106, label %102

102:                                              ; preds = %96
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %104 = call i64 @vm_page_none_valid(%struct.TYPE_14__* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %102, %96
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %108 = load i64, i64* %8, align 8
  %109 = call i32 @vm_pager_has_page(%struct.TYPE_15__* %107, i64 %108, i32* null, i32* null)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %106
  store i32 0, i32* %2, align 4
  br label %117

112:                                              ; preds = %106, %102
  br label %113

113:                                              ; preds = %112
  %114 = load i64, i64* %9, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %9, align 8
  br label %43

116:                                              ; preds = %95, %73
  store i32 1, i32* %2, align 4
  br label %117

117:                                              ; preds = %116, %111, %31
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_15__*) #1

declare dso_local i64 @OFF_TO_IDX(i32) #1

declare dso_local %struct.TYPE_14__* @vm_page_find_least(%struct.TYPE_15__*, i64) #1

declare dso_local i64 @swap_pager_find_least(%struct.TYPE_15__*, i64) #1

declare dso_local %struct.TYPE_14__* @TAILQ_NEXT(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local %struct.TYPE_14__* @vm_page_lookup(%struct.TYPE_15__*, i64) #1

declare dso_local i64 @vm_page_none_valid(%struct.TYPE_14__*) #1

declare dso_local i32 @vm_pager_has_page(%struct.TYPE_15__*, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
