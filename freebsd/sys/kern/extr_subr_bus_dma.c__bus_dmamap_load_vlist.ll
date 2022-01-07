; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus_dma.c__bus_dmamap_load_vlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus_dma.c__bus_dmamap_load_vlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.pmap = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Invalid mid-segment offset\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Segment length is zero\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_3__*, i32, %struct.pmap*, i32*, i32, i64, i64)* @_bus_dmamap_load_vlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bus_dmamap_load_vlist(i32 %0, i32 %1, %struct.TYPE_3__* %2, i32 %3, %struct.pmap* %4, i32* %5, i32 %6, i64 %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.pmap*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %12, align 8
  store i32 %3, i32* %13, align 4
  store %struct.pmap* %4, %struct.pmap** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i64 %7, i64* %17, align 8
  store i64 %8, i64* %18, align 8
  store i32 0, i32* %19, align 4
  br label %22

22:                                               ; preds = %74, %9
  %23 = load i32, i32* %13, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i64, i64* %18, align 8
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i1 [ false, %22 ], [ %27, %25 ]
  br i1 %29, label %30, label %79

30:                                               ; preds = %28
  %31 = load i64, i64* %17, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %31, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @KASSERT(i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = load i64, i64* %17, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %20, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %17, align 8
  %48 = sub i64 %46, %47
  store i64 %48, i64* %21, align 8
  store i64 0, i64* %17, align 8
  %49 = load i64, i64* %21, align 8
  %50 = load i64, i64* %18, align 8
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %30
  %53 = load i64, i64* %18, align 8
  store i64 %53, i64* %21, align 8
  br label %54

54:                                               ; preds = %52, %30
  %55 = load i64, i64* %21, align 8
  %56 = load i64, i64* %18, align 8
  %57 = sub i64 %56, %55
  store i64 %57, i64* %18, align 8
  %58 = load i64, i64* %21, align 8
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @KASSERT(i32 %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i8*, i8** %20, align 8
  %65 = load i64, i64* %21, align 8
  %66 = load %struct.pmap*, %struct.pmap** %14, align 8
  %67 = load i32, i32* %16, align 4
  %68 = load i32*, i32** %15, align 8
  %69 = call i32 @_bus_dmamap_load_buffer(i32 %62, i32 %63, i8* %64, i64 %65, %struct.pmap* %66, i32 %67, i32* null, i32* %68)
  store i32 %69, i32* %19, align 4
  %70 = load i32, i32* %19, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %54
  br label %79

73:                                               ; preds = %54
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %13, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 1
  store %struct.TYPE_3__* %78, %struct.TYPE_3__** %12, align 8
  br label %22

79:                                               ; preds = %72, %28
  %80 = load i32, i32* %19, align 4
  ret i32 %80
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @_bus_dmamap_load_buffer(i32, i32, i8*, i64, %struct.pmap*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
