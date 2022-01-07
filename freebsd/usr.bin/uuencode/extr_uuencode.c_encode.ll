; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/uuencode/extr_uuencode.c_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/uuencode/extr_uuencode.c_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@raw = common dso_local global i32 0, align 4
@output = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"begin %o %s\0A\00", align 1
@mode = common dso_local global i32 0, align 4
@av = common dso_local global i8** null, align 8
@stdin = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%c\0Aend\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [80 x i8], align 16
  %5 = load i32, i32* @raw, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @output, align 4
  %9 = load i32, i32* @mode, align 4
  %10 = load i8**, i8*** @av, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %9, i8* %11)
  br label %13

13:                                               ; preds = %7, %0
  br label %14

14:                                               ; preds = %137, %13
  %15 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %16 = load i32, i32* @stdin, align 4
  %17 = call i32 @fread(i8* %15, i32 1, i32 45, i32 %16)
  store i32 %17, i32* %2, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %138

19:                                               ; preds = %14
  %20 = load i32, i32* %2, align 4
  %21 = trunc i32 %20 to i8
  %22 = call i32 @ENC(i8 signext %21)
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* %1, align 4
  %24 = trunc i32 %23 to i8
  %25 = load i32, i32* @output, align 4
  %26 = call i64 @fputc(i8 signext %24, i32 %25)
  %27 = load i64, i64* @EOF, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %138

30:                                               ; preds = %19
  %31 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  store i8* %31, i8** %3, align 8
  br label %32

32:                                               ; preds = %126, %30
  %33 = load i32, i32* %2, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %131

35:                                               ; preds = %32
  %36 = load i32, i32* %2, align 4
  %37 = icmp slt i32 %36, 3
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load i8*, i8** %3, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 2
  store i8 0, i8* %40, align 1
  %41 = load i32, i32* %2, align 4
  %42 = icmp slt i32 %41, 2
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  store i8 0, i8* %45, align 1
  br label %46

46:                                               ; preds = %43, %38
  br label %47

47:                                               ; preds = %46, %35
  %48 = load i8*, i8** %3, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = ashr i32 %50, 2
  store i32 %51, i32* %1, align 4
  %52 = load i32, i32* %1, align 4
  %53 = trunc i32 %52 to i8
  %54 = call i32 @ENC(i8 signext %53)
  store i32 %54, i32* %1, align 4
  %55 = load i32, i32* %1, align 4
  %56 = trunc i32 %55 to i8
  %57 = load i32, i32* @output, align 4
  %58 = call i64 @fputc(i8 signext %56, i32 %57)
  %59 = load i64, i64* @EOF, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %47
  br label %131

62:                                               ; preds = %47
  %63 = load i8*, i8** %3, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = shl i32 %65, 4
  %67 = and i32 %66, 48
  %68 = load i8*, i8** %3, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = ashr i32 %71, 4
  %73 = and i32 %72, 15
  %74 = or i32 %67, %73
  store i32 %74, i32* %1, align 4
  %75 = load i32, i32* %1, align 4
  %76 = trunc i32 %75 to i8
  %77 = call i32 @ENC(i8 signext %76)
  store i32 %77, i32* %1, align 4
  %78 = load i32, i32* %1, align 4
  %79 = trunc i32 %78 to i8
  %80 = load i32, i32* @output, align 4
  %81 = call i64 @fputc(i8 signext %79, i32 %80)
  %82 = load i64, i64* @EOF, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %62
  br label %131

85:                                               ; preds = %62
  %86 = load i8*, i8** %3, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = shl i32 %89, 2
  %91 = and i32 %90, 60
  %92 = load i8*, i8** %3, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 2
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = ashr i32 %95, 6
  %97 = and i32 %96, 3
  %98 = or i32 %91, %97
  store i32 %98, i32* %1, align 4
  %99 = load i32, i32* %1, align 4
  %100 = trunc i32 %99 to i8
  %101 = call i32 @ENC(i8 signext %100)
  store i32 %101, i32* %1, align 4
  %102 = load i32, i32* %1, align 4
  %103 = trunc i32 %102 to i8
  %104 = load i32, i32* @output, align 4
  %105 = call i64 @fputc(i8 signext %103, i32 %104)
  %106 = load i64, i64* @EOF, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %85
  br label %131

109:                                              ; preds = %85
  %110 = load i8*, i8** %3, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 2
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = and i32 %113, 63
  store i32 %114, i32* %1, align 4
  %115 = load i32, i32* %1, align 4
  %116 = trunc i32 %115 to i8
  %117 = call i32 @ENC(i8 signext %116)
  store i32 %117, i32* %1, align 4
  %118 = load i32, i32* %1, align 4
  %119 = trunc i32 %118 to i8
  %120 = load i32, i32* @output, align 4
  %121 = call i64 @fputc(i8 signext %119, i32 %120)
  %122 = load i64, i64* @EOF, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %109
  br label %131

125:                                              ; preds = %109
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %2, align 4
  %128 = sub nsw i32 %127, 3
  store i32 %128, i32* %2, align 4
  %129 = load i8*, i8** %3, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 3
  store i8* %130, i8** %3, align 8
  br label %32

131:                                              ; preds = %124, %108, %84, %61, %32
  %132 = load i32, i32* @output, align 4
  %133 = call i64 @fputc(i8 signext 10, i32 %132)
  %134 = load i64, i64* @EOF, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %138

137:                                              ; preds = %131
  br label %14

138:                                              ; preds = %136, %29, %14
  %139 = load i32, i32* @stdin, align 4
  %140 = call i64 @ferror(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = call i32 @errx(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %144

144:                                              ; preds = %142, %138
  %145 = load i32, i32* @raw, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %144
  %148 = load i32, i32* @output, align 4
  %149 = call i32 @ENC(i8 signext 0)
  %150 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %148, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %149)
  br label %151

151:                                              ; preds = %147, %144
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @fread(i8*, i32, i32, i32) #1

declare dso_local i32 @ENC(i8 signext) #1

declare dso_local i64 @fputc(i8 signext, i32) #1

declare dso_local i64 @ferror(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
