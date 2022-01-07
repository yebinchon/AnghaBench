; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_diffreg.c_readhash.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_diffreg.c_readhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@D_FOLDBLANKS = common dso_local global i32 0, align 4
@D_IGNOREBLANKS = common dso_local global i32 0, align 4
@D_IGNORECASE = common dso_local global i32 0, align 4
@D_STRIPCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @readhash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readhash(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @D_FOLDBLANKS, align 4
  %12 = load i32, i32* @D_IGNOREBLANKS, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %103

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @D_IGNORECASE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %62

21:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %58, %21
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @getc(i32* %23)
  store i32 %24, i32* %7, align 4
  %25 = icmp ne i32 %24, 10
  br i1 %25, label %26, label %61

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @D_STRIPCR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 13
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @getc(i32* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, 10
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %61

40:                                               ; preds = %34
  %41 = load i32, i32* %7, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @ungetc(i32 %41, i32* %42)
  br label %44

44:                                               ; preds = %40, %31, %26
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %45, 128
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %145

51:                                               ; preds = %47
  br label %61

52:                                               ; preds = %44
  %53 = load i32, i32* %9, align 4
  %54 = mul nsw i32 %53, 127
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @chrtran(i32 %55)
  %57 = add nsw i32 %54, %56
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %52
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %22

61:                                               ; preds = %51, %39, %22
  br label %102

62:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %98, %62
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @getc(i32* %64)
  store i32 %65, i32* %7, align 4
  %66 = icmp ne i32 %65, 10
  br i1 %66, label %67, label %101

67:                                               ; preds = %63
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @D_STRIPCR, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %67
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, 13
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @getc(i32* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp eq i32 %78, 10
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %101

81:                                               ; preds = %75
  %82 = load i32, i32* %7, align 4
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @ungetc(i32 %82, i32* %83)
  br label %85

85:                                               ; preds = %81, %72, %67
  %86 = load i32, i32* %7, align 4
  %87 = icmp eq i32 %86, 128
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i32, i32* %6, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 0, i32* %3, align 4
  br label %145

92:                                               ; preds = %88
  br label %101

93:                                               ; preds = %85
  %94 = load i32, i32* %9, align 4
  %95 = mul nsw i32 %94, 127
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %95, %96
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %93
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %63

101:                                              ; preds = %92, %80, %63
  br label %102

102:                                              ; preds = %101, %61
  br label %137

103:                                              ; preds = %2
  store i32 0, i32* %6, align 4
  br label %104

104:                                              ; preds = %121, %107, %103
  %105 = load i32*, i32** %4, align 8
  %106 = call i32 @getc(i32* %105)
  store i32 %106, i32* %7, align 4
  switch i32 %106, label %110 [
    i32 13, label %107
    i32 9, label %107
    i32 11, label %107
    i32 12, label %107
    i32 32, label %107
    i32 128, label %129
    i32 10, label %134
  ]

107:                                              ; preds = %104, %104, %104, %104, %104
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %104

110:                                              ; preds = %104
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %110
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @D_IGNOREBLANKS, align 4
  %116 = and i32 %114, %115
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %121

121:                                              ; preds = %118, %113, %110
  %122 = load i32, i32* %9, align 4
  %123 = mul nsw i32 %122, 127
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @chrtran(i32 %124)
  %126 = add nsw i32 %123, %125
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %6, align 4
  br label %104

129:                                              ; preds = %104
  %130 = load i32, i32* %6, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  store i32 0, i32* %3, align 4
  br label %145

133:                                              ; preds = %129
  br label %134

134:                                              ; preds = %104, %133
  br label %135

135:                                              ; preds = %134
  br label %136

136:                                              ; preds = %135
  br label %137

137:                                              ; preds = %136, %102
  %138 = load i32, i32* %9, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  br label %143

141:                                              ; preds = %137
  %142 = load i32, i32* %9, align 4
  br label %143

143:                                              ; preds = %141, %140
  %144 = phi i32 [ 1, %140 ], [ %142, %141 ]
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %143, %132, %91, %50
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @ungetc(i32, i32*) #1

declare dso_local i32 @chrtran(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
