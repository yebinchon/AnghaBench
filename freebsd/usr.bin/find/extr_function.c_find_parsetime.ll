; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/find/extr_function.c_find_parsetime.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/find/extr_function.c_find_parsetime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@F_GREATER = common dso_local global i32 0, align 4
@F_LESSTHAN = common dso_local global i32 0, align 4
@F_EQUAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s: %s: illegal time value\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%s: %s: bad unit '%c'\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"%s: %s: missing trailing unit\00", align 1
@F_EXACTTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i8*, i8*)* @find_parsetime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_parsetime(%struct.TYPE_3__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  store i8* %12, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  switch i32 %15, label %32 [
    i32 43, label %16
    i32 45, label %24
  ]

16:                                               ; preds = %3
  %17 = load i8*, i8** %10, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %10, align 8
  %19 = load i32, i32* @F_GREATER, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %38

24:                                               ; preds = %3
  %25 = load i8*, i8** %10, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %10, align 8
  %27 = load i32, i32* @F_LESSTHAN, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %38

32:                                               ; preds = %3
  %33 = load i32, i32* @F_EQUAL, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %32, %24, %16
  %39 = load i8*, i8** %10, align 8
  %40 = call i64 @strtoq(i8* %39, i8** %11, i32 10)
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load i8*, i8** %11, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = icmp eq i8* %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i8*, i8** %6, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 (i32, i8*, i8*, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %48, i8* %49)
  br label %51

51:                                               ; preds = %47, %43, %38
  %52 = load i8*, i8** %11, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i64, i64* %9, align 8
  store i64 %57, i64* %4, align 8
  br label %132

58:                                               ; preds = %51
  store i64 0, i64* %8, align 8
  br label %59

59:                                               ; preds = %124, %58
  %60 = load i8*, i8** %11, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  switch i32 %62, label %87 [
    i32 115, label %63
    i32 109, label %67
    i32 104, label %72
    i32 100, label %77
    i32 119, label %82
  ]

63:                                               ; preds = %59
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %8, align 8
  %66 = add nsw i64 %65, %64
  store i64 %66, i64* %8, align 8
  br label %94

67:                                               ; preds = %59
  %68 = load i64, i64* %9, align 8
  %69 = mul nsw i64 %68, 60
  %70 = load i64, i64* %8, align 8
  %71 = add nsw i64 %70, %69
  store i64 %71, i64* %8, align 8
  br label %94

72:                                               ; preds = %59
  %73 = load i64, i64* %9, align 8
  %74 = mul nsw i64 %73, 3600
  %75 = load i64, i64* %8, align 8
  %76 = add nsw i64 %75, %74
  store i64 %76, i64* %8, align 8
  br label %94

77:                                               ; preds = %59
  %78 = load i64, i64* %9, align 8
  %79 = mul nsw i64 %78, 86400
  %80 = load i64, i64* %8, align 8
  %81 = add nsw i64 %80, %79
  store i64 %81, i64* %8, align 8
  br label %94

82:                                               ; preds = %59
  %83 = load i64, i64* %9, align 8
  %84 = mul nsw i64 %83, 604800
  %85 = load i64, i64* %8, align 8
  %86 = add nsw i64 %85, %84
  store i64 %86, i64* %8, align 8
  br label %94

87:                                               ; preds = %59
  %88 = load i8*, i8** %6, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = call i32 (i32, i8*, i8*, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %88, i8* %89, i32 %92)
  br label %94

94:                                               ; preds = %87, %82, %77, %72, %67, %63
  %95 = load i8*, i8** %11, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  store i8* %96, i8** %10, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  br label %125

102:                                              ; preds = %94
  %103 = load i8*, i8** %10, align 8
  %104 = call i64 @strtoq(i8* %103, i8** %11, i32 10)
  store i64 %104, i64* %9, align 8
  %105 = load i64, i64* %9, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %102
  %108 = load i8*, i8** %11, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = icmp eq i8* %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i8*, i8** %6, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = call i32 (i32, i8*, i8*, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %112, i8* %113)
  br label %115

115:                                              ; preds = %111, %107, %102
  %116 = load i8*, i8** %11, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i8*, i8** %6, align 8
  %122 = load i8*, i8** %7, align 8
  %123 = call i32 (i32, i8*, i8*, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %121, i8* %122)
  br label %124

124:                                              ; preds = %120, %115
  br label %59

125:                                              ; preds = %101
  %126 = load i32, i32* @F_EXACTTIME, align 4
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  %131 = load i64, i64* %8, align 8
  store i64 %131, i64* %4, align 8
  br label %132

132:                                              ; preds = %125, %56
  %133 = load i64, i64* %4, align 8
  ret i64 %133
}

declare dso_local i64 @strtoq(i8*, i8**, i32) #1

declare dso_local i32 @errx(i32, i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
