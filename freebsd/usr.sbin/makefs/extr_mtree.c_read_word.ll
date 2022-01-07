; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_mtree.c_read_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_mtree.c_read_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtree_fileinfo = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unexpected end of file\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"quoted word straddles onto next line.\00", align 1
@mtree_fileinfo = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"word too long to fit buffer (max %zu characters)\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64)* @read_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_word(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mtree_fileinfo*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %178

20:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i64 0, i64* %9, align 8
  store i64 -1, i64* %10, align 8
  store i32 0, i32* %15, align 4
  br label %21

21:                                               ; preds = %166, %20
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @getc(i32* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  switch i32 %24, label %142 [
    i32 128, label %25
    i32 35, label %43
    i32 92, label %54
    i32 96, label %57
    i32 39, label %57
    i32 34, label %57
    i32 32, label %117
    i32 9, label %117
    i32 10, label %117
  ]

25:                                               ; preds = %21
  %26 = load i8*, i8** %6, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8 0, i8* %28, align 1
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @ferror(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @errno, align 4
  br label %35

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ -1, %34 ]
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = call i32 (i8*, ...) @mtree_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %35
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %4, align 4
  br label %178

43:                                               ; preds = %21
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %43
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @skip_to(i32* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %158

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %43
  br label %151

54:                                               ; preds = %21
  %55 = load i32, i32* %14, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %14, align 4
  br label %151

57:                                               ; preds = %21, %21, %21
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %151

61:                                               ; preds = %57
  %62 = load i32, i32* %15, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32, i32* %15, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %15, align 4
  %67 = load i64, i64* %9, align 8
  store i64 %67, i64* %10, align 8
  br label %116

68:                                               ; preds = %61
  %69 = load i32, i32* %11, align 4
  %70 = load i8*, i8** %6, align 8
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %69, %74
  br i1 %75, label %76, label %111

76:                                               ; preds = %68
  %77 = load i32, i32* %15, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %15, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %109

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %106, %81
  %83 = load i64, i64* %10, align 8
  %84 = add i64 %83, -1
  store i64 %84, i64* %10, align 8
  br label %85

85:                                               ; preds = %82
  %86 = load i8*, i8** %6, align 8
  %87 = load i64, i64* %10, align 8
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 96
  br i1 %91, label %92, label %106

92:                                               ; preds = %85
  %93 = load i8*, i8** %6, align 8
  %94 = load i64, i64* %10, align 8
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 39
  br i1 %98, label %99, label %106

99:                                               ; preds = %92
  %100 = load i8*, i8** %6, align 8
  %101 = load i64, i64* %10, align 8
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 34
  br label %106

106:                                              ; preds = %99, %92, %85
  %107 = phi i1 [ false, %92 ], [ false, %85 ], [ %105, %99 ]
  br i1 %107, label %82, label %108

108:                                              ; preds = %106
  br label %110

109:                                              ; preds = %76
  store i64 -1, i64* %10, align 8
  br label %110

110:                                              ; preds = %109, %108
  br label %115

111:                                              ; preds = %68
  %112 = load i32, i32* %15, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %15, align 4
  %114 = load i64, i64* %9, align 8
  store i64 %114, i64* %10, align 8
  br label %115

115:                                              ; preds = %111, %110
  br label %116

116:                                              ; preds = %115, %64
  br label %151

117:                                              ; preds = %21, %21, %21
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %127, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* %15, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load i32, i32* %11, align 4
  %125 = load i32*, i32** %5, align 8
  %126 = call i32 @ungetc(i32 %124, i32* %125)
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %151

127:                                              ; preds = %120, %117
  %128 = load i32, i32* %11, align 4
  %129 = icmp eq i32 %128, 10
  br i1 %129, label %130, label %141

130:                                              ; preds = %127
  %131 = load i32, i32* %15, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = call i32 @mtree_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %130
  %136 = call %struct.mtree_fileinfo* @SLIST_FIRST(i32* @mtree_fileinfo)
  store %struct.mtree_fileinfo* %136, %struct.mtree_fileinfo** %8, align 8
  %137 = load %struct.mtree_fileinfo*, %struct.mtree_fileinfo** %8, align 8
  %138 = getelementptr inbounds %struct.mtree_fileinfo, %struct.mtree_fileinfo* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %135, %127
  br label %151

142:                                              ; preds = %21
  %143 = load i32, i32* %14, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = load i8*, i8** %6, align 8
  %147 = load i64, i64* %9, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %9, align 8
  %149 = getelementptr inbounds i8, i8* %146, i64 %147
  store i8 92, i8* %149, align 1
  br label %150

150:                                              ; preds = %145, %142
  br label %151

151:                                              ; preds = %150, %141, %123, %116, %60, %54, %53
  %152 = load i32, i32* %11, align 4
  %153 = trunc i32 %152 to i8
  %154 = load i8*, i8** %6, align 8
  %155 = load i64, i64* %9, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %9, align 8
  %157 = getelementptr inbounds i8, i8* %154, i64 %155
  store i8 %153, i8* %157, align 1
  store i32 0, i32* %14, align 4
  br label %158

158:                                              ; preds = %151, %51
  %159 = load i64, i64* %9, align 8
  %160 = load i64, i64* %7, align 8
  %161 = icmp ult i64 %159, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %158
  %163 = load i32, i32* %12, align 4
  %164 = icmp ne i32 %163, 0
  %165 = xor i1 %164, true
  br label %166

166:                                              ; preds = %162, %158
  %167 = phi i1 [ false, %158 ], [ %165, %162 ]
  br i1 %167, label %21, label %168

168:                                              ; preds = %166
  %169 = load i64, i64* %9, align 8
  %170 = load i64, i64* %7, align 8
  %171 = icmp uge i64 %169, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %168
  %173 = load i64, i64* %7, align 8
  %174 = call i32 (i8*, ...) @mtree_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i64 %173)
  %175 = load i32*, i32** %5, align 8
  %176 = call i32 @skip_to(i32* %175, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %177

177:                                              ; preds = %172, %168
  store i32 0, i32* %4, align 4
  br label %178

178:                                              ; preds = %177, %41, %18
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @ferror(i32*) #1

declare dso_local i32 @mtree_error(i8*, ...) #1

declare dso_local i32 @skip_to(i32*, i8*) #1

declare dso_local i32 @ungetc(i32, i32*) #1

declare dso_local i32 @mtree_warning(i8*) #1

declare dso_local %struct.mtree_fileinfo* @SLIST_FIRST(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
