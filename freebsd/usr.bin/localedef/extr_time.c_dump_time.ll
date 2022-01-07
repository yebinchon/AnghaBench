; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_time.c_dump_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_time.c_dump_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64*, i64*, i64*, i64* }

@tm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EOF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_time() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = call i32* (...) @open_category()
  store i32* %3, i32** %1, align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %135

6:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %22, %6
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 12
  br i1 %9, label %10, label %25

10:                                               ; preds = %7
  %11 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tm, i32 0, i32 10), align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = load i32*, i32** %1, align 8
  %17 = call i64 @putl_category(i64 %15, i32* %16)
  %18 = load i64, i64* @EOF, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  br label %135

21:                                               ; preds = %10
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %2, align 4
  br label %7

25:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %41, %25
  %27 = load i32, i32* %2, align 4
  %28 = icmp slt i32 %27, 12
  br i1 %28, label %29, label %44

29:                                               ; preds = %26
  %30 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tm, i32 0, i32 9), align 8
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i32*, i32** %1, align 8
  %36 = call i64 @putl_category(i64 %34, i32* %35)
  %37 = load i64, i64* @EOF, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %135

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %2, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %2, align 4
  br label %26

44:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %60, %44
  %46 = load i32, i32* %2, align 4
  %47 = icmp slt i32 %46, 7
  br i1 %47, label %48, label %63

48:                                               ; preds = %45
  %49 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tm, i32 0, i32 8), align 8
  %50 = load i32, i32* %2, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i32*, i32** %1, align 8
  %55 = call i64 @putl_category(i64 %53, i32* %54)
  %56 = load i64, i64* @EOF, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %135

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %2, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %2, align 4
  br label %45

63:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %79, %63
  %65 = load i32, i32* %2, align 4
  %66 = icmp slt i32 %65, 7
  br i1 %66, label %67, label %82

67:                                               ; preds = %64
  %68 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tm, i32 0, i32 7), align 8
  %69 = load i32, i32* %2, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load i32*, i32** %1, align 8
  %74 = call i64 @putl_category(i64 %72, i32* %73)
  %75 = load i64, i64* @EOF, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %135

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %2, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %2, align 4
  br label %64

82:                                               ; preds = %64
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tm, i32 0, i32 6), align 8
  %84 = load i32*, i32** %1, align 8
  %85 = call i64 @putl_category(i64 %83, i32* %84)
  %86 = load i64, i64* @EOF, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %131, label %88

88:                                               ; preds = %82
  %89 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tm, i32 0, i32 5), align 8
  %90 = load i32*, i32** %1, align 8
  %91 = call i64 @putl_category(i64 %89, i32* %90)
  %92 = load i64, i64* @EOF, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %131, label %94

94:                                               ; preds = %88
  %95 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tm, i32 0, i32 1), align 8
  %96 = load i32*, i32** %1, align 8
  %97 = call i64 @putl_category(i64 %95, i32* %96)
  %98 = load i64, i64* @EOF, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %131, label %100

100:                                              ; preds = %94
  %101 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tm, i32 0, i32 4), align 8
  %102 = load i32*, i32** %1, align 8
  %103 = call i64 @putl_category(i64 %101, i32* %102)
  %104 = load i64, i64* @EOF, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %131, label %106

106:                                              ; preds = %100
  %107 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tm, i32 0, i32 3), align 8
  %108 = load i32*, i32** %1, align 8
  %109 = call i64 @putl_category(i64 %107, i32* %108)
  %110 = load i64, i64* @EOF, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %131, label %112

112:                                              ; preds = %106
  %113 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tm, i32 0, i32 2), align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tm, i32 0, i32 2), align 8
  br label %119

117:                                              ; preds = %112
  %118 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tm, i32 0, i32 1), align 8
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i64 [ %116, %115 ], [ %118, %117 ]
  %121 = load i32*, i32** %1, align 8
  %122 = call i64 @putl_category(i64 %120, i32* %121)
  %123 = load i64, i64* @EOF, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %131, label %125

125:                                              ; preds = %119
  %126 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tm, i32 0, i32 0), align 8
  %127 = load i32*, i32** %1, align 8
  %128 = call i64 @putl_category(i64 %126, i32* %127)
  %129 = load i64, i64* @EOF, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %125, %119, %106, %100, %94, %88, %82
  br label %135

132:                                              ; preds = %125
  %133 = load i32*, i32** %1, align 8
  %134 = call i32 @close_category(i32* %133)
  br label %135

135:                                              ; preds = %132, %131, %77, %58, %39, %20, %5
  ret void
}

declare dso_local i32* @open_category(...) #1

declare dso_local i64 @putl_category(i64, i32*) #1

declare dso_local i32 @close_category(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
