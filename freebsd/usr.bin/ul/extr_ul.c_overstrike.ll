; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ul/extr_ul.c_overstrike.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ul/extr_ul.c_overstrike.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@maxcol = common dso_local global i32 0, align 4
@obuf = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @overstrike to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @overstrike() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  store i8* %5, i8** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %53, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @maxcol, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %56

10:                                               ; preds = %6
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obuf, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %18 [
    i32 129, label %17
    i32 128, label %21
    i32 130, label %24
  ]

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %10, %17
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %3, align 8
  store i8 32, i8* %19, align 1
  br label %52

21:                                               ; preds = %10
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %3, align 8
  store i8 95, i8* %22, align 1
  br label %52

24:                                               ; preds = %10
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obuf, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = trunc i32 %30 to i8
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %3, align 8
  store i8 %31, i8* %32, align 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obuf, align 8
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %51

41:                                               ; preds = %24
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obuf, align 8
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load i32, i32* %1, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %1, align 4
  br label %51

51:                                               ; preds = %41, %24
  store i32 1, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %21, %18
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %1, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %1, align 4
  br label %6

56:                                               ; preds = %6
  %57 = call i32 @putwchar(i8 signext 13)
  %58 = load i8*, i8** %3, align 8
  store i8 32, i8* %58, align 1
  br label %59

59:                                               ; preds = %66, %56
  %60 = load i8*, i8** %3, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 32
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i8*, i8** %3, align 8
  store i8 0, i8* %65, align 1
  br label %66

66:                                               ; preds = %64
  %67 = load i8*, i8** %3, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 -1
  store i8* %68, i8** %3, align 8
  br label %59

69:                                               ; preds = %59
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  store i8* %70, i8** %3, align 8
  br label %71

71:                                               ; preds = %79, %69
  %72 = load i8*, i8** %3, align 8
  %73 = load i8, i8* %72, align 1
  %74 = icmp ne i8 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load i8*, i8** %3, align 8
  %77 = load i8, i8* %76, align 1
  %78 = call i32 @putwchar(i8 signext %77)
  br label %79

79:                                               ; preds = %75
  %80 = load i8*, i8** %3, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %3, align 8
  br label %71

82:                                               ; preds = %71
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %134

85:                                               ; preds = %82
  %86 = call i32 @putwchar(i8 signext 13)
  %87 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  store i8* %87, i8** %3, align 8
  br label %88

88:                                               ; preds = %106, %85
  %89 = load i8*, i8** %3, align 8
  %90 = load i8, i8* %89, align 1
  %91 = icmp ne i8 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %88
  %93 = load i8*, i8** %3, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 95
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %102

98:                                               ; preds = %92
  %99 = load i8*, i8** %3, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  br label %102

102:                                              ; preds = %98, %97
  %103 = phi i32 [ 32, %97 ], [ %101, %98 ]
  %104 = trunc i32 %103 to i8
  %105 = call i32 @putwchar(i8 signext %104)
  br label %106

106:                                              ; preds = %102
  %107 = load i8*, i8** %3, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %3, align 8
  br label %88

109:                                              ; preds = %88
  %110 = call i32 @putwchar(i8 signext 13)
  %111 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  store i8* %111, i8** %3, align 8
  br label %112

112:                                              ; preds = %130, %109
  %113 = load i8*, i8** %3, align 8
  %114 = load i8, i8* %113, align 1
  %115 = icmp ne i8 %114, 0
  br i1 %115, label %116, label %133

116:                                              ; preds = %112
  %117 = load i8*, i8** %3, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 95
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %126

122:                                              ; preds = %116
  %123 = load i8*, i8** %3, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  br label %126

126:                                              ; preds = %122, %121
  %127 = phi i32 [ 32, %121 ], [ %125, %122 ]
  %128 = trunc i32 %127 to i8
  %129 = call i32 @putwchar(i8 signext %128)
  br label %130

130:                                              ; preds = %126
  %131 = load i8*, i8** %3, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %3, align 8
  br label %112

133:                                              ; preds = %112
  br label %134

134:                                              ; preds = %133, %82
  ret void
}

declare dso_local i32 @putwchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
