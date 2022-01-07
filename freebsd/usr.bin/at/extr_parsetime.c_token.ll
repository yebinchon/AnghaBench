; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/at/extr_parsetime.c_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/at/extr_parsetime.c_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sc_token = common dso_local global i8* null, align 8
@sc_len = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@sc_tokid = common dso_local global i32 0, align 4
@sc_tokplur = common dso_local global i64 0, align 8
@need = common dso_local global i32 0, align 4
@scc = common dso_local global i32 0, align 4
@scp = common dso_local global i8** null, align 8
@sct = common dso_local global i8* null, align 8
@NUMBER = common dso_local global i32 0, align 4
@DOT = common dso_local global i32 0, align 4
@PLUS = common dso_local global i32 0, align 4
@MINUS = common dso_local global i32 0, align 4
@SLASH = common dso_local global i32 0, align 4
@JUNK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @token() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  br label %3

3:                                                ; preds = %0, %35
  %4 = load i8*, i8** @sc_token, align 8
  %5 = load i32, i32* @sc_len, align 4
  %6 = call i32 @memset(i8* %4, i32 0, i32 %5)
  %7 = load i32, i32* @EOF, align 4
  store i32 %7, i32* @sc_tokid, align 4
  store i64 0, i64* @sc_tokplur, align 8
  store i32 0, i32* %2, align 4
  %8 = load i32, i32* @need, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %3
  %11 = load i32, i32* @scc, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i32, i32* @sc_tokid, align 4
  store i32 %14, i32* %1, align 4
  br label %138

15:                                               ; preds = %10
  %16 = load i8**, i8*** @scp, align 8
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** @sct, align 8
  %18 = load i8**, i8*** @scp, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i32 1
  store i8** %19, i8*** @scp, align 8
  %20 = load i32, i32* @scc, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* @scc, align 4
  store i32 0, i32* @need, align 4
  br label %22

22:                                               ; preds = %15, %3
  br label %23

23:                                               ; preds = %28, %22
  %24 = load i8*, i8** @sct, align 8
  %25 = load i8, i8* %24, align 1
  %26 = call i64 @isspace(i8 signext %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i8*, i8** @sct, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** @sct, align 8
  br label %23

31:                                               ; preds = %23
  %32 = load i8*, i8** @sct, align 8
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i32 1, i32* @need, align 4
  br label %3

36:                                               ; preds = %31
  %37 = load i8*, i8** @sct, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** @sct, align 8
  %39 = load i8, i8* %37, align 1
  %40 = load i8*, i8** @sc_token, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  store i8 %39, i8* %41, align 1
  %42 = load i8*, i8** @sc_token, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = call i64 @isdigit(i8 signext %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %53, %47
  %49 = load i8*, i8** @sct, align 8
  %50 = load i8, i8* %49, align 1
  %51 = call i64 @isdigit(i8 signext %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load i8*, i8** @sct, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** @sct, align 8
  %56 = load i8, i8* %54, align 1
  %57 = load i8*, i8** @sc_token, align 8
  %58 = load i32, i32* %2, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %2, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  store i8 %56, i8* %61, align 1
  br label %48

62:                                               ; preds = %48
  %63 = load i8*, i8** @sc_token, align 8
  %64 = load i32, i32* %2, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %2, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  store i8 0, i8* %67, align 1
  %68 = load i32, i32* @NUMBER, align 4
  store i32 %68, i32* @sc_tokid, align 4
  store i32 %68, i32* %1, align 4
  br label %138

69:                                               ; preds = %36
  %70 = load i8*, i8** @sc_token, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = call i64 @isalpha(i8 signext %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %98

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %81, %75
  %77 = load i8*, i8** @sct, align 8
  %78 = load i8, i8* %77, align 1
  %79 = call i64 @isalpha(i8 signext %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load i8*, i8** @sct, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** @sct, align 8
  %84 = load i8, i8* %82, align 1
  %85 = load i8*, i8** @sc_token, align 8
  %86 = load i32, i32* %2, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %2, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %85, i64 %88
  store i8 %84, i8* %89, align 1
  br label %76

90:                                               ; preds = %76
  %91 = load i8*, i8** @sc_token, align 8
  %92 = load i32, i32* %2, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %2, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %91, i64 %94
  store i8 0, i8* %95, align 1
  %96 = load i8*, i8** @sc_token, align 8
  %97 = call i32 @parse_token(i8* %96)
  store i32 %97, i32* %1, align 4
  br label %138

98:                                               ; preds = %69
  %99 = load i8*, i8** @sc_token, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 0
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 58
  br i1 %103, label %110, label %104

104:                                              ; preds = %98
  %105 = load i8*, i8** @sc_token, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 46
  br i1 %109, label %110, label %112

110:                                              ; preds = %104, %98
  %111 = load i32, i32* @DOT, align 4
  store i32 %111, i32* @sc_tokid, align 4
  store i32 %111, i32* %1, align 4
  br label %138

112:                                              ; preds = %104
  %113 = load i8*, i8** @sc_token, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 43
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = load i32, i32* @PLUS, align 4
  store i32 %119, i32* @sc_tokid, align 4
  store i32 %119, i32* %1, align 4
  br label %138

120:                                              ; preds = %112
  %121 = load i8*, i8** @sc_token, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 0
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 45
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load i32, i32* @MINUS, align 4
  store i32 %127, i32* @sc_tokid, align 4
  store i32 %127, i32* %1, align 4
  br label %138

128:                                              ; preds = %120
  %129 = load i8*, i8** @sc_token, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 0
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 47
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = load i32, i32* @SLASH, align 4
  store i32 %135, i32* @sc_tokid, align 4
  store i32 %135, i32* %1, align 4
  br label %138

136:                                              ; preds = %128
  %137 = load i32, i32* @JUNK, align 4
  store i32 %137, i32* @sc_tokid, align 4
  store i32 %137, i32* %1, align 4
  br label %138

138:                                              ; preds = %136, %134, %126, %118, %110, %90, %62, %13
  %139 = load i32, i32* %1, align 4
  ret i32 %139
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i64 @isalpha(i8 signext) #1

declare dso_local i32 @parse_token(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
