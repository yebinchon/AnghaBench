; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_pred1.c_Pred1Compress.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_pred1.c_Pred1Compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i64*, i32)* @Pred1Compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Pred1Compress(i32 %0, i64* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.TYPE_3__* @NG_NODE_PRIVATE(i32 %14)
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %9, align 8
  %16 = load i64*, i64** %7, align 8
  store i64* %16, i64** %13, align 8
  br label %17

17:                                               ; preds = %74, %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %77

20:                                               ; preds = %17
  %21 = load i64*, i64** %7, align 8
  %22 = getelementptr inbounds i64, i64* %21, i32 1
  store i64* %22, i64** %7, align 8
  store i64* %21, i64** %12, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %71, %20
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 8
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i1 [ false, %23 ], [ %28, %26 ]
  br i1 %30, label %31, label %74

31:                                               ; preds = %29
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i64, i64* %34, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** %6, align 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %39, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %31
  %44 = load i32, i32* %10, align 4
  %45 = shl i32 1, %44
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %11, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %11, align 8
  br label %63

49:                                               ; preds = %31
  %50 = load i64*, i64** %6, align 8
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i64, i64* %54, i64 %57
  store i64 %51, i64* %58, align 8
  %59 = load i64*, i64** %6, align 8
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %7, align 8
  %62 = getelementptr inbounds i64, i64* %61, i32 1
  store i64* %62, i64** %7, align 8
  store i64 %60, i64* %61, align 8
  br label %63

63:                                               ; preds = %49, %43
  %64 = load i64*, i64** %6, align 8
  %65 = getelementptr inbounds i64, i64* %64, i32 1
  store i64* %65, i64** %6, align 8
  %66 = load i64, i64* %64, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 @HASH(i32 %67)
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %63
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %23

74:                                               ; preds = %29
  %75 = load i64, i64* %11, align 8
  %76 = load i64*, i64** %12, align 8
  store i64 %75, i64* %76, align 8
  br label %17

77:                                               ; preds = %17
  %78 = load i64*, i64** %7, align 8
  %79 = load i64*, i64** %13, align 8
  %80 = ptrtoint i64* %78 to i64
  %81 = ptrtoint i64* %79 to i64
  %82 = sub i64 %80, %81
  %83 = sdiv exact i64 %82, 8
  %84 = trunc i64 %83 to i32
  ret i32 %84
}

declare dso_local %struct.TYPE_3__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @HASH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
