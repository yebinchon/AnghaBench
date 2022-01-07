; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/cmp/extr_special.c_c_special.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/cmp/extr_special.c_c_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CAPH_READ = common dso_local global i32 0, align 4
@ERR_EXIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"caph_limit_stream(%s)\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"unable to enter capability mode\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EOF = common dso_local global i32 0, align 4
@xflag = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"%08llx %02x %02x\0A\00", align 1
@lflag = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"%6lld %3o %3o\0A\00", align 1
@DIFF_EXIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_special(i32 %0, i8* %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @CAPH_READ, align 4
  %22 = call i64 @caph_limit_stream(i32 %20, i32 %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %6
  %25 = load i32, i32* @ERR_EXIT, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 (i32, i8*, ...) @err(i32 %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %24, %6
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @CAPH_READ, align 4
  %31 = call i64 @caph_limit_stream(i32 %29, i32 %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* @ERR_EXIT, align 4
  %35 = load i8*, i8** %11, align 8
  %36 = call i32 (i32, i8*, ...) @err(i32 %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %33, %28
  %38 = call i64 (...) @caph_enter()
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* @ERR_EXIT, align 4
  %42 = call i32 (i32, i8*, ...) @err(i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %7, align 4
  %45 = call i32* @fdopen(i32 %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %45, i32** %17, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* @ERR_EXIT, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 (i32, i8*, ...) @err(i32 %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %47, %43
  %52 = load i32, i32* %10, align 4
  %53 = call i32* @fdopen(i32 %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %53, i32** %18, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* @ERR_EXIT, align 4
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 (i32, i8*, ...) @err(i32 %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %55, %51
  store i32 0, i32* %19, align 4
  br label %60

60:                                               ; preds = %70, %59
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %9, align 4
  %63 = icmp ne i32 %61, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load i32*, i32** %17, align 8
  %66 = call i32 @getc(i32* %65)
  %67 = load i32, i32* @EOF, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %139

70:                                               ; preds = %64
  br label %60

71:                                               ; preds = %60
  br label %72

72:                                               ; preds = %82, %71
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %12, align 4
  %75 = icmp ne i32 %73, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = load i32*, i32** %18, align 8
  %78 = call i32 @getc(i32* %77)
  %79 = load i32, i32* @EOF, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %139

82:                                               ; preds = %76
  br label %72

83:                                               ; preds = %72
  store i32 1, i32* %16, align 4
  store i32 1, i32* %15, align 4
  br label %84

84:                                               ; preds = %135, %83
  %85 = load i32*, i32** %17, align 8
  %86 = call i32 @getc(i32* %85)
  store i32 %86, i32* %13, align 4
  %87 = load i32*, i32** %18, align 8
  %88 = call i32 @getc(i32* %87)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* @EOF, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %96, label %92

92:                                               ; preds = %84
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* @EOF, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92, %84
  br label %138

97:                                               ; preds = %92
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %14, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %128

101:                                              ; preds = %97
  %102 = load i64, i64* @xflag, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %101
  store i32 1, i32* %19, align 4
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = sub nsw i64 %106, 1
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %14, align 4
  %110 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i64 %107, i32 %108, i32 %109)
  br label %127

111:                                              ; preds = %101
  %112 = load i64, i64* @lflag, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  store i32 1, i32* %19, align 4
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %14, align 4
  %119 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i64 %116, i32 %117, i32 %118)
  br label %126

120:                                              ; preds = %111
  %121 = load i8*, i8** %8, align 8
  %122 = load i8*, i8** %11, align 8
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* %16, align 4
  %125 = call i32 @diffmsg(i8* %121, i8* %122, i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %120, %114
  br label %127

127:                                              ; preds = %126, %104
  br label %128

128:                                              ; preds = %127, %97
  %129 = load i32, i32* %13, align 4
  %130 = icmp eq i32 %129, 10
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i32, i32* %16, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %16, align 4
  br label %134

134:                                              ; preds = %131, %128
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %15, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %15, align 4
  br label %84

138:                                              ; preds = %96
  br label %139

139:                                              ; preds = %138, %81, %69
  %140 = load i32*, i32** %17, align 8
  %141 = call i64 @ferror(i32* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = load i32, i32* @ERR_EXIT, align 4
  %145 = load i8*, i8** %8, align 8
  %146 = call i32 (i32, i8*, ...) @err(i32 %144, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %145)
  br label %147

147:                                              ; preds = %143, %139
  %148 = load i32*, i32** %18, align 8
  %149 = call i64 @ferror(i32* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %147
  %152 = load i32, i32* @ERR_EXIT, align 4
  %153 = load i8*, i8** %11, align 8
  %154 = call i32 (i32, i8*, ...) @err(i32 %152, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %153)
  br label %155

155:                                              ; preds = %151, %147
  %156 = load i32*, i32** %17, align 8
  %157 = call i64 @feof(i32* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %155
  %160 = load i32*, i32** %18, align 8
  %161 = call i64 @feof(i32* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %159
  %164 = load i8*, i8** %8, align 8
  %165 = call i32 @eofmsg(i8* %164)
  br label %166

166:                                              ; preds = %163, %159
  br label %175

167:                                              ; preds = %155
  %168 = load i32*, i32** %18, align 8
  %169 = call i64 @feof(i32* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %167
  %172 = load i8*, i8** %11, align 8
  %173 = call i32 @eofmsg(i8* %172)
  br label %174

174:                                              ; preds = %171, %167
  br label %175

175:                                              ; preds = %174, %166
  %176 = load i32*, i32** %18, align 8
  %177 = call i32 @fclose(i32* %176)
  %178 = load i32*, i32** %17, align 8
  %179 = call i32 @fclose(i32* %178)
  %180 = load i32, i32* %19, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %175
  %183 = load i32, i32* @DIFF_EXIT, align 4
  %184 = call i32 @exit(i32 %183) #3
  unreachable

185:                                              ; preds = %175
  ret void
}

declare dso_local i64 @caph_limit_stream(i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i64 @caph_enter(...) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @printf(i8*, i64, i32, i32) #1

declare dso_local i32 @diffmsg(i8*, i8*, i32, i32) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i64 @feof(i32*) #1

declare dso_local i32 @eofmsg(i8*) #1

declare dso_local i32 @fclose(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
