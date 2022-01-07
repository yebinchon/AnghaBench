; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/chat/extr_chat.c_do_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/chat/extr_chat.c_do_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%s -- open failed: %m\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"unterminated quote (line %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i32, i32* @STR_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = call i32* @fopen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 (i32, i8*, ...) @fatal(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %19, %1
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %153, %41, %22
  %24 = load i32, i32* @STR_LEN, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = call i32* @fgets(i8* %14, i32 %24, i32* %25)
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %154

28:                                               ; preds = %23
  %29 = call i8* @strchr(i8* %14, i8 signext 10)
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i8*, i8** %5, align 8
  store i8 0, i8* %33, align 1
  br label %34

34:                                               ; preds = %32, %28
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  store i8* %14, i8** %5, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 35
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %23

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %148, %58, %42
  %44 = load i8*, i8** %5, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %153

48:                                               ; preds = %43
  %49 = load i8*, i8** %5, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 32
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load i8*, i8** %5, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 9
  br i1 %57, label %58, label %61

58:                                               ; preds = %53, %48
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %5, align 8
  br label %43

61:                                               ; preds = %53
  %62 = load i8*, i8** %5, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 34
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load i8*, i8** %5, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 39
  br i1 %70, label %71, label %108

71:                                               ; preds = %66, %61
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %5, align 8
  %74 = load i8, i8* %72, align 1
  store i8 %74, i8* %7, align 1
  %75 = load i8*, i8** %5, align 8
  store i8* %75, i8** %6, align 8
  br label %76

76:                                               ; preds = %106, %71
  %77 = load i8*, i8** %5, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = load i8, i8* %7, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %79, %81
  br i1 %82, label %83, label %107

83:                                               ; preds = %76
  %84 = load i8*, i8** %5, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* %3, align 4
  %90 = call i32 (i32, i8*, ...) @fatal(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %88, %83
  %92 = load i8*, i8** %5, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %5, align 8
  %94 = load i8, i8* %92, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 92
  br i1 %96, label %97, label %106

97:                                               ; preds = %91
  %98 = load i8*, i8** %5, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i8*, i8** %5, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %5, align 8
  br label %105

105:                                              ; preds = %102, %97
  br label %106

106:                                              ; preds = %105, %91
  br label %76

107:                                              ; preds = %76
  br label %131

108:                                              ; preds = %66
  %109 = load i8*, i8** %5, align 8
  store i8* %109, i8** %6, align 8
  br label %110

110:                                              ; preds = %127, %108
  %111 = load i8*, i8** %5, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %110
  %116 = load i8*, i8** %5, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 32
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load i8*, i8** %5, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 9
  br label %125

125:                                              ; preds = %120, %115, %110
  %126 = phi i1 [ false, %115 ], [ false, %110 ], [ %124, %120 ]
  br i1 %126, label %127, label %130

127:                                              ; preds = %125
  %128 = load i8*, i8** %5, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %5, align 8
  br label %110

130:                                              ; preds = %125
  br label %131

131:                                              ; preds = %130, %107
  %132 = load i8*, i8** %5, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load i8*, i8** %5, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %5, align 8
  store i8 0, i8* %137, align 1
  br label %139

139:                                              ; preds = %136, %131
  %140 = load i32, i32* %4, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i8*, i8** %6, align 8
  %144 = call i32 @chat_send(i8* %143)
  br label %148

145:                                              ; preds = %139
  %146 = load i8*, i8** %6, align 8
  %147 = call i32 @chat_expect(i8* %146)
  br label %148

148:                                              ; preds = %145, %142
  %149 = load i32, i32* %4, align 4
  %150 = icmp ne i32 %149, 0
  %151 = xor i1 %150, true
  %152 = zext i1 %151 to i32
  store i32 %152, i32* %4, align 4
  br label %43

153:                                              ; preds = %43
  br label %23

154:                                              ; preds = %23
  %155 = load i32*, i32** %10, align 8
  %156 = call i32 @fclose(i32* %155)
  %157 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %157)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fatal(i32, i8*, ...) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @chat_send(i8*) #2

declare dso_local i32 @chat_expect(i8*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
