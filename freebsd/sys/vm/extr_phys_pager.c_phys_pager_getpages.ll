; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_phys_pager.c_phys_pager_getpages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_phys_pager.c_phys_pager_getpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }

@PG_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"phys_pager_getpages: partially valid page %p\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"phys_pager_getpages: dirty page %p\00", align 1
@VM_PAGER_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_7__**, i32, i32*, i32*)* @phys_pager_getpages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phys_pager_getpages(i32 %0, %struct.TYPE_7__** %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_7__** %1, %struct.TYPE_7__*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @VM_OBJECT_ASSERT_WLOCKED(i32 %12)
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %81, %5
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %84

18:                                               ; preds = %14
  %19 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %19, i64 %21
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = call i64 @vm_page_none_valid(%struct.TYPE_7__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %18
  %27 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %27, i64 %29
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @PG_ZERO, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %26
  %38 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %38, i64 %40
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = call i32 @pmap_zero_page(%struct.TYPE_7__* %42)
  br label %44

44:                                               ; preds = %37, %26
  %45 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %45, i64 %47
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = call i32 @vm_page_valid(%struct.TYPE_7__* %49)
  br label %51

51:                                               ; preds = %44, %18
  %52 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %52, i64 %54
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = call i32 @vm_page_all_valid(%struct.TYPE_7__* %56)
  %58 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %58, i64 %60
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = bitcast %struct.TYPE_7__* %62 to i8*
  %64 = call i32 @KASSERT(i32 %57, i8* %63)
  %65 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %65, i64 %67
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %74, i64 %76
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = bitcast %struct.TYPE_7__* %78 to i8*
  %80 = call i32 @KASSERT(i32 %73, i8* %79)
  br label %81

81:                                               ; preds = %51
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %14

84:                                               ; preds = %14
  %85 = load i32*, i32** %9, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32*, i32** %9, align 8
  store i32 0, i32* %88, align 4
  br label %89

89:                                               ; preds = %87, %84
  %90 = load i32*, i32** %10, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32*, i32** %10, align 8
  store i32 0, i32* %93, align 4
  br label %94

94:                                               ; preds = %92, %89
  %95 = load i32, i32* @VM_PAGER_OK, align 4
  ret i32 %95
}

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(i32) #1

declare dso_local i64 @vm_page_none_valid(%struct.TYPE_7__*) #1

declare dso_local i32 @pmap_zero_page(%struct.TYPE_7__*) #1

declare dso_local i32 @vm_page_valid(%struct.TYPE_7__*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_page_all_valid(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
