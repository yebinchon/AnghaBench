; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/fmt/extr_fmt.c_get_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/fmt/extr_fmt.c_get_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_line.buf = internal global i8* null, align 8
@get_line.length = internal global i64 0, align 8
@WEOF = common dso_local global i8 0, align 1
@format_troff = common dso_local global i32 0, align 4
@tab_width = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i64*)* @get_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_line(i32* %0, i64* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64* %1, i64** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %11 = load i8*, i8** @get_line.buf, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  store i64 100, i64* @get_line.length, align 8
  %14 = load i64, i64* @get_line.length, align 8
  %15 = mul i64 %14, 1
  %16 = call i8* @XMALLOC(i64 %15)
  store i8* %16, i8** @get_line.buf, align 8
  br label %17

17:                                               ; preds = %13, %2
  br label %18

18:                                               ; preds = %136, %17
  %19 = load i32*, i32** %3, align 8
  %20 = call signext i8 @getwc(i32* %19)
  store i8 %20, i8* %6, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 10
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i8, i8* %6, align 1
  %25 = sext i8 %24 to i32
  %26 = load i8, i8* @WEOF, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %25, %27
  br label %29

29:                                               ; preds = %23, %18
  %30 = phi i1 [ false, %18 ], [ %28, %23 ]
  br i1 %30, label %31, label %137

31:                                               ; preds = %29
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %7, align 8
  %34 = add i64 %32, %33
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load i8, i8* %6, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 46
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* @format_troff, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  store i32 1, i32* %8, align 4
  br label %44

44:                                               ; preds = %43, %40, %36, %31
  %45 = load i8, i8* %6, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 32
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i64, i64* %7, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %7, align 8
  br label %136

51:                                               ; preds = %44
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = load i8, i8* %6, align 1
  %56 = call i64 @iswprint(i8 signext %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %102

58:                                               ; preds = %54, %51
  br label %59

59:                                               ; preds = %65, %58
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* %7, align 8
  %62 = add i64 %60, %61
  %63 = load i64, i64* @get_line.length, align 8
  %64 = icmp uge i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load i64, i64* @get_line.length, align 8
  %67 = mul i64 %66, 2
  store i64 %67, i64* @get_line.length, align 8
  %68 = load i8*, i8** @get_line.buf, align 8
  %69 = load i64, i64* @get_line.length, align 8
  %70 = mul i64 %69, 1
  %71 = call i8* @xrealloc(i8* %68, i64 %70)
  store i8* %71, i8** @get_line.buf, align 8
  br label %59

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %76, %72
  %74 = load i64, i64* %7, align 8
  %75 = icmp ugt i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load i64, i64* %7, align 8
  %78 = add i64 %77, -1
  store i64 %78, i64* %7, align 8
  %79 = load i8*, i8** @get_line.buf, align 8
  %80 = load i64, i64* %5, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %5, align 8
  %82 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8 32, i8* %82, align 1
  %83 = load i64, i64* %9, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %9, align 8
  br label %73

85:                                               ; preds = %73
  %86 = load i8, i8* %6, align 1
  %87 = load i8*, i8** @get_line.buf, align 8
  %88 = load i64, i64* %5, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %5, align 8
  %90 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8 %86, i8* %90, align 1
  %91 = load i8, i8* %6, align 1
  %92 = call i32 @wcwidth(i8 signext %91)
  store i32 %92, i32* %10, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = load i32, i32* %10, align 4
  br label %97

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96, %94
  %98 = phi i32 [ %95, %94 ], [ 1, %96 ]
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %9, align 8
  %101 = add i64 %100, %99
  store i64 %101, i64* %9, align 8
  br label %135

102:                                              ; preds = %54
  %103 = load i8, i8* %6, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 9
  br i1 %105, label %106, label %116

106:                                              ; preds = %102
  %107 = load i64, i64* @tab_width, align 8
  %108 = load i64, i64* %9, align 8
  %109 = load i64, i64* %7, align 8
  %110 = add i64 %108, %109
  %111 = load i64, i64* @tab_width, align 8
  %112 = urem i64 %110, %111
  %113 = sub i64 %107, %112
  %114 = load i64, i64* %7, align 8
  %115 = add i64 %114, %113
  store i64 %115, i64* %7, align 8
  br label %134

116:                                              ; preds = %102
  %117 = load i8, i8* %6, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 8
  br i1 %119, label %120, label %133

120:                                              ; preds = %116
  %121 = load i64, i64* %5, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i64, i64* %5, align 8
  %125 = add i64 %124, -1
  store i64 %125, i64* %5, align 8
  br label %126

126:                                              ; preds = %123, %120
  %127 = load i64, i64* %9, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i64, i64* %9, align 8
  %131 = add i64 %130, -1
  store i64 %131, i64* %9, align 8
  br label %132

132:                                              ; preds = %129, %126
  br label %133

133:                                              ; preds = %132, %116
  br label %134

134:                                              ; preds = %133, %106
  br label %135

135:                                              ; preds = %134, %97
  br label %136

136:                                              ; preds = %135, %48
  br label %18

137:                                              ; preds = %29
  %138 = load i64, i64* %5, align 8
  %139 = load i64*, i64** %4, align 8
  store i64 %138, i64* %139, align 8
  %140 = load i64, i64* %5, align 8
  %141 = icmp ugt i64 %140, 0
  br i1 %141, label %148, label %142

142:                                              ; preds = %137
  %143 = load i8, i8* %6, align 1
  %144 = sext i8 %143 to i32
  %145 = load i8, i8* @WEOF, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp ne i32 %144, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %142, %137
  %149 = load i8*, i8** @get_line.buf, align 8
  br label %151

150:                                              ; preds = %142
  br label %151

151:                                              ; preds = %150, %148
  %152 = phi i8* [ %149, %148 ], [ null, %150 ]
  ret i8* %152
}

declare dso_local i8* @XMALLOC(i64) #1

declare dso_local signext i8 @getwc(i32*) #1

declare dso_local i64 @iswprint(i8 signext) #1

declare dso_local i8* @xrealloc(i8*, i64) #1

declare dso_local i32 @wcwidth(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
