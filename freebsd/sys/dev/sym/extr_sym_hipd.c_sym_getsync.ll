; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_getsync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_getsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@FE_C10 = common dso_local global i32 0, align 4
@FE_U3EN = common dso_local global i32 0, align 4
@div_10M = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32, i32*, i32*)* @sym_getsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym_getsync(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %5
  %27 = load i32, i32* %9, align 4
  %28 = icmp sle i32 %27, 9
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 125, i32* %15, align 4
  br label %48

30:                                               ; preds = %26, %5
  %31 = load i32, i32* %9, align 4
  %32 = icmp sle i32 %31, 10
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 250, i32* %15, align 4
  br label %47

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %35, 11
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 303, i32* %15, align 4
  br label %46

38:                                               ; preds = %34
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %39, 12
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 500, i32* %15, align 4
  br label %45

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  %44 = mul nsw i32 40, %43
  store i32 %44, i32* %15, align 4
  br label %45

45:                                               ; preds = %42, %41
  br label %46

46:                                               ; preds = %45, %37
  br label %47

47:                                               ; preds = %46, %33
  br label %48

48:                                               ; preds = %47, %29
  %49 = load i32, i32* %15, align 4
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %12, align 4
  %52 = mul nsw i32 %50, %51
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* %16, align 4
  %57 = shl i32 %56, 1
  store i32 %57, i32* %16, align 4
  br label %58

58:                                               ; preds = %55, %48
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @FE_C10, align 4
  %63 = load i32, i32* @FE_U3EN, align 4
  %64 = or i32 %62, %63
  %65 = and i32 %61, %64
  %66 = load i32, i32* @FE_C10, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %100

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %86, %68
  %70 = load i32, i32* %13, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %69
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %16, align 4
  %76 = load i32*, i32** @div_10M, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %80, 2
  %82 = icmp sgt i32 %75, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %72
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %87

86:                                               ; preds = %72
  br label %69

87:                                               ; preds = %83, %69
  store i32 0, i32* %14, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %88, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  store i32 -1, i32* %17, align 4
  br label %94

94:                                               ; preds = %93, %87
  %95 = load i32, i32* %13, align 4
  %96 = load i32*, i32** %10, align 8
  store i32 %95, i32* %96, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load i32*, i32** %11, align 8
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* %17, align 4
  store i32 %99, i32* %6, align 4
  br label %152

100:                                              ; preds = %58
  br label %101

101:                                              ; preds = %115, %100
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %13, align 4
  %104 = icmp sgt i32 %102, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %101
  %106 = load i32, i32* %16, align 4
  %107 = load i32*, i32** @div_10M, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %111, 2
  %113 = icmp sge i32 %106, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  br label %116

115:                                              ; preds = %105
  br label %101

116:                                              ; preds = %114, %101
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %116
  %120 = load i32, i32* %16, align 4
  %121 = sub nsw i32 %120, 1
  %122 = load i32*, i32** @div_10M, align 8
  %123 = load i32, i32* %13, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = shl i32 %126, 1
  %128 = sdiv i32 %121, %127
  %129 = add nsw i32 %128, 1
  %130 = sub nsw i32 %129, 2
  store i32 %130, i32* %14, align 4
  br label %142

131:                                              ; preds = %116
  %132 = load i32, i32* %16, align 4
  %133 = sub nsw i32 %132, 1
  %134 = load i32*, i32** @div_10M, align 8
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = sdiv i32 %133, %138
  %140 = add nsw i32 %139, 1
  %141 = sub nsw i32 %140, 4
  store i32 %141, i32* %14, align 4
  br label %142

142:                                              ; preds = %131, %119
  %143 = load i32, i32* %14, align 4
  %144 = icmp sgt i32 %143, 2
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  store i32 2, i32* %14, align 4
  store i32 -1, i32* %17, align 4
  br label %146

146:                                              ; preds = %145, %142
  %147 = load i32, i32* %13, align 4
  %148 = load i32*, i32** %10, align 8
  store i32 %147, i32* %148, align 4
  %149 = load i32, i32* %14, align 4
  %150 = load i32*, i32** %11, align 8
  store i32 %149, i32* %150, align 4
  %151 = load i32, i32* %17, align 4
  store i32 %151, i32* %6, align 4
  br label %152

152:                                              ; preds = %146, %94
  %153 = load i32, i32* %6, align 4
  ret i32 %153
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
