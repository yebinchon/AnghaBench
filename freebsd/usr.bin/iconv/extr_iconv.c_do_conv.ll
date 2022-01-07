; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/iconv/extr_iconv.c_do_conv.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/iconv/extr_iconv.c_do_conv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INBUFSIZE = common dso_local global i32 0, align 4
@OUTBUFSIZE = common dso_local global i32 0, align 4
@ICONV_SET_DISCARD_ILSEQ = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"iconvctl(DISCARD_ILSEQ, %d)\00", align 1
@stdout = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"iconv()\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"unexpected end of file; the last character is incomplete.\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"fread()\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"warning: invalid characters: %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @do_conv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_conv(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %20 = load i32, i32* @INBUFSIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %9, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  %24 = load i32, i32* @OUTBUFSIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %18, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @ICONV_SET_DISCARD_ILSEQ, align 4
  %30 = bitcast i32* %18 to i8*
  %31 = call i32 @iconvctl(i32 %28, i32 %29, i8* %30)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %37

33:                                               ; preds = %4
  %34 = load i32, i32* @EXIT_FAILURE, align 4
  %35 = load i32, i32* %18, align 4
  %36 = call i32 (i32, i8*, ...) @err(i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %33, %4
  store i64 0, i64* %14, align 8
  br label %38

38:                                               ; preds = %117, %37
  %39 = load i32, i32* @INBUFSIZE, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = call i64 @fread(i8* %23, i32 1, i32 %39, i32* %40)
  store i64 %41, i64* %15, align 8
  %42 = icmp ugt i64 %41, 0
  br i1 %42, label %43, label %118

43:                                               ; preds = %38
  store i8* %23, i8** %12, align 8
  br label %44

44:                                               ; preds = %116, %43
  %45 = load i64, i64* %15, align 8
  %46 = icmp ugt i64 %45, 0
  br i1 %46, label %47, label %117

47:                                               ; preds = %44
  store i8* %26, i8** %13, align 8
  %48 = load i32, i32* @OUTBUFSIZE, align 4
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %16, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i64 @__iconv(i32 %50, i8** %12, i64* %15, i8** %13, i64* %16, i32 0, i64* %19)
  store i64 %51, i64* %17, align 8
  %52 = load i64, i64* %19, align 8
  %53 = load i64, i64* %14, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %14, align 8
  %55 = load i64, i64* %16, align 8
  %56 = load i32, i32* @OUTBUFSIZE, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp ult i64 %55, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %47
  %60 = load i32, i32* @OUTBUFSIZE, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %16, align 8
  %63 = sub i64 %61, %62
  %64 = trunc i64 %63 to i32
  %65 = load i32, i32* @stdout, align 4
  %66 = call i32 @fwrite(i8* %26, i32 1, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %59, %47
  %68 = load i64, i64* %17, align 8
  %69 = icmp eq i64 %68, -1
  br i1 %69, label %70, label %116

70:                                               ; preds = %67
  %71 = load i64, i64* @errno, align 8
  %72 = load i64, i64* @E2BIG, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %116

74:                                               ; preds = %70
  %75 = load i64, i64* @errno, align 8
  %76 = load i64, i64* @EINVAL, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = load i8*, i8** %12, align 8
  %80 = icmp eq i8* %79, %23
  br i1 %80, label %81, label %84

81:                                               ; preds = %78, %74
  %82 = load i32, i32* @EXIT_FAILURE, align 4
  %83 = call i32 (i32, i8*, ...) @err(i32 %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i8*, i8** %12, align 8
  %86 = load i64, i64* %15, align 8
  %87 = call i32 @memmove(i8* %23, i8* %85, i64 %86)
  %88 = load i64, i64* %15, align 8
  %89 = getelementptr inbounds i8, i8* %23, i64 %88
  %90 = load i32, i32* @INBUFSIZE, align 4
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* %15, align 8
  %93 = sub i64 %91, %92
  %94 = trunc i64 %93 to i32
  %95 = load i32*, i32** %5, align 8
  %96 = call i64 @fread(i8* %89, i32 1, i32 %94, i32* %95)
  store i64 %96, i64* %17, align 8
  %97 = load i64, i64* %17, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %84
  %100 = load i32, i32* @stdout, align 4
  %101 = call i32 @fflush(i32 %100)
  %102 = load i32*, i32** %5, align 8
  %103 = call i64 @feof(i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i32, i32* @EXIT_FAILURE, align 4
  %107 = call i32 @errx(i32 %106, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  br label %111

108:                                              ; preds = %99
  %109 = load i32, i32* @EXIT_FAILURE, align 4
  %110 = call i32 (i32, i8*, ...) @err(i32 %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %105
  br label %112

112:                                              ; preds = %111, %84
  store i8* %23, i8** %12, align 8
  %113 = load i64, i64* %17, align 8
  %114 = load i64, i64* %15, align 8
  %115 = add i64 %114, %113
  store i64 %115, i64* %15, align 8
  br label %116

116:                                              ; preds = %112, %70, %67
  br label %44

117:                                              ; preds = %44
  br label %38

118:                                              ; preds = %38
  %119 = load i32, i32* @OUTBUFSIZE, align 4
  %120 = sext i32 %119 to i64
  store i64 %120, i64* %16, align 8
  store i8* %26, i8** %13, align 8
  %121 = load i32, i32* %6, align 4
  %122 = call i64 @iconv(i32 %121, i32* null, i32* null, i8** %13, i64* %16)
  store i64 %122, i64* %17, align 8
  %123 = load i64, i64* %17, align 8
  %124 = icmp eq i64 %123, -1
  br i1 %124, label %125, label %128

125:                                              ; preds = %118
  %126 = load i32, i32* @EXIT_FAILURE, align 4
  %127 = call i32 (i32, i8*, ...) @err(i32 %126, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %128

128:                                              ; preds = %125, %118
  %129 = load i64, i64* %16, align 8
  %130 = load i32, i32* @OUTBUFSIZE, align 4
  %131 = sext i32 %130 to i64
  %132 = icmp ult i64 %129, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %128
  %134 = load i32, i32* @OUTBUFSIZE, align 4
  %135 = sext i32 %134 to i64
  %136 = load i64, i64* %16, align 8
  %137 = sub i64 %135, %136
  %138 = trunc i64 %137 to i32
  %139 = load i32, i32* @stdout, align 4
  %140 = call i32 @fwrite(i8* %26, i32 1, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %133, %128
  %142 = load i64, i64* %14, align 8
  %143 = icmp ugt i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %141
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %144
  %148 = load i64, i64* %14, align 8
  %149 = call i32 @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i64 %148)
  br label %150

150:                                              ; preds = %147, %144, %141
  %151 = load i64, i64* %14, align 8
  %152 = icmp ugt i64 %151, 0
  %153 = zext i1 %152 to i32
  %154 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %154)
  ret i32 %153
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @iconvctl(i32, i32, i8*) #2

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i64 @fread(i8*, i32, i32, i32*) #2

declare dso_local i64 @__iconv(i32, i8**, i64*, i8**, i64*, i32, i64*) #2

declare dso_local i32 @fwrite(i8*, i32, i32, i32) #2

declare dso_local i32 @memmove(i8*, i8*, i64) #2

declare dso_local i32 @fflush(i32) #2

declare dso_local i64 @feof(i32*) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i64 @iconv(i32, i32*, i32*, i8**, i64*) #2

declare dso_local i32 @warnx(i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
