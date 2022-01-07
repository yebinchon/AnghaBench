; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gencat/extr_gencat.c_MCParse.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gencat/extr_gencat.c_MCParse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"delset\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"quote\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"unrecognized line\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"neither blank line nor start of a message id\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MCParse(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %6, align 4
  store i8 0, i8* %7, align 1
  br label %8

8:                                                ; preds = %129, %110, %97, %1
  %9 = load i32, i32* %2, align 4
  %10 = call i8* @get_line(i32 %9)
  store i8* %10, i8** %3, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %130

12:                                               ; preds = %8
  %13 = load i8*, i8** %3, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 36
  br i1 %16, label %17, label %93

17:                                               ; preds = %12
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %3, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i64 @strncmp(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 3
  store i8* %25, i8** %3, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = call i8* @wskip(i8* %26)
  store i8* %27, i8** %3, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @atoi(i8* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @MCAddSet(i32 %30)
  store i32 0, i32* %6, align 4
  br label %92

32:                                               ; preds = %17
  %33 = load i8*, i8** %3, align 8
  %34 = call i64 @strncmp(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 6
  store i8* %38, i8** %3, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = call i8* @wskip(i8* %39)
  store i8* %40, i8** %3, align 8
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 @atoi(i8* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @MCDelSet(i32 %43)
  br label %91

45:                                               ; preds = %32
  %46 = load i8*, i8** %3, align 8
  %47 = call i64 @strncmp(i8* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %45
  %50 = load i8*, i8** %3, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 5
  store i8* %51, i8** %3, align 8
  %52 = load i8*, i8** %3, align 8
  %53 = load i8, i8* %52, align 1
  %54 = icmp ne i8 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  store i8 0, i8* %7, align 1
  br label %67

56:                                               ; preds = %49
  %57 = load i8*, i8** %3, align 8
  %58 = call i8* @wskip(i8* %57)
  store i8* %58, i8** %3, align 8
  %59 = load i8*, i8** %3, align 8
  %60 = load i8, i8* %59, align 1
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  store i8 0, i8* %7, align 1
  br label %66

63:                                               ; preds = %56
  %64 = load i8*, i8** %3, align 8
  %65 = load i8, i8* %64, align 1
  store i8 %65, i8* %7, align 1
  br label %66

66:                                               ; preds = %63, %62
  br label %67

67:                                               ; preds = %66, %55
  br label %90

68:                                               ; preds = %45
  %69 = load i8*, i8** %3, align 8
  %70 = load i8, i8* %69, align 1
  %71 = call i64 @isspace(i8 zeroext %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %89

74:                                               ; preds = %68
  %75 = load i8*, i8** %3, align 8
  %76 = load i8, i8* %75, align 1
  %77 = icmp ne i8 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = load i8*, i8** %3, align 8
  %80 = call i8* @wskip(i8* %79)
  store i8* %80, i8** %3, align 8
  %81 = load i8*, i8** %3, align 8
  %82 = load i8, i8* %81, align 1
  %83 = icmp ne i8 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i8*, i8** %3, align 8
  %86 = call i32 @warning(i8* %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %78
  br label %88

88:                                               ; preds = %87, %74
  br label %89

89:                                               ; preds = %88, %73
  br label %90

90:                                               ; preds = %89, %67
  br label %91

91:                                               ; preds = %90, %36
  br label %92

92:                                               ; preds = %91, %23
  br label %129

93:                                               ; preds = %12
  %94 = load i8*, i8** %3, align 8
  %95 = load i8, i8* %94, align 1
  %96 = icmp ne i8 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  br label %8

98:                                               ; preds = %93
  %99 = load i8*, i8** %3, align 8
  %100 = load i8, i8* %99, align 1
  %101 = call i64 @isdigit(i8 zeroext %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load i8*, i8** %3, align 8
  %105 = call i32 @atoi(i8* %104)
  store i32 %105, i32* %6, align 4
  %106 = load i8*, i8** %3, align 8
  %107 = call i8* @cskip(i8* %106)
  store i8* %107, i8** %3, align 8
  %108 = load i8*, i8** %3, align 8
  %109 = call i8* @wskip(i8* %108)
  store i8* %109, i8** %3, align 8
  br label %113

110:                                              ; preds = %98
  %111 = load i8*, i8** %3, align 8
  %112 = call i32 @warning(i8* %111, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %8

113:                                              ; preds = %103
  %114 = load i8*, i8** %3, align 8
  %115 = load i8, i8* %114, align 1
  %116 = icmp ne i8 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %113
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @MCDelMsg(i32 %118)
  br label %128

120:                                              ; preds = %113
  %121 = load i32, i32* %2, align 4
  %122 = load i8*, i8** %3, align 8
  %123 = load i8, i8* %7, align 1
  %124 = call i8* @getmsg(i32 %121, i8* %122, i8 signext %123)
  store i8* %124, i8** %4, align 8
  %125 = load i32, i32* %6, align 4
  %126 = load i8*, i8** %4, align 8
  %127 = call i32 @MCAddMsg(i32 %125, i8* %126)
  br label %128

128:                                              ; preds = %120, %117
  br label %129

129:                                              ; preds = %128, %92
  br label %8

130:                                              ; preds = %8
  ret void
}

declare dso_local i8* @get_line(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @wskip(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @MCAddSet(i32) #1

declare dso_local i32 @MCDelSet(i32) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32 @warning(i8*, i8*) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i8* @cskip(i8*) #1

declare dso_local i32 @MCDelMsg(i32) #1

declare dso_local i8* @getmsg(i32, i8*, i8 signext) #1

declare dso_local i32 @MCAddMsg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
