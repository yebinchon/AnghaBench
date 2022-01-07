; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_monetary.c_dump_monetary.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_monetary.c_dump_monetary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@mon = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@EOF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_monetary() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32* (...) @open_category()
  store i32* %2, i32** %1, align 8
  %3 = icmp eq i32* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %135

5:                                                ; preds = %0
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mon, i32 0, i32 20), align 4
  %7 = load i32*, i32** %1, align 8
  %8 = call i64 @putl_category(i32 %6, i32* %7)
  %9 = load i64, i64* @EOF, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %131, label %11

11:                                               ; preds = %5
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mon, i32 0, i32 19), align 4
  %13 = load i32*, i32** %1, align 8
  %14 = call i64 @putl_category(i32 %12, i32* %13)
  %15 = load i64, i64* @EOF, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %131, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mon, i32 0, i32 18), align 4
  %19 = load i32*, i32** %1, align 8
  %20 = call i64 @putl_category(i32 %18, i32* %19)
  %21 = load i64, i64* @EOF, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %131, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mon, i32 0, i32 17), align 4
  %25 = load i32*, i32** %1, align 8
  %26 = call i64 @putl_category(i32 %24, i32* %25)
  %27 = load i64, i64* @EOF, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %131, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mon, i32 0, i32 16), align 4
  %31 = load i32*, i32** %1, align 8
  %32 = call i64 @putl_category(i32 %30, i32* %31)
  %33 = load i64, i64* @EOF, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %131, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mon, i32 0, i32 15), align 4
  %37 = load i32*, i32** %1, align 8
  %38 = call i64 @putl_category(i32 %36, i32* %37)
  %39 = load i64, i64* @EOF, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %131, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mon, i32 0, i32 14), align 4
  %43 = load i32*, i32** %1, align 8
  %44 = call i64 @putl_category(i32 %42, i32* %43)
  %45 = load i64, i64* @EOF, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %131, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mon, i32 0, i32 13), align 4
  %49 = load i32*, i32** %1, align 8
  %50 = call i64 @putl_category(i32 %48, i32* %49)
  %51 = load i64, i64* @EOF, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %131, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mon, i32 0, i32 12), align 4
  %55 = load i32*, i32** %1, align 8
  %56 = call i64 @putl_category(i32 %54, i32* %55)
  %57 = load i64, i64* @EOF, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %131, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mon, i32 0, i32 11), align 4
  %61 = load i32*, i32** %1, align 8
  %62 = call i64 @putl_category(i32 %60, i32* %61)
  %63 = load i64, i64* @EOF, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %131, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mon, i32 0, i32 10), align 4
  %67 = load i32*, i32** %1, align 8
  %68 = call i64 @putl_category(i32 %66, i32* %67)
  %69 = load i64, i64* @EOF, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %131, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mon, i32 0, i32 9), align 4
  %73 = load i32*, i32** %1, align 8
  %74 = call i64 @putl_category(i32 %72, i32* %73)
  %75 = load i64, i64* @EOF, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %131, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mon, i32 0, i32 8), align 4
  %79 = load i32*, i32** %1, align 8
  %80 = call i64 @putl_category(i32 %78, i32* %79)
  %81 = load i64, i64* @EOF, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %131, label %83

83:                                               ; preds = %77
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mon, i32 0, i32 7), align 4
  %85 = load i32*, i32** %1, align 8
  %86 = call i64 @putl_category(i32 %84, i32* %85)
  %87 = load i64, i64* @EOF, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %131, label %89

89:                                               ; preds = %83
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mon, i32 0, i32 6), align 4
  %91 = load i32*, i32** %1, align 8
  %92 = call i64 @putl_category(i32 %90, i32* %91)
  %93 = load i64, i64* @EOF, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %131, label %95

95:                                               ; preds = %89
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mon, i32 0, i32 5), align 4
  %97 = load i32*, i32** %1, align 8
  %98 = call i64 @putl_category(i32 %96, i32* %97)
  %99 = load i64, i64* @EOF, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %131, label %101

101:                                              ; preds = %95
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mon, i32 0, i32 4), align 4
  %103 = load i32*, i32** %1, align 8
  %104 = call i64 @putl_category(i32 %102, i32* %103)
  %105 = load i64, i64* @EOF, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %131, label %107

107:                                              ; preds = %101
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mon, i32 0, i32 3), align 4
  %109 = load i32*, i32** %1, align 8
  %110 = call i64 @putl_category(i32 %108, i32* %109)
  %111 = load i64, i64* @EOF, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %131, label %113

113:                                              ; preds = %107
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mon, i32 0, i32 2), align 4
  %115 = load i32*, i32** %1, align 8
  %116 = call i64 @putl_category(i32 %114, i32* %115)
  %117 = load i64, i64* @EOF, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %131, label %119

119:                                              ; preds = %113
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mon, i32 0, i32 1), align 4
  %121 = load i32*, i32** %1, align 8
  %122 = call i64 @putl_category(i32 %120, i32* %121)
  %123 = load i64, i64* @EOF, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %131, label %125

125:                                              ; preds = %119
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mon, i32 0, i32 0), align 4
  %127 = load i32*, i32** %1, align 8
  %128 = call i64 @putl_category(i32 %126, i32* %127)
  %129 = load i64, i64* @EOF, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %125, %119, %113, %107, %101, %95, %89, %83, %77, %71, %65, %59, %53, %47, %41, %35, %29, %23, %17, %11, %5
  br label %135

132:                                              ; preds = %125
  %133 = load i32*, i32** %1, align 8
  %134 = call i32 @close_category(i32* %133)
  br label %135

135:                                              ; preds = %132, %131, %4
  ret void
}

declare dso_local i32* @open_category(...) #1

declare dso_local i64 @putl_category(i32, i32*) #1

declare dso_local i32 @close_category(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
