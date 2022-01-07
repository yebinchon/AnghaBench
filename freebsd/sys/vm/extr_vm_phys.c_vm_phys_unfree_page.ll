; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_phys.c_vm_phys_unfree_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_phys.c_vm_phys_unfree_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_phys_seg = type { i32, %struct.TYPE_5__*, %struct.vm_freelist***, i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i64 }
%struct.vm_freelist = type { i32 }

@vm_phys_segs = common dso_local global %struct.vm_phys_seg* null, align 8
@VM_NFREEORDER = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"vm_phys_unfree_page: page %p has unexpected order %d\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"vm_phys_unfree_page: fatal inconsistency\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_phys_unfree_page(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.vm_freelist*, align 8
  %5 = alloca %struct.vm_phys_seg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %11 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** @vm_phys_segs, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %11, i64 %14
  store %struct.vm_phys_seg* %15, %struct.vm_phys_seg** %5, align 8
  %16 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %5, align 8
  %17 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @VM_DOMAIN(i32 %18)
  %20 = call i32 @vm_domain_free_assert_locked(i32 %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %8, align 8
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %64, %1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @VM_NFREEORDER, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @VM_NFREEORDER, align 4
  %31 = sub nsw i32 %30, 1
  %32 = icmp slt i32 %29, %31
  br label %33

33:                                               ; preds = %28, %22
  %34 = phi i1 [ false, %22 ], [ %32, %28 ]
  br i1 %34, label %35, label %65

35:                                               ; preds = %33
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PAGE_SHIFT, align 4
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %41, %42
  %44 = shl i32 -1, %43
  %45 = and i32 %40, %44
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %5, align 8
  %48 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sge i32 %46, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %35
  %52 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %5, align 8
  %53 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %5, align 8
  %57 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %55, %58
  %60 = call i64 @atop(i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %60
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %8, align 8
  br label %64

62:                                               ; preds = %35
  %63 = load i32, i32* @FALSE, align 4
  store i32 %63, i32* %2, align 4
  br label %165

64:                                               ; preds = %51
  br label %22

65:                                               ; preds = %33
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* @FALSE, align 4
  store i32 %72, i32* %2, align 4
  br label %165

73:                                               ; preds = %65
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @VM_NFREEORDER, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* @FALSE, align 4
  store i32 %80, i32* %2, align 4
  br label %165

81:                                               ; preds = %73
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @VM_NFREEORDER, align 4
  %86 = icmp slt i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  %94 = call i32 @KASSERT(i32 %87, i8* %93)
  %95 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %5, align 8
  %96 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %95, i32 0, i32 2
  %97 = load %struct.vm_freelist***, %struct.vm_freelist**** %96, align 8
  %98 = load %struct.vm_freelist**, %struct.vm_freelist*** %97, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.vm_freelist*, %struct.vm_freelist** %98, i64 %101
  %103 = load %struct.vm_freelist*, %struct.vm_freelist** %102, align 8
  store %struct.vm_freelist* %103, %struct.vm_freelist** %4, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %10, align 4
  %107 = load %struct.vm_freelist*, %struct.vm_freelist** %4, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @vm_freelist_rem(%struct.vm_freelist* %107, %struct.TYPE_5__* %108, i32 %109)
  br label %111

111:                                              ; preds = %153, %81
  %112 = load i32, i32* %10, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %158

114:                                              ; preds = %111
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %10, align 4
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @PAGE_SHIFT, align 4
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %120, %121
  %123 = shl i32 1, %122
  %124 = xor i32 %119, %123
  store i32 %124, i32* %7, align 4
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %141

130:                                              ; preds = %114
  %131 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %5, align 8
  %132 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %131, i32 0, i32 1
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %5, align 8
  %136 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sub nsw i32 %134, %137
  %139 = call i64 @atop(i32 %138)
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i64 %139
  store %struct.TYPE_5__* %140, %struct.TYPE_5__** %9, align 8
  br label %153

141:                                              ; preds = %114
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %142, %struct.TYPE_5__** %9, align 8
  %143 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %5, align 8
  %144 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %143, i32 0, i32 1
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = load i32, i32* %7, align 4
  %147 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %5, align 8
  %148 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sub nsw i32 %146, %149
  %151 = call i64 @atop(i32 %150)
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i64 %151
  store %struct.TYPE_5__* %152, %struct.TYPE_5__** %8, align 8
  br label %153

153:                                              ; preds = %141, %130
  %154 = load %struct.vm_freelist*, %struct.vm_freelist** %4, align 8
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %156 = load i32, i32* %10, align 4
  %157 = call i32 @vm_freelist_add(%struct.vm_freelist* %154, %struct.TYPE_5__* %155, i32 %156, i32 0)
  br label %111

158:                                              ; preds = %111
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %161 = icmp eq %struct.TYPE_5__* %159, %160
  %162 = zext i1 %161 to i32
  %163 = call i32 @KASSERT(i32 %162, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %164 = load i32, i32* @TRUE, align 4
  store i32 %164, i32* %2, align 4
  br label %165

165:                                              ; preds = %158, %79, %71, %62
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local i32 @vm_domain_free_assert_locked(i32) #1

declare dso_local i32 @VM_DOMAIN(i32) #1

declare dso_local i64 @atop(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_freelist_rem(%struct.vm_freelist*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @vm_freelist_add(%struct.vm_freelist*, %struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
