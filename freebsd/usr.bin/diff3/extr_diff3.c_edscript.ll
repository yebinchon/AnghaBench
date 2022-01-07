; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/diff3/extr_diff3.c_edscript.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/diff3/extr_diff3.c_edscript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@BUFSIZ = common dso_local global i32 0, align 4
@oflag = common dso_local global i32 0, align 4
@overlap = common dso_local global i32* null, align 8
@de = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"%da\0A\00", align 1
@Aflag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@f2mark = common dso_local global i8* null, align 8
@fp = common dso_local global i32* null, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"logic error\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"=======\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%s\0A.\0A\00", align 1
@f3mark = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"%da\0A%s\0A.\0A\00", align 1
@f1mark = common dso_local global i8* null, align 8
@iflag = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"w\0Aq\0A\00", align 1
@eflag = common dso_local global i64 0, align 8
@overlapcnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @edscript to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edscript(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @BUFSIZ, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  br label %11

11:                                               ; preds = %200, %1
  %12 = load i32, i32* %2, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %203

14:                                               ; preds = %11
  %15 = load i32, i32* @oflag, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i32*, i32** @overlap, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %17, %14
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @de, align 8
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = call i32 @prange(%struct.TYPE_5__* %29)
  br label %112

31:                                               ; preds = %17
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @de, align 8
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i64, i64* @Aflag, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %110

43:                                               ; preds = %31
  %44 = load i8*, i8** @f2mark, align 8
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  %46 = load i32*, i32** @fp, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** @de, align 8
  %50 = load i32, i32* %2, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @SEEK_SET, align 4
  %57 = call i32 @fseek(i32 %48, i64 %55, i32 %56)
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @de, align 8
  %59 = load i32, i32* %2, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** @de, align 8
  %67 = load i32, i32* %2, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %65, %72
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %102, %43
  %76 = load i32, i32* %3, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %108

78:                                               ; preds = %75
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @BUFSIZ, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32, i32* @BUFSIZ, align 4
  br label %86

84:                                               ; preds = %78
  %85 = load i32, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  %88 = sext i32 %87 to i64
  store i64 %88, i64* %4, align 8
  %89 = load i64, i64* %4, align 8
  %90 = load i32*, i32** @fp, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @fread(i8* %10, i32 1, i64 %89, i32 %92)
  %94 = load i64, i64* %4, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %86
  %97 = call i32 @errx(i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %86
  %99 = load i64, i64* %4, align 8
  %100 = load i32, i32* @stdout, align 4
  %101 = call i32 @fwrite(i8* %10, i32 1, i64 %99, i32 %100)
  br label %102

102:                                              ; preds = %98
  %103 = load i64, i64* %4, align 8
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = sub i64 %105, %103
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %3, align 4
  br label %75

108:                                              ; preds = %75
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %31
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %24
  %113 = load i32*, i32** @fp, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** @de, align 8
  %117 = load i32, i32* %2, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = load i32, i32* @SEEK_SET, align 4
  %125 = call i32 @fseek(i32 %115, i64 %123, i32 %124)
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** @de, align 8
  %127 = load i32, i32* %2, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** @de, align 8
  %134 = load i32, i32* %2, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sub nsw i32 %132, %139
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %168, %112
  %142 = load i32, i32* %3, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %174

144:                                              ; preds = %141
  %145 = load i32, i32* %3, align 4
  %146 = load i32, i32* @BUFSIZ, align 4
  %147 = icmp sgt i32 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = load i32, i32* @BUFSIZ, align 4
  br label %152

150:                                              ; preds = %144
  %151 = load i32, i32* %3, align 4
  br label %152

152:                                              ; preds = %150, %148
  %153 = phi i32 [ %149, %148 ], [ %151, %150 ]
  %154 = sext i32 %153 to i64
  store i64 %154, i64* %4, align 8
  %155 = load i64, i64* %4, align 8
  %156 = load i32*, i32** @fp, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 2
  %158 = load i32, i32* %157, align 4
  %159 = call i64 @fread(i8* %10, i32 1, i64 %155, i32 %158)
  %160 = load i64, i64* %4, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %152
  %163 = call i32 @errx(i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %164

164:                                              ; preds = %162, %152
  %165 = load i64, i64* %4, align 8
  %166 = load i32, i32* @stdout, align 4
  %167 = call i32 @fwrite(i8* %10, i32 1, i64 %165, i32 %166)
  br label %168

168:                                              ; preds = %164
  %169 = load i64, i64* %4, align 8
  %170 = load i32, i32* %3, align 4
  %171 = sext i32 %170 to i64
  %172 = sub i64 %171, %169
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %3, align 4
  br label %141

174:                                              ; preds = %141
  %175 = load i32, i32* @oflag, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %174
  %178 = load i32*, i32** @overlap, align 8
  %179 = load i32, i32* %2, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %186, label %184

184:                                              ; preds = %177, %174
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %199

186:                                              ; preds = %177
  %187 = load i8*, i8** @f3mark, align 8
  %188 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %187)
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** @de, align 8
  %190 = load i32, i32* %2, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = sub nsw i64 %195, 1
  %197 = load i8*, i8** @f1mark, align 8
  %198 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i64 %196, i8* %197)
  br label %199

199:                                              ; preds = %186, %184
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %2, align 4
  %202 = add nsw i32 %201, -1
  store i32 %202, i32* %2, align 4
  br label %11

203:                                              ; preds = %11
  %204 = load i64, i64* @iflag, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %203
  %207 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %208

208:                                              ; preds = %206, %203
  %209 = load i64, i64* @eflag, align 8
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %208
  %212 = load i32, i32* @overlapcnt, align 4
  br label %214

213:                                              ; preds = %208
  br label %214

214:                                              ; preds = %213, %211
  %215 = phi i32 [ %212, %211 ], [ 0, %213 ]
  %216 = call i32 @exit(i32 %215) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @prange(%struct.TYPE_5__*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @fseek(i32, i64, i32) #2

declare dso_local i64 @fread(i8*, i32, i64, i32) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i32 @fwrite(i8*, i32, i64, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
