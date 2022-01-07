; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/expand/extr_expand.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/expand/extr_expand.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_CTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"t:\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@WEOF = common dso_local global i32 0, align 4
@nstops = common dso_local global i32 0, align 4
@tabstops = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* @LC_CTYPE, align 4
  %14 = call i32 @setlocale(i32 %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %36, %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 45
  br i1 %25, label %26, label %34

26:                                               ; preds = %18
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = call i64 @isdigit(i8 zeroext %31)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %26, %18, %15
  %35 = phi i1 [ false, %18 ], [ false, %15 ], [ %33, %26 ]
  br i1 %35, label %36, label %46

36:                                               ; preds = %34
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = call i32 @getstops(i8* %40)
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %4, align 4
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i32 1
  store i8** %45, i8*** %5, align 8
  br label %15

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %60, %46
  %48 = load i32, i32* %4, align 4
  %49 = load i8**, i8*** %5, align 8
  %50 = call i32 @getopt(i32 %48, i8** %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %50, i32* %8, align 4
  %51 = icmp ne i32 %50, -1
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load i32, i32* %8, align 4
  switch i32 %53, label %58 [
    i32 116, label %54
    i32 63, label %57
  ]

54:                                               ; preds = %52
  %55 = load i8*, i8** @optarg, align 8
  %56 = call i32 @getstops(i8* %55)
  br label %60

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %52, %57
  %59 = call i32 (...) @usage()
  br label %60

60:                                               ; preds = %58, %54
  br label %47

61:                                               ; preds = %47
  %62 = load i64, i64* @optind, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = sub nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %4, align 4
  %67 = load i64, i64* @optind, align 8
  %68 = load i8**, i8*** %5, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 %67
  store i8** %69, i8*** %5, align 8
  store i32 0, i32* %11, align 4
  br label %70

70:                                               ; preds = %209, %61
  %71 = load i32, i32* %4, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %97

73:                                               ; preds = %70
  %74 = load i8**, i8*** %5, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i32, i32* @stdin, align 4
  %78 = call i32* @freopen(i8* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %89

80:                                               ; preds = %73
  %81 = load i8**, i8*** %5, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %83)
  store i32 1, i32* %11, align 4
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %4, align 4
  %87 = load i8**, i8*** %5, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i32 1
  store i8** %88, i8*** %5, align 8
  br label %209

89:                                               ; preds = %73
  %90 = load i8**, i8*** %5, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 0
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %6, align 8
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %4, align 4
  %95 = load i8**, i8*** %5, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i32 1
  store i8** %96, i8*** %5, align 8
  br label %98

97:                                               ; preds = %70
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %98

98:                                               ; preds = %97, %89
  store i32 0, i32* %9, align 4
  br label %99

99:                                               ; preds = %198, %197, %185, %178, %161, %138, %117, %98
  %100 = call i32 (...) @getwchar()
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* @WEOF, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %201

103:                                              ; preds = %99
  %104 = load i32, i32* %7, align 4
  switch i32 %104, label %187 [
    i32 9, label %105
    i32 8, label %179
    i32 10, label %198
  ]

105:                                              ; preds = %103
  %106 = load i32, i32* @nstops, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %105
  br label %109

109:                                              ; preds = %113, %108
  %110 = call i32 @putwchar(i32 32)
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %9, align 4
  %115 = and i32 %114, 7
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %109, label %117

117:                                              ; preds = %113
  br label %99

118:                                              ; preds = %105
  %119 = load i32, i32* @nstops, align 4
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %121, label %139

121:                                              ; preds = %118
  br label %122

122:                                              ; preds = %126, %121
  %123 = call i32 @putwchar(i32 32)
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %9, align 4
  br label %126

126:                                              ; preds = %122
  %127 = load i32, i32* %9, align 4
  %128 = sub nsw i32 %127, 1
  %129 = load i32*, i32** @tabstops, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = srem i32 %128, %131
  %133 = load i32*, i32** @tabstops, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = sub nsw i32 %135, 1
  %137 = icmp ne i32 %132, %136
  br i1 %137, label %122, label %138

138:                                              ; preds = %126
  br label %99

139:                                              ; preds = %118
  store i32 0, i32* %10, align 4
  br label %140

140:                                              ; preds = %154, %139
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* @nstops, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %157

144:                                              ; preds = %140
  %145 = load i32*, i32** @tabstops, align 8
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %9, align 4
  %151 = icmp sgt i32 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %144
  br label %157

153:                                              ; preds = %144
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %10, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %10, align 4
  br label %140

157:                                              ; preds = %152, %140
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* @nstops, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %157
  %162 = call i32 @putwchar(i32 32)
  %163 = load i32, i32* %9, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %9, align 4
  br label %99

165:                                              ; preds = %157
  br label %166

166:                                              ; preds = %174, %165
  %167 = load i32, i32* %9, align 4
  %168 = load i32*, i32** @tabstops, align 8
  %169 = load i32, i32* %10, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = icmp slt i32 %167, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %166
  %175 = call i32 @putwchar(i32 32)
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %9, align 4
  br label %166

178:                                              ; preds = %166
  br label %99

179:                                              ; preds = %103
  %180 = load i32, i32* %9, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load i32, i32* %9, align 4
  %184 = add nsw i32 %183, -1
  store i32 %184, i32* %9, align 4
  br label %185

185:                                              ; preds = %182, %179
  %186 = call i32 @putwchar(i32 8)
  br label %99

187:                                              ; preds = %103
  %188 = load i32, i32* %7, align 4
  %189 = call i32 @putwchar(i32 %188)
  %190 = load i32, i32* %7, align 4
  %191 = call i32 @wcwidth(i32 %190)
  store i32 %191, i32* %12, align 4
  %192 = icmp sgt i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %187
  %194 = load i32, i32* %12, align 4
  %195 = load i32, i32* %9, align 4
  %196 = add nsw i32 %195, %194
  store i32 %196, i32* %9, align 4
  br label %197

197:                                              ; preds = %193, %187
  br label %99

198:                                              ; preds = %103
  %199 = load i32, i32* %7, align 4
  %200 = call i32 @putwchar(i32 %199)
  store i32 0, i32* %9, align 4
  br label %99

201:                                              ; preds = %99
  %202 = load i32, i32* @stdin, align 4
  %203 = call i64 @ferror(i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %201
  %206 = load i8*, i8** %6, align 8
  %207 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %206)
  store i32 1, i32* %11, align 4
  br label %208

208:                                              ; preds = %205, %201
  br label %209

209:                                              ; preds = %208, %80
  %210 = load i32, i32* %4, align 4
  %211 = icmp sgt i32 %210, 0
  br i1 %211, label %70, label %212

212:                                              ; preds = %209
  %213 = load i32, i32* %11, align 4
  %214 = call i32 @exit(i32 %213) #3
  unreachable
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i32 @getstops(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32* @freopen(i8*, i8*, i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @getwchar(...) #1

declare dso_local i32 @putwchar(i32) #1

declare dso_local i32 @wcwidth(i32) #1

declare dso_local i64 @ferror(i32) #1

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
