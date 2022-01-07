; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_heap.c_heap_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_heap.c_heap_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_heap = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@HEAP_SCAN_DEL = common dso_local global i32 0, align 4
@HEAP_SCAN_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @heap_scan(%struct.dn_heap* %0, i32 (i8*, i64)* %1, i64 %2) #0 {
  %4 = alloca %struct.dn_heap*, align 8
  %5 = alloca i32 (i8*, i64)*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dn_heap* %0, %struct.dn_heap** %4, align 8
  store i32 (i8*, i64)* %1, i32 (i8*, i64)** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %64, %3
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.dn_heap*, %struct.dn_heap** %4, align 8
  %13 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %65

16:                                               ; preds = %10
  %17 = load i32 (i8*, i64)*, i32 (i8*, i64)** %5, align 8
  %18 = load %struct.dn_heap*, %struct.dn_heap** %4, align 8
  %19 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 %17(i8* %25, i64 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @HEAP_SCAN_DEL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %16
  %33 = load %struct.dn_heap*, %struct.dn_heap** %4, align 8
  %34 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 8
  %37 = load %struct.dn_heap*, %struct.dn_heap** %4, align 8
  %38 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = load %struct.dn_heap*, %struct.dn_heap** %4, align 8
  %44 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load %struct.dn_heap*, %struct.dn_heap** %4, align 8
  %47 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %49
  %51 = bitcast %struct.TYPE_2__* %42 to i8*
  %52 = bitcast %struct.TYPE_2__* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 8, i1 false)
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %58

55:                                               ; preds = %16
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %55, %32
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @HEAP_SCAN_END, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %65

64:                                               ; preds = %58
  br label %10

65:                                               ; preds = %63, %10
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct.dn_heap*, %struct.dn_heap** %4, align 8
  %70 = call i32 @heapify(%struct.dn_heap* %69)
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32, i32* %9, align 4
  ret i32 %72
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @heapify(%struct.dn_heap*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
