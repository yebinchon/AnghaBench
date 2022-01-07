; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/diff3/extr_diff3.c_readin.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/diff3/extr_diff3.c_readin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"fdopen\00", align 1
@szchanges = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.diff**)* @readin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readin(i32 %0, %struct.diff** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.diff**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.diff** %1, %struct.diff*** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32* @fdopen(i32 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %12, align 8
  %15 = load i32*, i32** %12, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 @err(i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %2
  store i64 0, i64* %9, align 8
  br label %20

20:                                               ; preds = %102, %19
  %21 = load i32*, i32** %12, align 8
  %22 = call i8* @getchange(i32* %21)
  store i8* %22, i8** %11, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %105

24:                                               ; preds = %20
  %25 = load i64, i64* %9, align 8
  %26 = load i32, i32* @szchanges, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = icmp uge i64 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32 (...) @increase()
  br label %32

32:                                               ; preds = %30, %24
  %33 = call i32 @number(i8** %11)
  store i32 %33, i32* %6, align 4
  store i32 %33, i32* %5, align 4
  %34 = load i8*, i8** %11, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 44
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i8*, i8** %11, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %11, align 8
  %41 = call i32 @number(i8** %11)
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %38, %32
  %43 = load i8*, i8** %11, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %11, align 8
  %45 = load i8, i8* %43, align 1
  store i8 %45, i8* %10, align 1
  %46 = call i32 @number(i8** %11)
  store i32 %46, i32* %8, align 4
  store i32 %46, i32* %7, align 4
  %47 = load i8*, i8** %11, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 44
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load i8*, i8** %11, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %11, align 8
  %54 = call i32 @number(i8** %11)
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %51, %42
  %56 = load i8, i8* %10, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 97
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %59, %55
  %63 = load i8, i8* %10, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 100
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %66, %62
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.diff**, %struct.diff*** %4, align 8
  %76 = load %struct.diff*, %struct.diff** %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = getelementptr inbounds %struct.diff, %struct.diff* %76, i64 %77
  %79 = getelementptr inbounds %struct.diff, %struct.diff* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i32 %74, i32* %80, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.diff**, %struct.diff*** %4, align 8
  %83 = load %struct.diff*, %struct.diff** %82, align 8
  %84 = load i64, i64* %9, align 8
  %85 = getelementptr inbounds %struct.diff, %struct.diff* %83, i64 %84
  %86 = getelementptr inbounds %struct.diff, %struct.diff* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  store i32 %81, i32* %87, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.diff**, %struct.diff*** %4, align 8
  %90 = load %struct.diff*, %struct.diff** %89, align 8
  %91 = load i64, i64* %9, align 8
  %92 = getelementptr inbounds %struct.diff, %struct.diff* %90, i64 %91
  %93 = getelementptr inbounds %struct.diff, %struct.diff* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store i32 %88, i32* %94, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.diff**, %struct.diff*** %4, align 8
  %97 = load %struct.diff*, %struct.diff** %96, align 8
  %98 = load i64, i64* %9, align 8
  %99 = getelementptr inbounds %struct.diff, %struct.diff* %97, i64 %98
  %100 = getelementptr inbounds %struct.diff, %struct.diff* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  store i32 %95, i32* %101, align 4
  br label %102

102:                                              ; preds = %69
  %103 = load i64, i64* %9, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %9, align 8
  br label %20

105:                                              ; preds = %20
  %106 = load i64, i64* %9, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %137

108:                                              ; preds = %105
  %109 = load %struct.diff**, %struct.diff*** %4, align 8
  %110 = load %struct.diff*, %struct.diff** %109, align 8
  %111 = load i64, i64* %9, align 8
  %112 = sub i64 %111, 1
  %113 = getelementptr inbounds %struct.diff, %struct.diff* %110, i64 %112
  %114 = getelementptr inbounds %struct.diff, %struct.diff* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.diff**, %struct.diff*** %4, align 8
  %118 = load %struct.diff*, %struct.diff** %117, align 8
  %119 = load i64, i64* %9, align 8
  %120 = getelementptr inbounds %struct.diff, %struct.diff* %118, i64 %119
  %121 = getelementptr inbounds %struct.diff, %struct.diff* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  store i32 %116, i32* %122, align 4
  %123 = load %struct.diff**, %struct.diff*** %4, align 8
  %124 = load %struct.diff*, %struct.diff** %123, align 8
  %125 = load i64, i64* %9, align 8
  %126 = sub i64 %125, 1
  %127 = getelementptr inbounds %struct.diff, %struct.diff* %124, i64 %126
  %128 = getelementptr inbounds %struct.diff, %struct.diff* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.diff**, %struct.diff*** %4, align 8
  %132 = load %struct.diff*, %struct.diff** %131, align 8
  %133 = load i64, i64* %9, align 8
  %134 = getelementptr inbounds %struct.diff, %struct.diff* %132, i64 %133
  %135 = getelementptr inbounds %struct.diff, %struct.diff* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  store i32 %130, i32* %136, align 4
  br label %137

137:                                              ; preds = %108, %105
  %138 = load i32*, i32** %12, align 8
  %139 = call i32 @fclose(i32* %138)
  %140 = load i64, i64* %9, align 8
  %141 = trunc i64 %140 to i32
  ret i32 %141
}

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i8* @getchange(i32*) #1

declare dso_local i32 @increase(...) #1

declare dso_local i32 @number(i8**) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
