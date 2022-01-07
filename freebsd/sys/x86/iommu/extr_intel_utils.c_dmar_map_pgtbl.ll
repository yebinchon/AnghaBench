; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_utils.c_dmar_map_pgtbl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_utils.c_dmar_map_pgtbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sf_buf = type { i32 }
%struct.TYPE_5__ = type { i32 }

@DMAR_PGF_OBJL = common dso_local global i32 0, align 4
@DMAR_PGF_ALLOC = common dso_local global i32 0, align 4
@DMAR_PGF_WAITOK = common dso_local global i32 0, align 4
@SFB_CPUPRIVATE = common dso_local global i32 0, align 4
@SFB_NOWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dmar_map_pgtbl(i32 %0, i32 %1, i32 %2, %struct.sf_buf** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sf_buf**, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.sf_buf** %3, %struct.sf_buf*** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @DMAR_PGF_OBJL, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @VM_OBJECT_WLOCK(i32 %17)
  br label %19

19:                                               ; preds = %16, %4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.TYPE_5__* @vm_page_lookup(i32 %20, i32 %21)
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %10, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %24 = icmp eq %struct.TYPE_5__* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @DMAR_PGF_ALLOC, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @DMAR_PGF_OBJL, align 4
  %35 = or i32 %33, %34
  %36 = call %struct.TYPE_5__* @dmar_pgalloc(i32 %31, i32 %32, i32 %35)
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %10, align 8
  store i32 1, i32* %11, align 4
  br label %38

37:                                               ; preds = %25, %19
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %37, %30
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %40 = icmp eq %struct.TYPE_5__* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @DMAR_PGF_OBJL, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @VM_OBJECT_WUNLOCK(i32 %47)
  br label %49

49:                                               ; preds = %46, %41
  store i8* null, i8** %5, align 8
  br label %130

50:                                               ; preds = %38
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @DMAR_PGF_WAITOK, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @VM_OBJECT_WUNLOCK(i32 %56)
  br label %58

58:                                               ; preds = %55, %50
  %59 = call i32 (...) @sched_pin()
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %61 = load i32, i32* @SFB_CPUPRIVATE, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @DMAR_PGF_WAITOK, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load i32, i32* @SFB_NOWAIT, align 4
  br label %69

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %68, %66
  %70 = phi i32 [ %67, %66 ], [ 0, %68 ]
  %71 = or i32 %61, %70
  %72 = call %struct.sf_buf* @sf_buf_alloc(%struct.TYPE_5__* %60, i32 %71)
  %73 = load %struct.sf_buf**, %struct.sf_buf*** %9, align 8
  store %struct.sf_buf* %72, %struct.sf_buf** %73, align 8
  %74 = load %struct.sf_buf**, %struct.sf_buf*** %9, align 8
  %75 = load %struct.sf_buf*, %struct.sf_buf** %74, align 8
  %76 = icmp eq %struct.sf_buf* %75, null
  br i1 %76, label %77, label %101

77:                                               ; preds = %69
  %78 = call i32 (...) @sched_unpin()
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %77
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @VM_OBJECT_ASSERT_WLOCKED(i32 %82)
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @DMAR_PGF_OBJL, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @dmar_pgfree(i32 %84, i32 %87, i32 %90)
  br label %92

92:                                               ; preds = %81, %77
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @DMAR_PGF_OBJL, align 4
  %95 = and i32 %93, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @VM_OBJECT_WUNLOCK(i32 %98)
  br label %100

100:                                              ; preds = %97, %92
  store i8* null, i8** %5, align 8
  br label %130

101:                                              ; preds = %69
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @DMAR_PGF_WAITOK, align 4
  %104 = load i32, i32* @DMAR_PGF_OBJL, align 4
  %105 = or i32 %103, %104
  %106 = and i32 %102, %105
  %107 = load i32, i32* @DMAR_PGF_WAITOK, align 4
  %108 = load i32, i32* @DMAR_PGF_OBJL, align 4
  %109 = or i32 %107, %108
  %110 = icmp eq i32 %106, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %101
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @VM_OBJECT_WLOCK(i32 %112)
  br label %125

114:                                              ; preds = %101
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @DMAR_PGF_WAITOK, align 4
  %117 = load i32, i32* @DMAR_PGF_OBJL, align 4
  %118 = or i32 %116, %117
  %119 = and i32 %115, %118
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %114
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @VM_OBJECT_WUNLOCK(i32 %122)
  br label %124

124:                                              ; preds = %121, %114
  br label %125

125:                                              ; preds = %124, %111
  %126 = load %struct.sf_buf**, %struct.sf_buf*** %9, align 8
  %127 = load %struct.sf_buf*, %struct.sf_buf** %126, align 8
  %128 = call i64 @sf_buf_kva(%struct.sf_buf* %127)
  %129 = inttoptr i64 %128 to i8*
  store i8* %129, i8** %5, align 8
  br label %130

130:                                              ; preds = %125, %100, %49
  %131 = load i8*, i8** %5, align 8
  ret i8* %131
}

declare dso_local i32 @VM_OBJECT_WLOCK(i32) #1

declare dso_local %struct.TYPE_5__* @vm_page_lookup(i32, i32) #1

declare dso_local %struct.TYPE_5__* @dmar_pgalloc(i32, i32, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32) #1

declare dso_local i32 @sched_pin(...) #1

declare dso_local %struct.sf_buf* @sf_buf_alloc(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @sched_unpin(...) #1

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(i32) #1

declare dso_local i32 @dmar_pgfree(i32, i32, i32) #1

declare dso_local i64 @sf_buf_kva(%struct.sf_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
