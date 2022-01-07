; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_pinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_pinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32, %struct.tte*, i32*, i32 }
%struct.tte = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }

@TSB_PAGES = common dso_local global i32 0, align 4
@TSB_BSIZE = common dso_local global i32 0, align 4
@OBJT_PHYS = common dso_local global i32 0, align 4
@MAXCPU = common dso_local global i32 0, align 4
@VM_ALLOC_NORMAL = common dso_local global i32 0, align 4
@VM_ALLOC_NOBUSY = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@VM_ALLOC_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_pinit(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %8 = load i32, i32* @TSB_PAGES, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca %struct.TYPE_8__*, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %14 = load %struct.tte*, %struct.tte** %13, align 8
  %15 = icmp eq %struct.tte* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load i32, i32* @TSB_BSIZE, align 4
  %18 = call i64 @kva_alloc(i32 %17)
  %19 = inttoptr i64 %18 to %struct.tte*
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  store %struct.tte* %19, %struct.tte** %21, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = load %struct.tte*, %struct.tte** %23, align 8
  %25 = icmp eq %struct.tte* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %103

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32, i32* @OBJT_PHYS, align 4
  %35 = load i32, i32* @TSB_PAGES, align 4
  %36 = call i32* @vm_object_allocate(i32 %34, i32 %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 3
  store i32* %36, i32** %38, align 8
  br label %39

39:                                               ; preds = %33, %28
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %51, %39
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @MAXCPU, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 -1, i32* %50, align 4
  br label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %40

54:                                               ; preds = %40
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 4
  %57 = call i32 @CPU_ZERO(i32* %56)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @VM_OBJECT_WLOCK(i32* %60)
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* @VM_ALLOC_NORMAL, align 4
  %66 = load i32, i32* @VM_ALLOC_NOBUSY, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @VM_ALLOC_ZERO, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @TSB_PAGES, align 4
  %73 = call i32 @vm_page_grab_pages(i32* %64, i32 0, i32 %71, %struct.TYPE_8__** %11, i32 %72)
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @VM_OBJECT_WUNLOCK(i32* %76)
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %90, %54
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @TSB_PAGES, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %78
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %11, i64 %85
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  store %struct.TYPE_9__* %83, %struct.TYPE_9__** %89, align 8
  br label %90

90:                                               ; preds = %82
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %78

93:                                               ; preds = %78
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 2
  %96 = load %struct.tte*, %struct.tte** %95, align 8
  %97 = ptrtoint %struct.tte* %96 to i32
  %98 = load i32, i32* @TSB_PAGES, align 4
  %99 = call i32 @pmap_qenter(i32 %97, %struct.TYPE_8__** %11, i32 %98)
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = call i32 @bzero(i32* %101, i32 4)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %103

103:                                              ; preds = %93, %26
  %104 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @kva_alloc(i32) #2

declare dso_local i32* @vm_object_allocate(i32, i32) #2

declare dso_local i32 @CPU_ZERO(i32*) #2

declare dso_local i32 @VM_OBJECT_WLOCK(i32*) #2

declare dso_local i32 @vm_page_grab_pages(i32*, i32, i32, %struct.TYPE_8__**, i32) #2

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32*) #2

declare dso_local i32 @pmap_qenter(i32, %struct.TYPE_8__**, i32) #2

declare dso_local i32 @bzero(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
