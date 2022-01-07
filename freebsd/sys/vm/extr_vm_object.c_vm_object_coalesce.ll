; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_object.c_vm_object_coalesce.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_object.c_vm_object_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i64, i64, i32*, i32* }

@TRUE = common dso_local global i32 0, align 4
@OBJT_DEFAULT = common dso_local global i64 0, align 8
@OBJT_SWAP = common dso_local global i64 0, align 8
@OBJ_NOSPLIT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@OBJ_ONEMAPPING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_object_coalesce(%struct.TYPE_8__* %0, i32 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %14 = icmp eq %struct.TYPE_8__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = load i32, i32* @TRUE, align 4
  store i32 %16, i32* %6, align 4
  br label %154

17:                                               ; preds = %5
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %19 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_8__* %18)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @OBJT_DEFAULT, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @OBJT_SWAP, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %25, %17
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @OBJ_NOSPLIT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31, %25
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_8__* %39)
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %6, align 4
  br label %154

42:                                               ; preds = %31
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %44 = call i32 @vm_object_collapse(%struct.TYPE_8__* %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 6
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %51 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_8__* %50)
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %6, align 4
  br label %154

53:                                               ; preds = %42
  %54 = load i64, i64* @PAGE_SHIFT, align 8
  %55 = load i64, i64* %9, align 8
  %56 = ashr i64 %55, %54
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* @PAGE_SHIFT, align 8
  %58 = load i64, i64* %10, align 8
  %59 = ashr i64 %58, %57
  store i64 %59, i64* %10, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i64 @OFF_TO_IDX(i32 %60)
  %62 = load i64, i64* %9, align 8
  %63 = add nsw i64 %61, %62
  store i64 %63, i64* %12, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %68, label %85

68:                                               ; preds = %53
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %12, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %68
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @OBJ_ONEMAPPING, align 4
  %79 = and i32 %77, %78
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %83 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_8__* %82)
  %84 = load i32, i32* @FALSE, align 4
  store i32 %84, i32* %6, align 4
  br label %154

85:                                               ; preds = %74, %68, %53
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 5
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %112

90:                                               ; preds = %85
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %105, label %93

93:                                               ; preds = %90
  %94 = load i64, i64* %10, align 8
  %95 = call i64 @ptoa(i64 %94)
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 5
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @swap_reserve_by_cred(i64 %95, i32* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %93
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %103 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_8__* %102)
  %104 = load i32, i32* @FALSE, align 4
  store i32 %104, i32* %6, align 4
  br label %154

105:                                              ; preds = %93, %90
  %106 = load i64, i64* %10, align 8
  %107 = call i64 @ptoa(i64 %106)
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, %107
  store i64 %111, i64* %109, align 8
  br label %112

112:                                              ; preds = %105, %85
  %113 = load i64, i64* %12, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp slt i64 %113, %116
  br i1 %117, label %118, label %136

118:                                              ; preds = %112
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %120 = load i64, i64* %12, align 8
  %121 = load i64, i64* %12, align 8
  %122 = load i64, i64* %10, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @vm_object_page_remove(%struct.TYPE_8__* %119, i64 %120, i64 %123, i32 0)
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @OBJT_SWAP, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %118
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %132 = load i64, i64* %12, align 8
  %133 = load i64, i64* %10, align 8
  %134 = call i32 @swap_pager_freespace(%struct.TYPE_8__* %131, i64 %132, i64 %133)
  br label %135

135:                                              ; preds = %130, %118
  br label %136

136:                                              ; preds = %135, %112
  %137 = load i64, i64* %12, align 8
  %138 = load i64, i64* %10, align 8
  %139 = add nsw i64 %137, %138
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = icmp sgt i64 %139, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %136
  %145 = load i64, i64* %12, align 8
  %146 = load i64, i64* %10, align 8
  %147 = add nsw i64 %145, %146
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 3
  store i64 %147, i64* %149, align 8
  br label %150

150:                                              ; preds = %144, %136
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %152 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_8__* %151)
  %153 = load i32, i32* @TRUE, align 4
  store i32 %153, i32* %6, align 4
  br label %154

154:                                              ; preds = %150, %101, %81, %49, %38, %15
  %155 = load i32, i32* %6, align 4
  ret i32 %155
}

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_8__*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_8__*) #1

declare dso_local i32 @vm_object_collapse(%struct.TYPE_8__*) #1

declare dso_local i64 @OFF_TO_IDX(i32) #1

declare dso_local i32 @swap_reserve_by_cred(i64, i32*) #1

declare dso_local i64 @ptoa(i64) #1

declare dso_local i32 @vm_object_page_remove(%struct.TYPE_8__*, i64, i64, i32) #1

declare dso_local i32 @swap_pager_freespace(%struct.TYPE_8__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
