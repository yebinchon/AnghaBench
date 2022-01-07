; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_diffreg.c_stone.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_diffreg.c_stone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@D_MINIMAL = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@clist = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*, i32)* @stone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stone(i32* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @D_MINIMAL, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i64, i64* @UINT_MAX, align 8
  store i64 %27, i64* %21, align 8
  br label %33

28:                                               ; preds = %5
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @isqrt(i32 %29)
  store i32 %30, i32* %19, align 4
  %31 = load i32, i32* %19, align 4
  %32 = call i64 @MAX(i32 256, i32 %31)
  store i64 %32, i64* %21, align 8
  br label %33

33:                                               ; preds = %28, %26
  store i32 0, i32* %12, align 4
  %34 = call i32 @newcand(i32 0, i32 0, i32 0)
  %35 = load i32*, i32** %9, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 %34, i32* %36, align 4
  store i32 1, i32* %11, align 4
  br label %37

37:                                               ; preds = %149, %33
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %152

41:                                               ; preds = %37
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %149

50:                                               ; preds = %41
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %13, align 4
  store i32 0, i32* %18, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %16, align 4
  store i64 0, i64* %20, align 8
  br label %60

60:                                               ; preds = %146, %50
  %61 = load i32, i32* %13, align 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clist, align 8
  %63 = load i32, i32* %16, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp sle i32 %61, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %134

70:                                               ; preds = %60
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @search(i32* %71, i32 %72, i32 %73)
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %18, align 4
  %77 = add nsw i32 %76, 1
  %78 = icmp ne i32 %75, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %70
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* %15, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %16, align 4
  br label %86

86:                                               ; preds = %79, %70
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp sle i32 %87, %88
  br i1 %89, label %90, label %122

90:                                               ; preds = %86
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clist, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = load i32, i32* %15, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %13, align 4
  %102 = icmp sle i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %90
  br label %134

104:                                              ; preds = %90
  %105 = load i32*, i32** %9, align 8
  %106 = load i32, i32* %15, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %17, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %16, align 4
  %113 = call i32 @newcand(i32 %110, i32 %111, i32 %112)
  %114 = load i32*, i32** %9, align 8
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %113, i32* %117, align 4
  %118 = load i32, i32* %17, align 4
  store i32 %118, i32* %16, align 4
  %119 = load i32, i32* %15, align 4
  store i32 %119, i32* %18, align 4
  %120 = load i64, i64* %20, align 8
  %121 = add nsw i64 %120, 1
  store i64 %121, i64* %20, align 8
  br label %133

122:                                              ; preds = %86
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %16, align 4
  %126 = call i32 @newcand(i32 %123, i32 %124, i32 %125)
  %127 = load i32*, i32** %9, align 8
  %128 = load i32, i32* %15, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 %126, i32* %130, align 4
  %131 = load i32, i32* %12, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %12, align 4
  br label %148

133:                                              ; preds = %104
  br label %134

134:                                              ; preds = %133, %103, %69
  %135 = load i32*, i32** %8, align 8
  %136 = load i32, i32* %14, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %13, align 4
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %134
  %143 = load i64, i64* %20, align 8
  %144 = load i64, i64* %21, align 8
  %145 = icmp slt i64 %143, %144
  br label %146

146:                                              ; preds = %142, %134
  %147 = phi i1 [ false, %134 ], [ %145, %142 ]
  br i1 %147, label %60, label %148

148:                                              ; preds = %146, %122
  br label %149

149:                                              ; preds = %148, %49
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %11, align 4
  br label %37

152:                                              ; preds = %37
  %153 = load i32, i32* %12, align 4
  ret i32 %153
}

declare dso_local i32 @isqrt(i32) #1

declare dso_local i64 @MAX(i32, i32) #1

declare dso_local i32 @newcand(i32, i32, i32) #1

declare dso_local i32 @search(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
