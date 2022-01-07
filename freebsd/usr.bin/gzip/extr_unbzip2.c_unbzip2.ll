; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_unbzip2.c_unbzip2.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_unbzip2.c_unbzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8*, i8*, i64, i32*, i32*, i32* }

@unbzip2.inbuf = internal global i8* null, align 8
@unbzip2.outbuf = internal global i8* null, align 8
@BUFLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"bzip2 init\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"truncated file\00", align 1
@tflag = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"bzip2 re-init\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"bzip2 data integrity error\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"bzip2 magic number error\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"bzip2 out of memory\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"unknown bzip2 error: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i8*, i64, i64*)* @unbzip2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @unbzip2(i32 %0, i32 %1, i8* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_5__, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 0, i32* %14, align 4
  store i64 0, i64* %15, align 8
  %19 = load i8*, i8** @unbzip2.inbuf, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i64, i64* @BUFLEN, align 8
  %23 = call i8* @malloc(i64 %22)
  store i8* %23, i8** @unbzip2.inbuf, align 8
  br label %24

24:                                               ; preds = %21, %5
  %25 = load i8*, i8** @unbzip2.outbuf, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i64, i64* @BUFLEN, align 8
  %29 = call i8* @malloc(i64 %28)
  store i8* %29, i8** @unbzip2.outbuf, align 8
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i8*, i8** @unbzip2.inbuf, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i8*, i8** @unbzip2.outbuf, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33, %30
  %37 = call i32 @maybe_err(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %33
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 6
  store i32* null, i32** %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 5
  store i32* null, i32** %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 4
  store i32* null, i32** %41, align 8
  store i32 0, i32* %13, align 4
  %42 = call i32 @BZ2_bzDecompressInit(%struct.TYPE_5__* %16, i32 0, i32 0)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 129
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = call i32 @maybe_errx(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %38
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  store i8* %50, i8** %51, align 8
  %52 = load i64*, i64** %11, align 8
  %53 = icmp ne i64* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i64, i64* %10, align 8
  %56 = load i64*, i64** %11, align 8
  store i64 %55, i64* %56, align 8
  br label %57

57:                                               ; preds = %54, %47
  br label %58

58:                                               ; preds = %166, %57
  %59 = load i32, i32* %12, align 4
  %60 = icmp eq i32 %59, 129
  br i1 %60, label %61, label %167

61:                                               ; preds = %58
  %62 = call i32 (...) @check_siginfo()
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %97

66:                                               ; preds = %61
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %97, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %7, align 4
  %71 = load i8*, i8** @unbzip2.inbuf, align 8
  %72 = load i64, i64* @BUFLEN, align 8
  %73 = call i64 @read(i32 %70, i8* %71, i64 %72)
  store i64 %73, i64* %17, align 8
  %74 = load i64, i64* %17, align 8
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = call i32 @maybe_err(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %69
  %79 = load i64, i64* %17, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 1, i32* %13, align 4
  br label %82

82:                                               ; preds = %81, %78
  %83 = load i64, i64* %17, align 8
  %84 = call i32 @infile_newdata(i64 %83)
  %85 = load i8*, i8** @unbzip2.inbuf, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  store i8* %85, i8** %86, align 8
  %87 = load i64, i64* %17, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i64 %87, i64* %88, align 8
  %89 = load i64*, i64** %11, align 8
  %90 = icmp ne i64* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %82
  %92 = load i64, i64* %17, align 8
  %93 = load i64*, i64** %11, align 8
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, %92
  store i64 %95, i64* %93, align 8
  br label %96

96:                                               ; preds = %91, %82
  br label %97

97:                                               ; preds = %96, %66, %61
  %98 = load i8*, i8** @unbzip2.outbuf, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  store i8* %98, i8** %99, align 8
  %100 = load i64, i64* @BUFLEN, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 3
  store i64 %100, i64* %101, align 8
  %102 = call i32 @BZ2_bzDecompress(%struct.TYPE_5__* %16)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  switch i32 %103, label %163 [
    i32 128, label %104
    i32 129, label %104
    i32 132, label %157
    i32 131, label %159
    i32 130, label %161
  ]

104:                                              ; preds = %97, %97
  %105 = load i32, i32* %12, align 4
  %106 = icmp eq i32 %105, 129
  br i1 %106, label %107, label %117

107:                                              ; preds = %104
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load i32, i32* %14, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store i32 128, i32* %12, align 4
  br label %116

114:                                              ; preds = %110
  %115 = call i32 @maybe_errx(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %113
  br label %117

117:                                              ; preds = %116, %107, %104
  store i32 0, i32* %14, align 4
  %118 = load i32, i32* @tflag, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %141, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @BUFLEN, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %141

125:                                              ; preds = %120
  %126 = load i32, i32* %8, align 4
  %127 = load i8*, i8** @unbzip2.outbuf, align 8
  %128 = load i64, i64* @BUFLEN, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = sub nsw i64 %128, %130
  %132 = call i64 @write(i32 %126, i8* %127, i64 %131)
  store i64 %132, i64* %18, align 8
  %133 = load i64, i64* %18, align 8
  %134 = icmp slt i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %125
  %136 = call i32 @maybe_err(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %125
  %138 = load i64, i64* %18, align 8
  %139 = load i64, i64* %15, align 8
  %140 = add nsw i64 %139, %138
  store i64 %140, i64* %15, align 8
  br label %141

141:                                              ; preds = %137, %120, %117
  %142 = load i32, i32* %12, align 4
  %143 = icmp eq i32 %142, 128
  br i1 %143, label %144, label %156

144:                                              ; preds = %141
  %145 = load i32, i32* %13, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %156, label %147

147:                                              ; preds = %144
  %148 = call i32 @BZ2_bzDecompressEnd(%struct.TYPE_5__* %16)
  %149 = icmp ne i32 %148, 129
  br i1 %149, label %153, label %150

150:                                              ; preds = %147
  %151 = call i32 @BZ2_bzDecompressInit(%struct.TYPE_5__* %16, i32 0, i32 0)
  %152 = icmp ne i32 %151, 129
  br i1 %152, label %153, label %155

153:                                              ; preds = %150, %147
  %154 = call i32 @maybe_errx(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %155

155:                                              ; preds = %153, %150
  store i32 1, i32* %14, align 4
  store i32 129, i32* %12, align 4
  br label %156

156:                                              ; preds = %155, %144, %141
  br label %166

157:                                              ; preds = %97
  %158 = call i32 (i8*, ...) @maybe_warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %166

159:                                              ; preds = %97
  %160 = call i32 (i8*, ...) @maybe_warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %166

161:                                              ; preds = %97
  %162 = call i32 (i8*, ...) @maybe_warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %166

163:                                              ; preds = %97
  %164 = load i32, i32* %12, align 4
  %165 = call i32 (i8*, ...) @maybe_warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %164)
  br label %166

166:                                              ; preds = %163, %161, %159, %157, %156
  br label %58

167:                                              ; preds = %58
  %168 = load i32, i32* %12, align 4
  %169 = icmp ne i32 %168, 128
  br i1 %169, label %173, label %170

170:                                              ; preds = %167
  %171 = call i32 @BZ2_bzDecompressEnd(%struct.TYPE_5__* %16)
  %172 = icmp ne i32 %171, 129
  br i1 %172, label %173, label %174

173:                                              ; preds = %170, %167
  store i64 -1, i64* %6, align 8
  br label %176

174:                                              ; preds = %170
  %175 = load i64, i64* %15, align 8
  store i64 %175, i64* %6, align 8
  br label %176

176:                                              ; preds = %174, %173
  %177 = load i64, i64* %6, align 8
  ret i64 %177
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @maybe_err(i8*) #1

declare dso_local i32 @BZ2_bzDecompressInit(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @maybe_errx(i8*) #1

declare dso_local i32 @check_siginfo(...) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i32 @infile_newdata(i64) #1

declare dso_local i32 @BZ2_bzDecompress(%struct.TYPE_5__*) #1

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i32 @BZ2_bzDecompressEnd(%struct.TYPE_5__*) #1

declare dso_local i32 @maybe_warnx(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
