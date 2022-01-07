; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_inmem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_inmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { %struct.TYPE_4__*, i32*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"inmem\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, i64)* @inmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inmem(%struct.vnode* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.vnode* %0, %struct.vnode** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.vnode*, %struct.vnode** %4, align 8
  %13 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.vnode*, %struct.vnode** %4, align 8
  %15 = getelementptr inbounds %struct.vnode, %struct.vnode* %14, i32 0, i32 2
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @incore(i32* %15, i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %121

20:                                               ; preds = %2
  %21 = load %struct.vnode*, %struct.vnode** %4, align 8
  %22 = getelementptr inbounds %struct.vnode, %struct.vnode* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = icmp eq %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %121

26:                                               ; preds = %20
  %27 = load %struct.vnode*, %struct.vnode** %4, align 8
  %28 = getelementptr inbounds %struct.vnode, %struct.vnode* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %6, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %121

33:                                               ; preds = %26
  %34 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.vnode*, %struct.vnode** %4, align 8
  %37 = getelementptr inbounds %struct.vnode, %struct.vnode* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %35, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %33
  %44 = load %struct.vnode*, %struct.vnode** %4, align 8
  %45 = getelementptr inbounds %struct.vnode, %struct.vnode* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %9, align 8
  br label %50

50:                                               ; preds = %43, %33
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.vnode*, %struct.vnode** %4, align 8
  %53 = getelementptr inbounds %struct.vnode, %struct.vnode* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = mul nsw i64 %51, %57
  store i64 %58, i64* %11, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @VM_OBJECT_RLOCK(i32* %59)
  store i64 0, i64* %7, align 8
  br label %61

61:                                               ; preds = %111, %50
  %62 = load i64, i64* %7, align 8
  %63 = load %struct.vnode*, %struct.vnode** %4, align 8
  %64 = getelementptr inbounds %struct.vnode, %struct.vnode* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp slt i64 %62, %68
  br i1 %69, label %70, label %115

70:                                               ; preds = %61
  %71 = load i32*, i32** %6, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* %7, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @OFF_TO_IDX(i64 %74)
  %76 = call i32 @vm_page_lookup(i32* %71, i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %70
  br label %118

80:                                               ; preds = %70
  %81 = load i64, i64* %9, align 8
  store i64 %81, i64* %8, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* @PAGE_SIZE, align 8
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* %11, align 8
  %86 = add nsw i64 %84, %85
  %87 = load i64, i64* @PAGE_MASK, align 8
  %88 = and i64 %86, %87
  %89 = sub nsw i64 %83, %88
  %90 = icmp sgt i64 %82, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %80
  %92 = load i64, i64* @PAGE_SIZE, align 8
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* %11, align 8
  %95 = add nsw i64 %93, %94
  %96 = load i64, i64* @PAGE_MASK, align 8
  %97 = and i64 %95, %96
  %98 = sub nsw i64 %92, %97
  store i64 %98, i64* %8, align 8
  br label %99

99:                                               ; preds = %91, %80
  %100 = load i32, i32* %10, align 4
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* %11, align 8
  %103 = add nsw i64 %101, %102
  %104 = load i64, i64* @PAGE_MASK, align 8
  %105 = and i64 %103, %104
  %106 = load i64, i64* %8, align 8
  %107 = call i64 @vm_page_is_valid(i32 %100, i64 %105, i64 %106)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  br label %118

110:                                              ; preds = %99
  br label %111

111:                                              ; preds = %110
  %112 = load i64, i64* %8, align 8
  %113 = load i64, i64* %7, align 8
  %114 = add nsw i64 %113, %112
  store i64 %114, i64* %7, align 8
  br label %61

115:                                              ; preds = %61
  %116 = load i32*, i32** %6, align 8
  %117 = call i32 @VM_OBJECT_RUNLOCK(i32* %116)
  store i32 1, i32* %3, align 4
  br label %121

118:                                              ; preds = %109, %79
  %119 = load i32*, i32** %6, align 8
  %120 = call i32 @VM_OBJECT_RUNLOCK(i32* %119)
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %118, %115, %32, %25, %19
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local i64 @incore(i32*, i64) #1

declare dso_local i32 @VM_OBJECT_RLOCK(i32*) #1

declare dso_local i32 @vm_page_lookup(i32*, i32) #1

declare dso_local i32 @OFF_TO_IDX(i64) #1

declare dso_local i64 @vm_page_is_valid(i32, i64, i64) #1

declare dso_local i32 @VM_OBJECT_RUNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
