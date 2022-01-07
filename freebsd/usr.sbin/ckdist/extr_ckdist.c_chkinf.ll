; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ckdist/extr_ckdist.c_chkinf.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ckdist/extr_ckdist.c_chkinf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"Pieces =  %d%c\00", align 1
@E_BADINF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"cksum.%2s = %lu %jd%c\00", align 1
@stdin = common dso_local global i32* null, align 8
@E_NAME = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@E_ERRNO = common dso_local global i32 0, align 4
@E_LENGTH = common dso_local global i32 0, align 4
@opt_exist = common dso_local global i32 0, align 4
@E_CHKSUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@opt_ignore = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@opt_all = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @chkinf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chkinf(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [30 x i8], align 16
  %6 = alloca [3 x i8], align 1
  %7 = alloca %struct.stat, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %13, align 4
  store i32 -1, i32* %17, align 4
  br label %20

20:                                               ; preds = %180, %2
  %21 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %22 = load i32*, i32** %3, align 8
  %23 = call i64 @fgets(i8* %21, i32 30, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %183

25:                                               ; preds = %20
  store i32 -1, i32* %18, align 4
  store i8* null, i8** %8, align 8
  store i32 0, i32* %14, align 4
  %26 = load i32, i32* %17, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %42

28:                                               ; preds = %25
  %29 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %30 = call i32 (i8*, i8*, ...) @sscanf(i8* %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %16, i8* %19)
  store i32 %30, i32* %15, align 4
  %31 = icmp ne i32 %30, 2
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = load i8, i8* %19, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 10
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %16, align 4
  %38 = icmp slt i32 %37, 1
  br i1 %38, label %39, label %41

39:                                               ; preds = %36, %32, %28
  %40 = load i32, i32* @E_BADINF, align 4
  store i32 %40, i32* %14, align 4
  br label %41

41:                                               ; preds = %39, %36
  br label %136

42:                                               ; preds = %25
  %43 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %44 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %45 = call i32 (i8*, i8*, ...) @sscanf(i8* %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %44, i64* %10, i64* %11, i8* %19)
  store i32 %45, i32* %15, align 4
  %46 = icmp ne i32 %45, 4
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @feof(i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %77

51:                                               ; preds = %47
  %52 = load i32, i32* %15, align 4
  %53 = icmp ne i32 %52, 3
  br i1 %53, label %77, label %54

54:                                               ; preds = %51, %42
  %55 = load i32, i32* %15, align 4
  %56 = icmp eq i32 %55, 4
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i8, i8* %19, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 10
  br i1 %60, label %77, label %61

61:                                               ; preds = %57, %54
  %62 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = load i32, i32* %17, align 4
  %66 = sdiv i32 %65, 26
  %67 = add nsw i32 97, %66
  %68 = icmp ne i32 %64, %67
  br i1 %68, label %77, label %69

69:                                               ; preds = %61
  %70 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 1
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = load i32, i32* %17, align 4
  %74 = srem i32 %73, 26
  %75 = add nsw i32 97, %74
  %76 = icmp ne i32 %72, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %69, %61, %57, %51, %47
  %78 = load i32, i32* @E_BADINF, align 4
  store i32 %78, i32* %14, align 4
  br label %135

79:                                               ; preds = %69
  %80 = load i32*, i32** %3, align 8
  %81 = load i32*, i32** @stdin, align 8
  %82 = icmp eq i32* %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %86

84:                                               ; preds = %79
  %85 = load i8*, i8** %4, align 8
  br label %86

86:                                               ; preds = %84, %83
  %87 = phi i8* [ null, %83 ], [ %85, %84 ]
  %88 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %89 = call i8* @distname(i8* %87, i32* null, i8* %88)
  store i8* %89, i8** %8, align 8
  %90 = icmp eq i8* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* @E_NAME, align 4
  store i32 %92, i32* %14, align 4
  br label %134

93:                                               ; preds = %86
  %94 = load i8*, i8** %8, align 8
  %95 = load i32, i32* @O_RDONLY, align 4
  %96 = call i32 @open(i8* %94, i32 %95)
  store i32 %96, i32* %18, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i32, i32* @E_ERRNO, align 4
  store i32 %99, i32* %14, align 4
  br label %133

100:                                              ; preds = %93
  %101 = load i32, i32* %18, align 4
  %102 = call i64 @fstat(i32 %101, %struct.stat* %7)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i32, i32* @E_ERRNO, align 4
  store i32 %105, i32* %14, align 4
  br label %132

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %11, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i32, i32* @E_LENGTH, align 4
  store i32 %112, i32* %14, align 4
  br label %131

113:                                              ; preds = %106
  %114 = load i32, i32* @opt_exist, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %130, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %18, align 4
  %118 = call i64 @crc(i32 %117, i64* %12, i64* %9)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = load i32, i32* @E_ERRNO, align 4
  store i32 %121, i32* %14, align 4
  br label %129

122:                                              ; preds = %116
  %123 = load i64, i64* %12, align 8
  %124 = load i64, i64* %10, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = load i32, i32* @E_CHKSUM, align 4
  store i32 %127, i32* %14, align 4
  br label %128

128:                                              ; preds = %126, %122
  br label %129

129:                                              ; preds = %128, %120
  br label %130

130:                                              ; preds = %129, %113
  br label %131

131:                                              ; preds = %130, %111
  br label %132

132:                                              ; preds = %131, %104
  br label %133

133:                                              ; preds = %132, %98
  br label %134

134:                                              ; preds = %133, %91
  br label %135

135:                                              ; preds = %134, %77
  br label %136

136:                                              ; preds = %135, %41
  %137 = load i32, i32* %18, align 4
  %138 = icmp ne i32 %137, -1
  br i1 %138, label %139, label %146

139:                                              ; preds = %136
  %140 = load i32, i32* %18, align 4
  %141 = call i64 @close(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = load i8*, i8** %8, align 8
  %145 = call i32 @err(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %144)
  br label %146

146:                                              ; preds = %143, %139, %136
  %147 = load i64, i64* @opt_ignore, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %146
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* @E_ERRNO, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %149
  %154 = load i64, i64* @errno, align 8
  %155 = load i64, i64* @ENOENT, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  br label %180

158:                                              ; preds = %153, %149, %146
  %159 = load i32, i32* %14, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %158
  %162 = load i64, i64* @opt_all, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %174

164:                                              ; preds = %161
  %165 = load i32, i32* %17, align 4
  %166 = icmp sge i32 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %164, %158
  %168 = load i8*, i8** %4, align 8
  %169 = load i8*, i8** %8, align 8
  %170 = load i32, i32* %14, align 4
  %171 = call i32 @report(i8* %168, i8* %169, i32 %170)
  %172 = load i32, i32* %13, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %13, align 4
  br label %174

174:                                              ; preds = %167, %164, %161
  %175 = load i32, i32* %14, align 4
  %176 = call i64 @isfatal(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %174
  br label %183

179:                                              ; preds = %174
  br label %180

180:                                              ; preds = %179, %157
  %181 = load i32, i32* %17, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %17, align 4
  br label %20

183:                                              ; preds = %178, %20
  %184 = load i32, i32* %13, align 4
  ret i32 %184
}

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i8* @distname(i8*, i32*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @crc(i32, i64*, i64*) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @report(i8*, i8*, i32) #1

declare dso_local i64 @isfatal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
