; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/portsnap/make_index/extr_make_index.c_heapifyports.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/portsnap/make_index/extr_make_index.c_heapifyports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__**, i64, i64)* @heapifyports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @heapifyports(%struct.TYPE_3__** %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  store i64 %9, i64* %7, align 8
  br label %10

10:                                               ; preds = %68, %3
  %11 = load i64, i64* %6, align 8
  %12 = mul i64 2, %11
  %13 = add i64 %12, 1
  %14 = load i64, i64* %5, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %10
  %17 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %17, i64 %18
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %24 = load i64, i64* %6, align 8
  %25 = mul i64 2, %24
  %26 = add i64 %25, 1
  %27 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %23, i64 %26
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @portcompare(i32 %22, i32 %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %16
  %34 = load i64, i64* %6, align 8
  %35 = mul i64 2, %34
  %36 = add i64 %35, 1
  store i64 %36, i64* %7, align 8
  br label %37

37:                                               ; preds = %33, %16, %10
  %38 = load i64, i64* %6, align 8
  %39 = mul i64 2, %38
  %40 = add i64 %39, 2
  %41 = load i64, i64* %5, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %37
  %44 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %44, i64 %45
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %51 = load i64, i64* %6, align 8
  %52 = mul i64 2, %51
  %53 = add i64 %52, 2
  %54 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %50, i64 %53
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @portcompare(i32 %49, i32 %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %43
  %61 = load i64, i64* %6, align 8
  %62 = mul i64 2, %61
  %63 = add i64 %62, 2
  store i64 %63, i64* %7, align 8
  br label %64

64:                                               ; preds = %60, %43, %37
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* %6, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %64
  %69 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %69, i64 %70
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  store %struct.TYPE_3__* %72, %struct.TYPE_3__** %8, align 8
  %73 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %74 = load i64, i64* %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %73, i64 %74
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %78 = load i64, i64* %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %77, i64 %78
  store %struct.TYPE_3__* %76, %struct.TYPE_3__** %79, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %81 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %82 = load i64, i64* %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %81, i64 %82
  store %struct.TYPE_3__* %80, %struct.TYPE_3__** %83, align 8
  %84 = load i64, i64* %7, align 8
  store i64 %84, i64* %6, align 8
  br label %10

85:                                               ; preds = %64
  ret void
}

declare dso_local i64 @portcompare(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
