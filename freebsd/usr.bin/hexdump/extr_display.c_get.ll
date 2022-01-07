; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/hexdump/extr_display.c_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/hexdump/extr_display.c_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get.ateof = internal global i32 1, align 4
@get.curp = internal global i32* null, align 8
@get.savp = internal global i32* null, align 8
@blocksize = common dso_local global i32 0, align 4
@address = common dso_local global i64 0, align 8
@length = common dso_local global i32 0, align 4
@odmode = common dso_local global i64 0, align 8
@skip = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"cannot skip past end of input\00", align 1
@vflag = common dso_local global i64 0, align 8
@ALL = common dso_local global i64 0, align 8
@DUP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"*\0A\00", align 1
@eaddress = common dso_local global i64 0, align 8
@stdin = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@_argv = common dso_local global i32* null, align 8
@FIRST = common dso_local global i64 0, align 8
@WAIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32*, i32** @get.curp, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @blocksize, align 4
  %11 = call i32* @calloc(i32 1, i32 %10)
  store i32* %11, i32** @get.curp, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i32 @err(i32 1, i32* null)
  br label %15

15:                                               ; preds = %13, %9
  %16 = load i32, i32* @blocksize, align 4
  %17 = call i32* @calloc(i32 1, i32 %16)
  store i32* %17, i32** @get.savp, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 @err(i32 1, i32* null)
  br label %21

21:                                               ; preds = %19, %15
  br label %30

22:                                               ; preds = %0
  %23 = load i32*, i32** @get.curp, align 8
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** @get.savp, align 8
  store i32* %24, i32** @get.curp, align 8
  %25 = load i32*, i32** %6, align 8
  store i32* %25, i32** @get.savp, align 8
  %26 = load i32, i32* @blocksize, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* @address, align 8
  %29 = add nsw i64 %28, %27
  store i64 %29, i64* @address, align 8
  store i32 1, i32* %5, align 4
  br label %30

30:                                               ; preds = %22, %21
  %31 = load i32, i32* @blocksize, align 4
  store i32 %31, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %176, %117, %30
  %33 = load i32, i32* @length, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32, i32* @get.ateof, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %88

38:                                               ; preds = %35
  %39 = call i32 @next(i8** null)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %88, label %41

41:                                               ; preds = %38, %32
  %42 = load i64, i64* @odmode, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i64, i64* @address, align 8
  %46 = load i64, i64* @skip, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = call i32 @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %44, %41
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @blocksize, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32* null, i32** %1, align 8
  br label %177

55:                                               ; preds = %50
  %56 = load i64, i64* @vflag, align 8
  %57 = load i64, i64* @ALL, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %55
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %59
  %63 = load i32*, i32** @get.curp, align 8
  %64 = load i32*, i32** @get.savp, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i64 @bcmp(i32* %63, i32* %64, i32 %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load i64, i64* @vflag, align 8
  %70 = load i64, i64* @DUP, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %68
  store i32* null, i32** %1, align 8
  br label %177

75:                                               ; preds = %62, %59, %55
  %76 = load i32*, i32** @get.curp, align 8
  %77 = bitcast i32* %76 to i8*
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @bzero(i8* %80, i32 %81)
  %83 = load i64, i64* @address, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %83, %85
  store i64 %86, i64* @eaddress, align 8
  %87 = load i32*, i32** @get.curp, align 8
  store i32* %87, i32** %1, align 8
  br label %177

88:                                               ; preds = %38, %35
  %89 = load i32*, i32** @get.curp, align 8
  %90 = bitcast i32* %89 to i8*
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i32, i32* @length, align 4
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i32, i32* %3, align 4
  br label %102

98:                                               ; preds = %88
  %99 = load i32, i32* @length, align 4
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @MIN(i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %98, %96
  %103 = phi i32 [ %97, %96 ], [ %101, %98 ]
  %104 = load i32, i32* @stdin, align 4
  %105 = call i32 @fread(i8* %93, i32 4, i32 %103, i32 %104)
  store i32 %105, i32* %2, align 4
  %106 = load i32, i32* %2, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %102
  %109 = load i32, i32* @stdin, align 4
  %110 = call i64 @ferror(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = load i32*, i32** @_argv, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 -1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %112, %108
  store i32 1, i32* @get.ateof, align 4
  br label %32

118:                                              ; preds = %102
  store i32 0, i32* @get.ateof, align 4
  %119 = load i32, i32* @length, align 4
  %120 = icmp ne i32 %119, -1
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = load i32, i32* %2, align 4
  %123 = load i32, i32* @length, align 4
  %124 = sub nsw i32 %123, %122
  store i32 %124, i32* @length, align 4
  br label %125

125:                                              ; preds = %121, %118
  %126 = load i32, i32* %2, align 4
  %127 = load i32, i32* %3, align 4
  %128 = sub nsw i32 %127, %126
  store i32 %128, i32* %3, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %172, label %130

130:                                              ; preds = %125
  %131 = load i64, i64* @vflag, align 8
  %132 = load i64, i64* @ALL, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %147, label %134

134:                                              ; preds = %130
  %135 = load i64, i64* @vflag, align 8
  %136 = load i64, i64* @FIRST, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %147, label %138

138:                                              ; preds = %134
  %139 = load i32, i32* %5, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %147, label %141

141:                                              ; preds = %138
  %142 = load i32*, i32** @get.curp, align 8
  %143 = load i32*, i32** @get.savp, align 8
  %144 = load i32, i32* @blocksize, align 4
  %145 = call i64 @bcmp(i32* %142, i32* %143, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %159

147:                                              ; preds = %141, %138, %134, %130
  %148 = load i64, i64* @vflag, align 8
  %149 = load i64, i64* @DUP, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %155, label %151

151:                                              ; preds = %147
  %152 = load i64, i64* @vflag, align 8
  %153 = load i64, i64* @FIRST, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %151, %147
  %156 = load i64, i64* @WAIT, align 8
  store i64 %156, i64* @vflag, align 8
  br label %157

157:                                              ; preds = %155, %151
  %158 = load i32*, i32** @get.curp, align 8
  store i32* %158, i32** %1, align 8
  br label %177

159:                                              ; preds = %141
  %160 = load i64, i64* @vflag, align 8
  %161 = load i64, i64* @WAIT, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %165

165:                                              ; preds = %163, %159
  %166 = load i64, i64* @DUP, align 8
  store i64 %166, i64* @vflag, align 8
  %167 = load i32, i32* @blocksize, align 4
  %168 = sext i32 %167 to i64
  %169 = load i64, i64* @address, align 8
  %170 = add nsw i64 %169, %168
  store i64 %170, i64* @address, align 8
  %171 = load i32, i32* @blocksize, align 4
  store i32 %171, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %176

172:                                              ; preds = %125
  %173 = load i32, i32* %2, align 4
  %174 = load i32, i32* %4, align 4
  %175 = add nsw i32 %174, %173
  store i32 %175, i32* %4, align 4
  br label %176

176:                                              ; preds = %172, %165
  br label %32

177:                                              ; preds = %157, %75, %74, %54
  %178 = load i32*, i32** %1, align 8
  ret i32* %178
}

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i32*) #1

declare dso_local i32 @next(i8**) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @bcmp(i32*, i32*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i64 @ferror(i32) #1

declare dso_local i32 @warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
