; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_heap.c_heap_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_heap.c_heap_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_heap = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.dn_heap_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @heap_insert(%struct.dn_heap* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dn_heap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dn_heap_entry, align 4
  store %struct.dn_heap* %0, %struct.dn_heap** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.dn_heap*, %struct.dn_heap** %5, align 8
  %12 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = ptrtoint i8* %17 to i32
  store i32 %18, i32* %8, align 4
  br label %59

19:                                               ; preds = %3
  %20 = load %struct.dn_heap*, %struct.dn_heap** %5, align 8
  %21 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.dn_heap*, %struct.dn_heap** %5, align 8
  %25 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %19
  %29 = load %struct.dn_heap*, %struct.dn_heap** %5, align 8
  %30 = load %struct.dn_heap*, %struct.dn_heap** %5, align 8
  %31 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 16
  %34 = call i64 @heap_resize(%struct.dn_heap* %29, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 1, i32* %4, align 4
  br label %119

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %19
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.dn_heap*, %struct.dn_heap** %5, align 8
  %41 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %40, i32 0, i32 2
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i8* %39, i8** %46, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load %struct.dn_heap*, %struct.dn_heap** %5, align 8
  %49 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %48, i32 0, i32 2
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i8* %47, i8** %54, align 8
  %55 = load %struct.dn_heap*, %struct.dn_heap** %5, align 8
  %56 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %38, %16
  br label %60

60:                                               ; preds = %85, %59
  %61 = load i32, i32* %8, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %115

63:                                               ; preds = %60
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @HEAP_FATHER(i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load %struct.dn_heap*, %struct.dn_heap** %5, align 8
  %67 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %66, i32 0, i32 2
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.dn_heap*, %struct.dn_heap** %5, align 8
  %75 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %74, i32 0, i32 2
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i64 @DN_KEY_LT(i8* %73, i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %63
  br label %115

85:                                               ; preds = %63
  %86 = load %struct.dn_heap*, %struct.dn_heap** %5, align 8
  %87 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %86, i32 0, i32 2
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %90
  %92 = load %struct.dn_heap*, %struct.dn_heap** %5, align 8
  %93 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %92, i32 0, i32 2
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %96
  %98 = bitcast %struct.TYPE_3__* %91 to { i8*, i8* }*
  %99 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %98, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = bitcast %struct.TYPE_3__* %97 to { i8*, i8* }*
  %104 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %103, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds %struct.dn_heap_entry, %struct.dn_heap_entry* %10, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @HEAP_SWAP(i8* %100, i8* %102, i8* %105, i8* %107, i32 %109)
  %111 = load %struct.dn_heap*, %struct.dn_heap** %5, align 8
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @SET_OFFSET(%struct.dn_heap* %111, i32 %112)
  %114 = load i32, i32* %9, align 4
  store i32 %114, i32* %8, align 4
  br label %60

115:                                              ; preds = %84, %60
  %116 = load %struct.dn_heap*, %struct.dn_heap** %5, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @SET_OFFSET(%struct.dn_heap* %116, i32 %117)
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %115, %36
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i64 @heap_resize(%struct.dn_heap*, i32) #1

declare dso_local i32 @HEAP_FATHER(i32) #1

declare dso_local i64 @DN_KEY_LT(i8*, i8*) #1

declare dso_local i32 @HEAP_SWAP(i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @SET_OFFSET(%struct.dn_heap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
