; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_printgprof.c_totalcmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_printgprof.c_totalcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double, double, i8*, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @totalcmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__**, align 8
  %7 = alloca %struct.TYPE_2__**, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca double, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_2__**
  store %struct.TYPE_2__** %12, %struct.TYPE_2__*** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_2__**
  store %struct.TYPE_2__** %14, %struct.TYPE_2__*** %7, align 8
  %15 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %6, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %8, align 8
  %17 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %7, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  store %struct.TYPE_2__* %18, %struct.TYPE_2__** %9, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load double, double* %20, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load double, double* %23, align 8
  %25 = fadd double %21, %24
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load double, double* %27, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load double, double* %30, align 8
  %32 = fadd double %28, %31
  %33 = fsub double %25, %32
  store double %33, double* %10, align 8
  %34 = load double, double* %10, align 8
  %35 = fcmp olt double %34, 0.000000e+00
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %131

37:                                               ; preds = %2
  %38 = load double, double* %10, align 8
  %39 = fcmp ogt double %38, 0.000000e+00
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 -1, i32* %3, align 4
  br label %131

41:                                               ; preds = %37
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 -1, i32* %3, align 4
  br label %131

52:                                               ; preds = %46, %41
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 1, i32* %3, align 4
  br label %131

63:                                               ; preds = %57, %52
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32 -1, i32* %3, align 4
  br label %131

69:                                               ; preds = %63
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 1, i32* %3, align 4
  br label %131

75:                                               ; preds = %69
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 95
  br i1 %81, label %82, label %90

82:                                               ; preds = %75
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 95
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  store i32 -1, i32* %3, align 4
  br label %131

90:                                               ; preds = %82, %75
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 95
  br i1 %96, label %97, label %105

97:                                               ; preds = %90
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 95
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  store i32 1, i32* %3, align 4
  br label %131

105:                                              ; preds = %97, %90
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = icmp sgt i64 %108, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  store i32 -1, i32* %3, align 4
  br label %131

114:                                              ; preds = %105
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = icmp slt i64 %117, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  store i32 1, i32* %3, align 4
  br label %131

123:                                              ; preds = %114
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 2
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @strcmp(i8* %126, i8* %129)
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %123, %122, %113, %104, %89, %74, %68, %62, %51, %40, %36
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
