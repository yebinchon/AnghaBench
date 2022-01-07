; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_process.c_lputs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_process.c_lputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winsize = type { i32 }

@lputs.escapes = internal constant [8 x i8] c"\\\07\08\0C\0D\09\0B\00", align 1
@lputs.termwidth = internal global i32 -1, align 4
@outfile = common dso_local global i64 0, align 8
@stdout = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"COLUMNS\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@TIOCGWINSZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"\\\0A\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"\\%c\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"\\abfrtv\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@outfname = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @lputs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lputs(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.winsize, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %14 = load i64, i64* @outfile, align 8
  %15 = load i64, i64* @stdout, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 60, i32* @lputs.termwidth, align 4
  br label %18

18:                                               ; preds = %17, %2
  %19 = load i32, i32* @lputs.termwidth, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %47

21:                                               ; preds = %18
  %22 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %22, i8** %8, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i8*, i8** %8, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @atoi(i8* %30)
  store i32 %31, i32* @lputs.termwidth, align 4
  br label %46

32:                                               ; preds = %24, %21
  %33 = load i32, i32* @STDOUT_FILENO, align 4
  %34 = load i32, i32* @TIOCGWINSZ, align 4
  %35 = call i64 @ioctl(i32 %33, i32 %34, %struct.winsize* %9)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.winsize, %struct.winsize* %9, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.winsize, %struct.winsize* %9, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* @lputs.termwidth, align 4
  br label %45

44:                                               ; preds = %37, %32
  store i32 60, i32* @lputs.termwidth, align 4
  br label %45

45:                                               ; preds = %44, %41
  br label %46

46:                                               ; preds = %45, %29
  br label %47

47:                                               ; preds = %46, %18
  %48 = load i32, i32* @lputs.termwidth, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 1, i32* @lputs.termwidth, align 4
  br label %51

51:                                               ; preds = %50, %47
  %52 = call i32 @memset(i32* %13, i32 0, i32 4)
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %182, %51
  %54 = load i64, i64* %4, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %189

56:                                               ; preds = %53
  %57 = load i8*, i8** %3, align 8
  %58 = load i64, i64* %4, align 8
  %59 = call i64 @mbrtowc(i8* %12, i8* %57, i64 %58, i32* %13)
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %10, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i64 1, i64* %10, align 8
  br label %63

63:                                               ; preds = %62, %56
  %64 = load i64, i64* %10, align 8
  %65 = icmp eq i64 %64, -1
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i64, i64* %10, align 8
  %68 = icmp eq i64 %67, -2
  br i1 %68, label %69, label %73

69:                                               ; preds = %66, %63
  %70 = load i8*, i8** %3, align 8
  %71 = load i8, i8* %70, align 1
  store i8 %71, i8* %12, align 1
  store i64 1, i64* %10, align 8
  %72 = call i32 @memset(i32* %13, i32 0, i32 4)
  br label %73

73:                                               ; preds = %69, %66
  %74 = load i8, i8* %12, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 10
  br i1 %76, label %77, label %90

77:                                               ; preds = %73
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  %80 = load i32, i32* @lputs.termwidth, align 4
  %81 = icmp sge i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i64, i64* @outfile, align 8
  %84 = call i32 (i64, i8*, ...) @fprintf(i64 %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %77
  %86 = load i64, i64* @outfile, align 8
  %87 = call i32 @fputc(i8 signext 36, i64 %86)
  %88 = load i64, i64* @outfile, align 8
  %89 = call i32 @fputc(i8 signext 10, i64 %88)
  store i32 0, i32* %6, align 4
  br label %182

90:                                               ; preds = %73
  %91 = load i8, i8* %12, align 1
  %92 = call i64 @iswprint(i8 signext %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %113

94:                                               ; preds = %90
  %95 = load i8, i8* %12, align 1
  %96 = call i32 @wcwidth(i8 signext %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %97, %98
  %100 = load i32, i32* @lputs.termwidth, align 4
  %101 = icmp sge i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %94
  %103 = load i64, i64* @outfile, align 8
  %104 = call i32 (i64, i8*, ...) @fprintf(i64 %103, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %102, %94
  %106 = load i8*, i8** %3, align 8
  %107 = load i64, i64* %10, align 8
  %108 = load i64, i64* @outfile, align 8
  %109 = call i32 @fwrite(i8* %106, i32 1, i64 %107, i64 %108)
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %6, align 4
  br label %181

113:                                              ; preds = %90
  %114 = load i8, i8* %12, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %145

117:                                              ; preds = %113
  %118 = load i8, i8* %12, align 1
  %119 = call i32 @wctob(i8 signext %118)
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* @EOF, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %145

122:                                              ; preds = %117
  %123 = load i32, i32* %5, align 4
  %124 = call i8* @strchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lputs.escapes, i64 0, i64 0), i32 %123)
  store i8* %124, i8** %8, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %145

126:                                              ; preds = %122
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, 2
  %129 = load i32, i32* @lputs.termwidth, align 4
  %130 = icmp sge i32 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load i64, i64* @outfile, align 8
  %133 = call i32 (i64, i8*, ...) @fprintf(i64 %132, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %134

134:                                              ; preds = %131, %126
  %135 = load i64, i64* @outfile, align 8
  %136 = load i8*, i8** %8, align 8
  %137 = ptrtoint i8* %136 to i64
  %138 = sub i64 %137, ptrtoint ([8 x i8]* @lputs.escapes to i64)
  %139 = getelementptr inbounds [8 x i8], [8 x i8]* @.str.3, i64 0, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = call i32 (i64, i8*, ...) @fprintf(i64 %135, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* %6, align 4
  %144 = add nsw i32 %143, 2
  store i32 %144, i32* %6, align 4
  br label %180

145:                                              ; preds = %122, %117, %113
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = load i64, i64* %10, align 8
  %149 = mul i64 4, %148
  %150 = add i64 %147, %149
  %151 = load i32, i32* @lputs.termwidth, align 4
  %152 = zext i32 %151 to i64
  %153 = icmp uge i64 %150, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %145
  %155 = load i64, i64* @outfile, align 8
  %156 = call i32 (i64, i8*, ...) @fprintf(i64 %155, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %157

157:                                              ; preds = %154, %145
  store i64 0, i64* %11, align 8
  br label %158

158:                                              ; preds = %170, %157
  %159 = load i64, i64* %11, align 8
  %160 = load i64, i64* %10, align 8
  %161 = icmp ult i64 %159, %160
  br i1 %161, label %162, label %173

162:                                              ; preds = %158
  %163 = load i64, i64* @outfile, align 8
  %164 = load i8*, i8** %3, align 8
  %165 = load i64, i64* %11, align 8
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = call i32 (i64, i8*, ...) @fprintf(i64 %163, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %168)
  br label %170

170:                                              ; preds = %162
  %171 = load i64, i64* %11, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %11, align 8
  br label %158

173:                                              ; preds = %158
  %174 = load i64, i64* %10, align 8
  %175 = mul i64 4, %174
  %176 = load i32, i32* %6, align 4
  %177 = sext i32 %176 to i64
  %178 = add i64 %177, %175
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %6, align 4
  br label %180

180:                                              ; preds = %173, %134
  br label %181

181:                                              ; preds = %180, %105
  br label %182

182:                                              ; preds = %181, %85
  %183 = load i64, i64* %10, align 8
  %184 = load i8*, i8** %3, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 %183
  store i8* %185, i8** %3, align 8
  %186 = load i64, i64* %10, align 8
  %187 = load i64, i64* %4, align 8
  %188 = sub i64 %187, %186
  store i64 %188, i64* %4, align 8
  br label %53

189:                                              ; preds = %53
  %190 = load i32, i32* %6, align 4
  %191 = add nsw i32 %190, 1
  %192 = load i32, i32* @lputs.termwidth, align 4
  %193 = icmp sge i32 %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %189
  %195 = load i64, i64* @outfile, align 8
  %196 = call i32 (i64, i8*, ...) @fprintf(i64 %195, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %197

197:                                              ; preds = %194, %189
  %198 = load i64, i64* @outfile, align 8
  %199 = call i32 @fputc(i8 signext 36, i64 %198)
  %200 = load i64, i64* @outfile, align 8
  %201 = call i32 @fputc(i8 signext 10, i64 %200)
  %202 = load i64, i64* @outfile, align 8
  %203 = call i64 @ferror(i64 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %217

205:                                              ; preds = %197
  %206 = load i32, i32* @outfname, align 4
  %207 = load i64, i64* @errno, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %205
  %210 = load i64, i64* @errno, align 8
  br label %213

211:                                              ; preds = %205
  %212 = load i64, i64* @EIO, align 8
  br label %213

213:                                              ; preds = %211, %209
  %214 = phi i64 [ %210, %209 ], [ %212, %211 ]
  %215 = call i32 @strerror(i64 %214)
  %216 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %206, i32 %215)
  br label %217

217:                                              ; preds = %213, %197
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.winsize*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @mbrtowc(i8*, i8*, i64, i32*) #1

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i32 @fputc(i8 signext, i64) #1

declare dso_local i64 @iswprint(i8 signext) #1

declare dso_local i32 @wcwidth(i8 signext) #1

declare dso_local i32 @fwrite(i8*, i32, i64, i64) #1

declare dso_local i32 @wctob(i8 signext) #1

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i64 @ferror(i64) #1

declare dso_local i32 @errx(i32, i8*, i32, i32) #1

declare dso_local i32 @strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
