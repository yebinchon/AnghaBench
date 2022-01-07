; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_vsort.c_cmpversions.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_vsort.c_cmpversions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64)* @cmpversions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmpversions(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  br label %14

14:                                               ; preds = %151, %4
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp slt i64 %19, %20
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i1 [ true, %14 ], [ %21, %18 ]
  br i1 %23, label %24, label %152

24:                                               ; preds = %22
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %88, %24
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @bws_get_iter_value(i64 %30)
  %32 = call i64 @isdigit_clocale(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %29, %25
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i64, i64* %8, align 8
  %40 = call i64 @bws_get_iter_value(i64 %39)
  %41 = call i64 @isdigit_clocale(i64 %40)
  %42 = icmp ne i64 %41, 0
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %38, %34
  %45 = phi i1 [ false, %34 ], [ %43, %38 ]
  br label %46

46:                                               ; preds = %44, %29
  %47 = phi i1 [ true, %29 ], [ %45, %44 ]
  br i1 %47, label %48, label %89

48:                                               ; preds = %46
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i64, i64* %6, align 8
  %54 = call i64 @bws_get_iter_value(i64 %53)
  br label %56

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %52
  %57 = phi i64 [ %54, %52 ], [ 0, %55 ]
  store i64 %57, i64* %12, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i64, i64* %8, align 8
  %63 = call i64 @bws_get_iter_value(i64 %62)
  br label %65

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %61
  %66 = phi i64 [ %63, %61 ], [ 0, %64 ]
  store i64 %66, i64* %13, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* %13, align 8
  %69 = call i32 @cmp_chars(i64 %67, i64 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %5, align 4
  br label %153

74:                                               ; preds = %65
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* %7, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i64, i64* %6, align 8
  %80 = call i64 @bws_iterator_inc(i64 %79, i32 1)
  store i64 %80, i64* %6, align 8
  br label %81

81:                                               ; preds = %78, %74
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %9, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i64, i64* %8, align 8
  %87 = call i64 @bws_iterator_inc(i64 %86, i32 1)
  store i64 %87, i64* %8, align 8
  br label %88

88:                                               ; preds = %85, %81
  br label %25

89:                                               ; preds = %46
  br label %90

90:                                               ; preds = %94, %89
  %91 = load i64, i64* %6, align 8
  %92 = call i64 @bws_get_iter_value(i64 %91)
  %93 = icmp eq i64 %92, 48
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i64, i64* %6, align 8
  %96 = call i64 @bws_iterator_inc(i64 %95, i32 1)
  store i64 %96, i64* %6, align 8
  br label %90

97:                                               ; preds = %90
  br label %98

98:                                               ; preds = %102, %97
  %99 = load i64, i64* %8, align 8
  %100 = call i64 @bws_get_iter_value(i64 %99)
  %101 = icmp eq i64 %100, 48
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i64, i64* %8, align 8
  %104 = call i64 @bws_iterator_inc(i64 %103, i32 1)
  store i64 %104, i64* %8, align 8
  br label %98

105:                                              ; preds = %98
  br label %106

106:                                              ; preds = %129, %105
  %107 = load i64, i64* %6, align 8
  %108 = call i64 @bws_get_iter_value(i64 %107)
  %109 = call i64 @isdigit_clocale(i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load i64, i64* %8, align 8
  %113 = call i64 @bws_get_iter_value(i64 %112)
  %114 = call i64 @isdigit_clocale(i64 %113)
  %115 = icmp ne i64 %114, 0
  br label %116

116:                                              ; preds = %111, %106
  %117 = phi i1 [ false, %106 ], [ %115, %111 ]
  br i1 %117, label %118, label %134

118:                                              ; preds = %116
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %118
  %122 = load i64, i64* %6, align 8
  %123 = call i64 @bws_get_iter_value(i64 %122)
  %124 = trunc i64 %123 to i32
  %125 = load i64, i64* %8, align 8
  %126 = call i64 @bws_get_iter_value(i64 %125)
  %127 = trunc i64 %126 to i32
  %128 = sub nsw i32 %124, %127
  store i32 %128, i32* %11, align 4
  br label %129

129:                                              ; preds = %121, %118
  %130 = load i64, i64* %6, align 8
  %131 = call i64 @bws_iterator_inc(i64 %130, i32 1)
  store i64 %131, i64* %6, align 8
  %132 = load i64, i64* %8, align 8
  %133 = call i64 @bws_iterator_inc(i64 %132, i32 1)
  store i64 %133, i64* %8, align 8
  br label %106

134:                                              ; preds = %116
  %135 = load i64, i64* %6, align 8
  %136 = call i64 @bws_get_iter_value(i64 %135)
  %137 = call i64 @isdigit_clocale(i64 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  store i32 1, i32* %5, align 4
  br label %153

140:                                              ; preds = %134
  %141 = load i64, i64* %8, align 8
  %142 = call i64 @bws_get_iter_value(i64 %141)
  %143 = call i64 @isdigit_clocale(i64 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  store i32 -1, i32* %5, align 4
  br label %153

146:                                              ; preds = %140
  %147 = load i32, i32* %11, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  %150 = load i32, i32* %11, align 4
  store i32 %150, i32* %5, align 4
  br label %153

151:                                              ; preds = %146
  br label %14

152:                                              ; preds = %22
  store i32 0, i32* %5, align 4
  br label %153

153:                                              ; preds = %152, %149, %145, %139, %72
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i64 @isdigit_clocale(i64) #1

declare dso_local i64 @bws_get_iter_value(i64) #1

declare dso_local i32 @cmp_chars(i64, i64) #1

declare dso_local i64 @bws_iterator_inc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
