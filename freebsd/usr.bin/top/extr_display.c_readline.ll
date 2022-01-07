; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/top/extr_display.c_readline.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/top/extr_display.c_readline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@ch_kill = common dso_local global i8 0, align 1
@overstrike = common dso_local global i64 0, align 8
@msglen = common dso_local global i8 0, align 1
@ch_erase = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [4 x i8] c"\08 \08\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @readline(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %8, align 8
  store i8 0, i8* %10, align 1
  store i8 0, i8* %11, align 1
  %13 = load i32, i32* %6, align 4
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %105, %3
  %16 = load i32, i32* @stdout, align 4
  %17 = call i32 @fflush(i32 %16)
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @read(i32 0, i8* %18, i32 1)
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %106

21:                                               ; preds = %15
  %22 = load i8*, i8** %8, align 8
  %23 = load i8, i8* %22, align 1
  store i8 %23, i8* %9, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 10
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load i8, i8* %9, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 13
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %21
  br label %106

31:                                               ; preds = %26
  %32 = load i8, i8* %9, align 1
  %33 = sext i8 %32 to i32
  %34 = load i8, i8* @ch_kill, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %31
  %38 = load i64, i64* @overstrike, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i8, i8* %11, align 1
  %42 = sext i8 %41 to i32
  %43 = load i8, i8* @msglen, align 1
  %44 = sext i8 %43 to i32
  %45 = add nsw i32 %44, %42
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* @msglen, align 1
  br label %47

47:                                               ; preds = %40, %37
  %48 = load i8*, i8** %5, align 8
  store i8 0, i8* %48, align 1
  %49 = call i32 @putchar(i8 signext 13)
  store i32 -1, i32* %4, align 4
  br label %140

50:                                               ; preds = %31
  %51 = load i8, i8* %9, align 1
  %52 = sext i8 %51 to i32
  %53 = load i8, i8* @ch_erase, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %50
  %57 = load i8, i8* %10, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = call i32 @putchar(i8 signext 7)
  br label %69

62:                                               ; preds = %56
  %63 = load i32, i32* @stdout, align 4
  %64 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 -1
  store i8* %66, i8** %8, align 8
  %67 = load i8, i8* %10, align 1
  %68 = add i8 %67, -1
  store i8 %68, i8* %10, align 1
  br label %69

69:                                               ; preds = %62, %60
  br label %104

70:                                               ; preds = %50
  %71 = load i8, i8* %10, align 1
  %72 = sext i8 %71 to i32
  %73 = load i32, i32* %6, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %86, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i8, i8* %9, align 1
  %80 = call i32 @isdigit(i8 signext %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78, %75
  %83 = load i8, i8* %9, align 1
  %84 = call i32 @isprint(i8 signext %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %82, %78, %70
  %87 = call i32 @putchar(i8 signext 7)
  br label %103

88:                                               ; preds = %82
  %89 = load i8, i8* %9, align 1
  %90 = call i32 @putchar(i8 signext %89)
  %91 = load i8*, i8** %8, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %8, align 8
  %93 = load i8, i8* %10, align 1
  %94 = add i8 %93, 1
  store i8 %94, i8* %10, align 1
  %95 = load i8, i8* %10, align 1
  %96 = sext i8 %95 to i32
  %97 = load i8, i8* %11, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp sgt i32 %96, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %88
  %101 = load i8, i8* %10, align 1
  store i8 %101, i8* %11, align 1
  br label %102

102:                                              ; preds = %100, %88
  br label %103

103:                                              ; preds = %102, %86
  br label %104

104:                                              ; preds = %103, %69
  br label %105

105:                                              ; preds = %104
  br label %15

106:                                              ; preds = %30, %15
  %107 = load i8*, i8** %8, align 8
  store i8 0, i8* %107, align 1
  %108 = load i64, i64* @overstrike, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i8, i8* %11, align 1
  %112 = sext i8 %111 to i32
  br label %116

113:                                              ; preds = %106
  %114 = load i8, i8* %10, align 1
  %115 = sext i8 %114 to i32
  br label %116

116:                                              ; preds = %113, %110
  %117 = phi i32 [ %112, %110 ], [ %115, %113 ]
  %118 = load i8, i8* @msglen, align 1
  %119 = sext i8 %118 to i32
  %120 = add nsw i32 %119, %117
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* @msglen, align 1
  %122 = call i32 @putchar(i8 signext 13)
  %123 = load i8, i8* %10, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %116
  br label %138

127:                                              ; preds = %116
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i8*, i8** %5, align 8
  %132 = call i32 @atoi(i8* %131)
  br label %136

133:                                              ; preds = %127
  %134 = load i8, i8* %10, align 1
  %135 = sext i8 %134 to i32
  br label %136

136:                                              ; preds = %133, %130
  %137 = phi i32 [ %132, %130 ], [ %135, %133 ]
  br label %138

138:                                              ; preds = %136, %126
  %139 = phi i32 [ -1, %126 ], [ %137, %136 ]
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %138, %47
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @isprint(i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
