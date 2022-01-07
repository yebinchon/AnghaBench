; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/caesar/extr_caesar.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/caesar/extr_caesar.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LINELENGTH = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"caesar: out of memory.\0A\00", align 1
@stdf = common dso_local global i32* null, align 8
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"caesar: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [26 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @printit(i8* %20)
  br label %22

22:                                               ; preds = %17, %2
  %23 = load i32, i32* @LINELENGTH, align 4
  %24 = sext i32 %23 to i64
  %25 = call i8* @malloc(i64 %24)
  store i8* %25, i8** %11, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 @exit(i32 1) #3
  unreachable

31:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %49, %31
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 26
  br i1 %34, label %35, label %52

35:                                               ; preds = %32
  %36 = load i32*, i32** @stdf, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = sitofp i32 %40 to double
  %42 = call i32 @log(double %41)
  %43 = call i32 @log(double 2.600000e-01)
  %44 = add nsw i32 %42, %43
  %45 = load i32*, i32** @stdf, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %44, i32* %48, align 4
  br label %49

49:                                               ; preds = %35
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %32

52:                                               ; preds = %32
  %53 = getelementptr inbounds [26 x i32], [26 x i32]* %12, i64 0, i64 0
  %54 = call i32 @bzero(i32* %53, i32 104)
  %55 = load i32, i32* @STDIN_FILENO, align 4
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* @LINELENGTH, align 4
  %58 = sext i32 %57 to i64
  %59 = call i32 @read(i32 %55, i8* %56, i64 %58)
  store i32 %59, i32* %9, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %52
  %62 = load i32, i32* @stderr, align 4
  %63 = load i32, i32* @errno, align 4
  %64 = call i8* @strerror(i32 %63)
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  %66 = call i32 @exit(i32 1) #3
  unreachable

67:                                               ; preds = %52
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %107, %67
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %8, align 4
  %72 = icmp ne i32 %70, 0
  br i1 %72, label %73, label %108

73:                                               ; preds = %69
  %74 = load i8*, i8** %11, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i64 @isascii(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %107

83:                                               ; preds = %73
  %84 = load i32, i32* %6, align 4
  %85 = call i64 @islower(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = load i32, i32* %6, align 4
  %89 = sub nsw i32 %88, 97
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [26 x i32], [26 x i32]* %12, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  br label %106

94:                                               ; preds = %83
  %95 = load i32, i32* %6, align 4
  %96 = call i64 @isupper(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %94
  %99 = load i32, i32* %6, align 4
  %100 = sub nsw i32 %99, 65
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [26 x i32], [26 x i32]* %12, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %98, %94
  br label %106

106:                                              ; preds = %105, %87
  br label %107

107:                                              ; preds = %106, %73
  br label %69

108:                                              ; preds = %69
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %109

109:                                              ; preds = %148, %108
  %110 = load i32, i32* %13, align 4
  %111 = icmp slt i32 %110, 26
  br i1 %111, label %112, label %151

112:                                              ; preds = %109
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %113

113:                                              ; preds = %132, %112
  %114 = load i32, i32* %8, align 4
  %115 = icmp slt i32 %114, 26
  br i1 %115, label %116, label %135

116:                                              ; preds = %113
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [26 x i32], [26 x i32]* %12, i64 0, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** @stdf, align 8
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %122, %123
  %125 = srem i32 %124, 26
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %121, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 %120, %128
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %7, align 4
  br label %132

132:                                              ; preds = %116
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %8, align 4
  br label %113

135:                                              ; preds = %113
  %136 = load i32, i32* %13, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = load i32, i32* %7, align 4
  store i32 %139, i32* %10, align 4
  br label %140

140:                                              ; preds = %138, %135
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* %10, align 4
  %143 = icmp sgt i32 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = load i32, i32* %13, align 4
  store i32 %145, i32* %14, align 4
  %146 = load i32, i32* %7, align 4
  store i32 %146, i32* %10, align 4
  br label %147

147:                                              ; preds = %144, %140
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %13, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %13, align 4
  br label %109

151:                                              ; preds = %109
  br label %152

152:                                              ; preds = %189, %151
  store i32 0, i32* %8, align 4
  br label %153

153:                                              ; preds = %168, %152
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %171

157:                                              ; preds = %153
  %158 = load i8*, i8** %11, align 8
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  store i32 %163, i32* %6, align 4
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* %14, align 4
  %166 = call i32 @ROTATE(i32 %164, i32 %165)
  %167 = call i32 @putchar(i32 %166)
  br label %168

168:                                              ; preds = %157
  %169 = load i32, i32* %8, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %8, align 4
  br label %153

171:                                              ; preds = %153
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* @LINELENGTH, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  br label %190

176:                                              ; preds = %171
  %177 = load i32, i32* @STDIN_FILENO, align 4
  %178 = load i8*, i8** %11, align 8
  %179 = load i32, i32* @LINELENGTH, align 4
  %180 = sext i32 %179 to i64
  %181 = call i32 @read(i32 %177, i8* %178, i64 %180)
  store i32 %181, i32* %9, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %176
  %184 = load i32, i32* @stderr, align 4
  %185 = load i32, i32* @errno, align 4
  %186 = call i8* @strerror(i32 %185)
  %187 = call i32 (i32, i8*, ...) @fprintf(i32 %184, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %186)
  %188 = call i32 @exit(i32 1) #3
  unreachable

189:                                              ; preds = %176
  br label %152

190:                                              ; preds = %175
  %191 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @printit(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @log(double) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @read(i32, i8*, i64) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @isascii(i32) #1

declare dso_local i64 @islower(i32) #1

declare dso_local i64 @isupper(i32) #1

declare dso_local i32 @putchar(i32) #1

declare dso_local i32 @ROTATE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
