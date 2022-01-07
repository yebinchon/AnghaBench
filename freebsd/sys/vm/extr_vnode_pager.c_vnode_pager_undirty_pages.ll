; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vnode_pager.c_vnode_pager_undirty_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vnode_pager.c_vnode_pager_undirty_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@VM_PAGER_OK = common dso_local global i32 0, align 4
@VM_PAGER_AGAIN = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DEV_BSIZE = common dso_local global i32 0, align 4
@VM_PAGER_BAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnode_pager_undirty_pages(%struct.TYPE_5__** %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_5__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %5
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %142

22:                                               ; preds = %17, %5
  %23 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %23, i64 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @VM_OBJECT_WLOCK(i32 %28)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %67, %22
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %73

34:                                               ; preds = %30
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @trunc_page(i32 %36)
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load i32, i32* @VM_PAGER_OK, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %40, i32* %44, align 4
  %45 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %45, i64 %47
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = call i32 @vm_page_undirty(%struct.TYPE_5__* %49)
  br label %66

51:                                               ; preds = %34
  %52 = load i32, i32* @VM_PAGER_AGAIN, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %52, i32* %56, align 4
  %57 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %57, i64 %59
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @PAGE_MASK, align 4
  %64 = and i32 %62, %63
  %65 = call i32 @vm_page_clear_dirty(%struct.TYPE_5__* %61, i32 0, i32 %64)
  br label %66

66:                                               ; preds = %51, %39
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* @PAGE_SIZE, align 4
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %13, align 4
  br label %30

73:                                               ; preds = %30
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp sge i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %139

78:                                               ; preds = %73
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @trunc_page(i32 %80)
  %82 = call i32 @OFF_TO_IDX(i32 %81)
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %135, %78
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %138

87:                                               ; preds = %83
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @trunc_page(i32 %89)
  %91 = icmp ne i32 %88, %90
  br i1 %91, label %92, label %125

92:                                               ; preds = %87
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @PAGE_MASK, align 4
  %95 = and i32 %93, %94
  %96 = load i32, i32* @DEV_BSIZE, align 4
  %97 = call i32 @roundup2(i32 %95, i32 %96)
  store i32 %97, i32* %14, align 4
  %98 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %98, i64 %100
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* @PAGE_SIZE, align 4
  %105 = load i32, i32* %14, align 4
  %106 = sub nsw i32 %104, %105
  %107 = call i32 @vm_page_clear_dirty(%struct.TYPE_5__* %102, i32 %103, i32 %106)
  %108 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %108, i64 %110
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %92
  %117 = load i32, i32* @VM_PAGER_OK, align 4
  %118 = load i32*, i32** %7, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %117, i32* %121, align 4
  br label %122

122:                                              ; preds = %116, %92
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @round_page(i32 %123)
  store i32 %124, i32* %13, align 4
  br label %134

125:                                              ; preds = %87
  %126 = load i32, i32* @VM_PAGER_BAD, align 4
  %127 = load i32*, i32** %7, align 8
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 %126, i32* %130, align 4
  %131 = load i32, i32* @PAGE_SIZE, align 4
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %13, align 4
  br label %134

134:                                              ; preds = %125, %122
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %12, align 4
  br label %83

138:                                              ; preds = %83
  br label %139

139:                                              ; preds = %138, %77
  %140 = load i32, i32* %11, align 4
  %141 = call i32 @VM_OBJECT_WUNLOCK(i32 %140)
  br label %142

142:                                              ; preds = %139, %21
  ret void
}

declare dso_local i32 @VM_OBJECT_WLOCK(i32) #1

declare dso_local i32 @trunc_page(i32) #1

declare dso_local i32 @vm_page_undirty(%struct.TYPE_5__*) #1

declare dso_local i32 @vm_page_clear_dirty(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @OFF_TO_IDX(i32) #1

declare dso_local i32 @roundup2(i32, i32) #1

declare dso_local i32 @round_page(i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
