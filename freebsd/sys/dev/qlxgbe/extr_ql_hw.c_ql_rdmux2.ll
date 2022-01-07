; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlxgbe/extr_ql_hw.c_ql_rdmux2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlxgbe/extr_ql_hw.c_ql_rdmux2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32*)* @ql_rdmux2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_rdmux2(i32* %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32* %2, i32** %7, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %10, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %12, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %13, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %14, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %15, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %16, align 4
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %121, %3
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %124

46:                                               ; preds = %40
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @ql_rdwr_indreg32(i32* %47, i32 %48, i32* %12, i32 0)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %129

53:                                               ; preds = %46
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %15, align 4
  %56 = and i32 %54, %55
  store i32 %56, i32* %18, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @ql_rdwr_indreg32(i32* %57, i32 %58, i32* %18, i32 0)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %129

63:                                               ; preds = %53
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %16, align 4
  %66 = call i32 @ql_rdwr_indreg32(i32* %64, i32 %65, i32* %17, i32 1)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %129

70:                                               ; preds = %63
  %71 = load i32, i32* %18, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %7, align 8
  store i32 %71, i32* %72, align 4
  %74 = load i32, i32* %17, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %7, align 8
  store i32 %74, i32* %75, align 4
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @ql_rdwr_indreg32(i32* %77, i32 %78, i32* %13, i32 0)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %70
  store i32 0, i32* %4, align 4
  br label %129

83:                                               ; preds = %70
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %15, align 4
  %86 = and i32 %84, %85
  store i32 %86, i32* %18, align 4
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @ql_rdwr_indreg32(i32* %87, i32 %88, i32* %18, i32 0)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  store i32 0, i32* %4, align 4
  br label %129

93:                                               ; preds = %83
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* %16, align 4
  %96 = call i32 @ql_rdwr_indreg32(i32* %94, i32 %95, i32* %17, i32 1)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store i32 0, i32* %4, align 4
  br label %129

100:                                              ; preds = %93
  %101 = load i32, i32* %18, align 4
  %102 = load i32*, i32** %7, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %7, align 8
  store i32 %101, i32* %102, align 4
  %104 = load i32, i32* %17, align 4
  %105 = load i32*, i32** %7, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %7, align 8
  store i32 %104, i32* %105, align 4
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 7
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %111, %109
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %12, align 4
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 7
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %116
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %13, align 4
  br label %121

121:                                              ; preds = %100
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %9, align 4
  br label %40

124:                                              ; preds = %40
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = mul i64 %126, 16
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %124, %99, %92, %82, %69, %62, %52
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @ql_rdwr_indreg32(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
