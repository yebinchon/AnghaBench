; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/find-sb/extr_find-sb.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/find-sb/extr_find-sb.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"o:\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"usage\00", align 1
@DEV_BSIZE = common dso_local global i64 0, align 8
@optind = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@u = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"reached end-of-file at %jd\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"short read %jd (wanted %d) at %jd\00", align 1
@FS_UFS1_MAGIC = common dso_local global i64 0, align 8
@SBLOCK_UFS1 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [48 x i8] c"Found UFS1 superblock at offset %jd, block %jd\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"Filesystem might begin at offset %jd, block %jd\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"%jd blocks from last guess\0A\00", align 1
@FS_UFS2_MAGIC = common dso_local global i64 0, align 8
@SBLOCK_UFS2 = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [48 x i8] c"Found UFS2 superblock at offset %jd, block %jd\0A\00", align 1
@SBLOCKSIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %14, align 8
  br label %17

17:                                               ; preds = %54, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call signext i8 @getopt(i32 %18, i8** %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8 %20, i8* %13, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %55

23:                                               ; preds = %17
  %24 = load i8, i8* %13, align 1
  %25 = sext i8 %24 to i32
  switch i32 %25, label %52 [
    i32 111, label %26
  ]

26:                                               ; preds = %23
  %27 = load i8*, i8** @optarg, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %26
  %35 = load i8*, i8** @optarg, align 8
  %36 = call i64 @strtoimax(i8* %35, i8** %12, i32 10)
  store i64 %36, i64* %14, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i64, i64* %14, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41, %34
  %45 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i64, i64* %14, align 8
  %48 = load i64, i64* @DEV_BSIZE, align 8
  %49 = srem i64 %47, %48
  %50 = load i64, i64* %14, align 8
  %51 = sub nsw i64 %50, %49
  store i64 %51, i64* %14, align 8
  br label %54

52:                                               ; preds = %23
  %53 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %46
  br label %17

55:                                               ; preds = %17
  %56 = load i64, i64* @optind, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = sub nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %4, align 4
  %61 = load i64, i64* @optind, align 8
  %62 = load i8**, i8*** %5, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 %61
  store i8** %63, i8*** %5, align 8
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 1
  br i1 %65, label %66, label %68

66:                                               ; preds = %55
  %67 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %55
  %69 = load i8**, i8*** %5, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* @O_RDONLY, align 4
  %73 = call i32 @open(i8* %71, i32 %72, i32 0)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %68
  %77 = load i8**, i8*** %5, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %79)
  br label %81

81:                                               ; preds = %76, %68
  %82 = load i64, i64* %14, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %81
  %85 = load i32, i32* %11, align 4
  %86 = load i64, i64* %14, align 8
  %87 = load i32, i32* @SEEK_SET, align 4
  %88 = call i32 @lseek(i32 %85, i64 %86, i32 %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load i8**, i8*** %5, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %94)
  br label %96

96:                                               ; preds = %91, %84
  br label %98

97:                                               ; preds = %81
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %97, %96
  store i64 0, i64* %9, align 8
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %7, align 4
  br label %99

99:                                               ; preds = %98, %245
  %100 = load i32, i32* %11, align 4
  %101 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @u, i32 0, i32 0), align 8
  %102 = load i64, i64* %9, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i64, i64* @DEV_BSIZE, align 8
  %105 = call i64 @read(i32 %100, i32* %103, i64 %104)
  store i64 %105, i64* %10, align 8
  %106 = load i64, i64* %10, align 8
  %107 = load i64, i64* @DEV_BSIZE, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %128

109:                                              ; preds = %99
  %110 = load i64, i64* %10, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %114)
  %116 = call i32 @exit(i32 0) #3
  unreachable

117:                                              ; preds = %109
  %118 = load i64, i64* %10, align 8
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %117
  %123 = load i64, i64* %10, align 8
  %124 = load i64, i64* @DEV_BSIZE, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i64 %123, i64 %124, i64 %126)
  br label %128

128:                                              ; preds = %122, %99
  %129 = load i64, i64* @DEV_BSIZE, align 8
  %130 = load i64, i64* %9, align 8
  %131 = add i64 %130, %129
  store i64 %131, i64* %9, align 8
  %132 = load i64, i64* @DEV_BSIZE, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %134, %132
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %6, align 4
  %137 = load i64, i64* %9, align 8
  %138 = icmp uge i64 %137, 4
  br i1 %138, label %139, label %229

139:                                              ; preds = %128
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = load i64, i64* %9, align 8
  %143 = sub i64 %141, %142
  store i64 %143, i64* %14, align 8
  %144 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @u, i32 0, i32 1, i32 0), align 8
  %145 = load i64, i64* @FS_UFS1_MAGIC, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %185

147:                                              ; preds = %139
  %148 = load i64, i64* %14, align 8
  %149 = load i64, i64* @SBLOCK_UFS1, align 8
  %150 = sub nsw i64 %148, %149
  store i64 %150, i64* %15, align 8
  %151 = load i64, i64* %14, align 8
  %152 = load i64, i64* %14, align 8
  %153 = load i64, i64* @DEV_BSIZE, align 8
  %154 = sdiv i64 %152, %153
  %155 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i64 %151, i64 %154)
  %156 = load i64, i64* %15, align 8
  %157 = load i64, i64* %15, align 8
  %158 = load i64, i64* @DEV_BSIZE, align 8
  %159 = sdiv i64 %157, %158
  %160 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i64 %156, i64 %159)
  %161 = load i32, i32* %7, align 4
  %162 = icmp sge i32 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %147
  %164 = load i64, i64* %15, align 8
  %165 = load i64, i64* @DEV_BSIZE, align 8
  %166 = sdiv i64 %164, %165
  %167 = load i32, i32* %7, align 4
  %168 = sext i32 %167 to i64
  %169 = sub nsw i64 %166, %168
  %170 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i64 %169)
  br label %171

171:                                              ; preds = %163, %147
  %172 = load i64, i64* %15, align 8
  %173 = load i64, i64* @DEV_BSIZE, align 8
  %174 = sdiv i64 %172, %173
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %7, align 4
  %176 = load i64, i64* @DEV_BSIZE, align 8
  %177 = load i64, i64* %9, align 8
  %178 = sub i64 %177, %176
  store i64 %178, i64* %9, align 8
  %179 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @u, i32 0, i32 0), align 8
  %180 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @u, i32 0, i32 0), align 8
  %181 = load i64, i64* @DEV_BSIZE, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  %183 = load i64, i64* %9, align 8
  %184 = call i32 @memmove(i32* %179, i32* %182, i64 %183)
  br label %228

185:                                              ; preds = %139
  %186 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @u, i32 0, i32 1, i32 0), align 8
  %187 = load i64, i64* @FS_UFS2_MAGIC, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %227

189:                                              ; preds = %185
  %190 = load i64, i64* %14, align 8
  %191 = load i64, i64* @SBLOCK_UFS2, align 8
  %192 = sub nsw i64 %190, %191
  store i64 %192, i64* %16, align 8
  %193 = load i64, i64* %14, align 8
  %194 = load i64, i64* %14, align 8
  %195 = load i64, i64* @DEV_BSIZE, align 8
  %196 = sdiv i64 %194, %195
  %197 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i64 %193, i64 %196)
  %198 = load i64, i64* %16, align 8
  %199 = load i64, i64* %16, align 8
  %200 = load i64, i64* @DEV_BSIZE, align 8
  %201 = sdiv i64 %199, %200
  %202 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i64 %198, i64 %201)
  %203 = load i32, i32* %8, align 4
  %204 = icmp sge i32 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %189
  %206 = load i64, i64* %16, align 8
  %207 = load i64, i64* @DEV_BSIZE, align 8
  %208 = sdiv i64 %206, %207
  %209 = load i32, i32* %8, align 4
  %210 = sext i32 %209 to i64
  %211 = sub nsw i64 %208, %210
  %212 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i64 %211)
  br label %213

213:                                              ; preds = %205, %189
  %214 = load i64, i64* %16, align 8
  %215 = load i64, i64* @DEV_BSIZE, align 8
  %216 = sdiv i64 %214, %215
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %8, align 4
  %218 = load i64, i64* @DEV_BSIZE, align 8
  %219 = load i64, i64* %9, align 8
  %220 = sub i64 %219, %218
  store i64 %220, i64* %9, align 8
  %221 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @u, i32 0, i32 0), align 8
  %222 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @u, i32 0, i32 0), align 8
  %223 = load i64, i64* @DEV_BSIZE, align 8
  %224 = getelementptr inbounds i32, i32* %222, i64 %223
  %225 = load i64, i64* %9, align 8
  %226 = call i32 @memmove(i32* %221, i32* %224, i64 %225)
  br label %227

227:                                              ; preds = %213, %185
  br label %228

228:                                              ; preds = %227, %171
  br label %229

229:                                              ; preds = %228, %128
  %230 = load i64, i64* %9, align 8
  %231 = load i64, i64* @SBLOCKSIZE, align 8
  %232 = icmp uge i64 %230, %231
  br i1 %232, label %233, label %245

233:                                              ; preds = %229
  %234 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @u, i32 0, i32 0), align 8
  %235 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @u, i32 0, i32 0), align 8
  %236 = load i64, i64* @DEV_BSIZE, align 8
  %237 = getelementptr inbounds i32, i32* %235, i64 %236
  %238 = load i64, i64* @SBLOCKSIZE, align 8
  %239 = load i64, i64* @DEV_BSIZE, align 8
  %240 = sub i64 %238, %239
  %241 = call i32 @memmove(i32* %234, i32* %237, i64 %240)
  %242 = load i64, i64* @DEV_BSIZE, align 8
  %243 = load i64, i64* %9, align 8
  %244 = sub i64 %243, %242
  store i64 %244, i64* %9, align 8
  br label %245

245:                                              ; preds = %233, %229
  br label %99
}

declare dso_local signext i8 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i64 @strtoimax(i8*, i8**, i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @lseek(i32, i64, i32) #1

declare dso_local i64 @read(i32, i32*, i64) #1

declare dso_local i32 @printf(i8*, i64, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memmove(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
