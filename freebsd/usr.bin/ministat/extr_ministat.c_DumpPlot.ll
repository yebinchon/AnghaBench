; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ministat/extr_ministat.c_DumpPlot.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ministat/extr_ministat.c_DumpPlot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plot = type { i64, i32, i32, i32*, i32, i32** }

@plot = common dso_local global %struct.plot zeroinitializer, align 8
@.str = private unnamed_addr constant [31 x i8] c"[no plot, span is zero width]\0A\00", align 1
@MAX_DS = common dso_local global i32 0, align 4
@symbol = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"[%02x]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @DumpPlot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DumpPlot() #0 {
  %1 = alloca %struct.plot*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.plot* @plot, %struct.plot** %1, align 8
  %5 = load %struct.plot*, %struct.plot** %1, align 8
  %6 = getelementptr inbounds %struct.plot, %struct.plot* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %154

11:                                               ; preds = %0
  %12 = call i32 @putchar(i8 signext 43)
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %21, %11
  %14 = load i32, i32* %2, align 4
  %15 = load %struct.plot*, %struct.plot** %1, align 8
  %16 = getelementptr inbounds %struct.plot, %struct.plot* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = call i32 @putchar(i8 signext 45)
  br label %21

21:                                               ; preds = %19
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %2, align 4
  br label %13

24:                                               ; preds = %13
  %25 = call i32 @putchar(i8 signext 43)
  %26 = call i32 @putchar(i8 signext 10)
  store i32 1, i32* %2, align 4
  br label %27

27:                                               ; preds = %82, %24
  %28 = load i32, i32* %2, align 4
  %29 = load %struct.plot*, %struct.plot** %1, align 8
  %30 = getelementptr inbounds %struct.plot, %struct.plot* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %85

33:                                               ; preds = %27
  %34 = call i32 @putchar(i8 signext 124)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %76, %33
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.plot*, %struct.plot** %1, align 8
  %38 = getelementptr inbounds %struct.plot, %struct.plot* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %79

41:                                               ; preds = %35
  %42 = load %struct.plot*, %struct.plot** %1, align 8
  %43 = getelementptr inbounds %struct.plot, %struct.plot* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.plot*, %struct.plot** %1, align 8
  %46 = getelementptr inbounds %struct.plot, %struct.plot* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %2, align 4
  %49 = sub nsw i32 %47, %48
  %50 = load %struct.plot*, %struct.plot** %1, align 8
  %51 = getelementptr inbounds %struct.plot, %struct.plot* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = mul nsw i32 %49, %52
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %44, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %41
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @MAX_DS, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load i8*, i8** @symbol, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = call i32 @putchar(i8 signext %70)
  br label %75

72:                                               ; preds = %61, %41
  %73 = load i32, i32* %4, align 4
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %72, %65
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %3, align 4
  br label %35

79:                                               ; preds = %35
  %80 = call i32 @putchar(i8 signext 124)
  %81 = call i32 @putchar(i8 signext 10)
  br label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %2, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %2, align 4
  br label %27

85:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %135, %85
  %87 = load i32, i32* %2, align 4
  %88 = load %struct.plot*, %struct.plot** %1, align 8
  %89 = getelementptr inbounds %struct.plot, %struct.plot* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %138

92:                                               ; preds = %86
  %93 = load %struct.plot*, %struct.plot** %1, align 8
  %94 = getelementptr inbounds %struct.plot, %struct.plot* %93, i32 0, i32 5
  %95 = load i32**, i32*** %94, align 8
  %96 = load i32, i32* %2, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %95, i64 %97
  %99 = load i32*, i32** %98, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  br label %135

102:                                              ; preds = %92
  %103 = call i32 @putchar(i8 signext 124)
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %129, %102
  %105 = load i32, i32* %3, align 4
  %106 = load %struct.plot*, %struct.plot** %1, align 8
  %107 = getelementptr inbounds %struct.plot, %struct.plot* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %132

110:                                              ; preds = %104
  %111 = load %struct.plot*, %struct.plot** %1, align 8
  %112 = getelementptr inbounds %struct.plot, %struct.plot* %111, i32 0, i32 5
  %113 = load i32**, i32*** %112, align 8
  %114 = load i32, i32* %2, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32*, i32** %113, i64 %115
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %3, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %4, align 4
  %122 = load i32, i32* %4, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %110
  store i32 32, i32* %4, align 4
  br label %125

125:                                              ; preds = %124, %110
  %126 = load i32, i32* %4, align 4
  %127 = trunc i32 %126 to i8
  %128 = call i32 @putchar(i8 signext %127)
  br label %129

129:                                              ; preds = %125
  %130 = load i32, i32* %3, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %3, align 4
  br label %104

132:                                              ; preds = %104
  %133 = call i32 @putchar(i8 signext 124)
  %134 = call i32 @putchar(i8 signext 10)
  br label %135

135:                                              ; preds = %132, %101
  %136 = load i32, i32* %2, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %2, align 4
  br label %86

138:                                              ; preds = %86
  %139 = call i32 @putchar(i8 signext 43)
  store i32 0, i32* %2, align 4
  br label %140

140:                                              ; preds = %148, %138
  %141 = load i32, i32* %2, align 4
  %142 = load %struct.plot*, %struct.plot** %1, align 8
  %143 = getelementptr inbounds %struct.plot, %struct.plot* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %140
  %147 = call i32 @putchar(i8 signext 45)
  br label %148

148:                                              ; preds = %146
  %149 = load i32, i32* %2, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %2, align 4
  br label %140

151:                                              ; preds = %140
  %152 = call i32 @putchar(i8 signext 43)
  %153 = call i32 @putchar(i8 signext 10)
  br label %154

154:                                              ; preds = %151, %9
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
