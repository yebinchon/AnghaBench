; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/seq/extr_seq.c_unescape.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/seq/extr_seq.c_unescape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @unescape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @unescape(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %2, align 8
  store i8* %8, i8** %4, align 8
  br label %9

9:                                                ; preds = %137, %1
  %10 = load i8*, i8** %4, align 8
  %11 = load i8, i8* %10, align 1
  %12 = load i8*, i8** %2, align 8
  store i8 %11, i8* %12, align 1
  %13 = icmp ne i8 %11, 0
  br i1 %13, label %14, label %142

14:                                               ; preds = %9
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 92
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %137

20:                                               ; preds = %14
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %4, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  switch i32 %24, label %133 [
    i32 97, label %25
    i32 98, label %27
    i32 101, label %29
    i32 102, label %31
    i32 110, label %33
    i32 114, label %35
    i32 116, label %37
    i32 118, label %39
    i32 92, label %41
    i32 39, label %43
    i32 34, label %45
    i32 48, label %47
    i32 49, label %47
    i32 50, label %47
    i32 51, label %47
    i32 52, label %47
    i32 53, label %47
    i32 54, label %47
    i32 55, label %47
    i32 120, label %81
  ]

25:                                               ; preds = %20
  %26 = load i8*, i8** %2, align 8
  store i8 7, i8* %26, align 1
  br label %137

27:                                               ; preds = %20
  %28 = load i8*, i8** %2, align 8
  store i8 8, i8* %28, align 1
  br label %137

29:                                               ; preds = %20
  %30 = load i8*, i8** %2, align 8
  store i8 27, i8* %30, align 1
  br label %137

31:                                               ; preds = %20
  %32 = load i8*, i8** %2, align 8
  store i8 12, i8* %32, align 1
  br label %137

33:                                               ; preds = %20
  %34 = load i8*, i8** %2, align 8
  store i8 10, i8* %34, align 1
  br label %137

35:                                               ; preds = %20
  %36 = load i8*, i8** %2, align 8
  store i8 13, i8* %36, align 1
  br label %137

37:                                               ; preds = %20
  %38 = load i8*, i8** %2, align 8
  store i8 9, i8* %38, align 1
  br label %137

39:                                               ; preds = %20
  %40 = load i8*, i8** %2, align 8
  store i8 11, i8* %40, align 1
  br label %137

41:                                               ; preds = %20
  %42 = load i8*, i8** %2, align 8
  store i8 92, i8* %42, align 1
  br label %137

43:                                               ; preds = %20
  %44 = load i8*, i8** %2, align 8
  store i8 39, i8* %44, align 1
  br label %137

45:                                               ; preds = %20
  %46 = load i8*, i8** %2, align 8
  store i8 34, i8* %46, align 1
  br label %137

47:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20
  store i32 0, i32* %6, align 4
  store i8 0, i8* %3, align 1
  br label %48

48:                                               ; preds = %71, %47
  %49 = load i8*, i8** %4, align 8
  %50 = load i8, i8* %49, align 1
  %51 = call i32 @ISODIGIT(i8 zeroext %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 3
  br label %56

56:                                               ; preds = %53, %48
  %57 = phi i1 [ false, %48 ], [ %55, %53 ]
  br i1 %57, label %58, label %76

58:                                               ; preds = %56
  %59 = load i8, i8* %3, align 1
  %60 = sext i8 %59 to i32
  %61 = shl i32 %60, 3
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %3, align 1
  %63 = load i8*, i8** %4, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = sub nsw i32 %65, 48
  %67 = load i8, i8* %3, align 1
  %68 = sext i8 %67 to i32
  %69 = or i32 %68, %66
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %3, align 1
  br label %71

71:                                               ; preds = %58
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  %74 = load i8*, i8** %4, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %4, align 8
  br label %48

76:                                               ; preds = %56
  %77 = load i8, i8* %3, align 1
  %78 = load i8*, i8** %2, align 8
  store i8 %77, i8* %78, align 1
  %79 = load i8*, i8** %4, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 -1
  store i8* %80, i8** %4, align 8
  br label %137

81:                                               ; preds = %20
  %82 = load i8*, i8** %4, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %4, align 8
  store i32 0, i32* %6, align 4
  store i8 0, i8* %3, align 1
  br label %84

84:                                               ; preds = %123, %81
  %85 = load i8*, i8** %4, align 8
  %86 = load i8, i8* %85, align 1
  %87 = call i32 @isxdigit(i8 zeroext %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %90, 2
  br label %92

92:                                               ; preds = %89, %84
  %93 = phi i1 [ false, %84 ], [ %91, %89 ]
  br i1 %93, label %94, label %128

94:                                               ; preds = %92
  %95 = load i8, i8* %3, align 1
  %96 = sext i8 %95 to i32
  %97 = shl i32 %96, 4
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %3, align 1
  %99 = load i8*, i8** %4, align 8
  %100 = load i8, i8* %99, align 1
  %101 = call i32 @isdigit(i8 zeroext %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %94
  %104 = load i8*, i8** %4, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = sub nsw i32 %106, 48
  %108 = load i8, i8* %3, align 1
  %109 = sext i8 %108 to i32
  %110 = or i32 %109, %107
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %3, align 1
  br label %122

112:                                              ; preds = %94
  %113 = load i8*, i8** %4, align 8
  %114 = load i8, i8* %113, align 1
  %115 = call i32 @toupper(i8 zeroext %114)
  %116 = sub nsw i32 %115, 65
  %117 = add nsw i32 %116, 10
  %118 = load i8, i8* %3, align 1
  %119 = sext i8 %118 to i32
  %120 = or i32 %119, %117
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* %3, align 1
  br label %122

122:                                              ; preds = %112, %103
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %6, align 4
  %126 = load i8*, i8** %4, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %4, align 8
  br label %84

128:                                              ; preds = %92
  %129 = load i8, i8* %3, align 1
  %130 = load i8*, i8** %2, align 8
  store i8 %129, i8* %130, align 1
  %131 = load i8*, i8** %4, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 -1
  store i8* %132, i8** %4, align 8
  br label %137

133:                                              ; preds = %20
  %134 = load i8*, i8** %4, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 -1
  store i8* %135, i8** %4, align 8
  br label %136

136:                                              ; preds = %133
  br label %137

137:                                              ; preds = %136, %128, %76, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %19
  %138 = load i8*, i8** %4, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %4, align 8
  %140 = load i8*, i8** %2, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %2, align 8
  br label %9

142:                                              ; preds = %9
  %143 = load i8*, i8** %5, align 8
  ret i8* %143
}

declare dso_local i32 @ISODIGIT(i8 zeroext) #1

declare dso_local i32 @isxdigit(i8 zeroext) #1

declare dso_local i32 @isdigit(i8 zeroext) #1

declare dso_local i32 @toupper(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
