; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_gzip.c_file_compress.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_gzip.c_file_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32 }
%struct.stat = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i64* }

@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"can't open %s\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"couldn't stat: %s\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"can't stat %s\00", align 1
@cflag = common dso_local global i64 0, align 8
@fflag = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"%s has %ju other link%s -- skipping\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"%s already has %s suffix -- unchanged\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@suffixes = common dso_local global %struct.TYPE_5__* null, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"could not create output: %s\00", align 1
@stdin = common dso_local global i32 0, align 4
@remove_file = common dso_local global i8* null, align 8
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [50 x i8] c"output file: %s wrong size (%ju != %ju), deleting\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"couldn't close output\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"leaving original %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @file_compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_compress(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.stat, align 8
  %13 = alloca %struct.stat, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* @O_RDONLY, align 4
  %17 = call i32 (i8*, i32, ...) @open(i8* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 (i8*, ...) @maybe_warn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %21)
  store i32 -1, i32* %4, align 4
  br label %221

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @fstat(i32 %24, %struct.stat* %12)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 (i8*, ...) @maybe_warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @close(i32 %30)
  store i32 -1, i32* %4, align 4
  br label %221

32:                                               ; preds = %23
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @fstat(i32 %33, %struct.stat* %12)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @close(i32 %37)
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 (i8*, ...) @maybe_warn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  store i32 -1, i32* %4, align 4
  br label %221

41:                                               ; preds = %32
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @infile_set(i8* %42, i32 %44)
  %46 = load i64, i64* @cflag, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %133

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %50, 1
  br i1 %51, label %52, label %69

52:                                               ; preds = %48
  %53 = load i64, i64* @fflag, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %52
  %56 = load i8*, i8** %5, align 8
  %57 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = sub nsw i64 %59, 1
  %61 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 1
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)
  %66 = call i32 (i8*, i8*, ...) @maybe_warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %56, i64 %60, i8* %65)
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @close(i32 %67)
  store i32 -1, i32* %4, align 4
  br label %221

69:                                               ; preds = %52, %48
  %70 = load i64, i64* @fflag, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %91

72:                                               ; preds = %69
  %73 = load i8*, i8** %5, align 8
  %74 = call %struct.TYPE_4__* @check_suffix(i8* %73, i32 0)
  store %struct.TYPE_4__* %74, %struct.TYPE_4__** %14, align 8
  %75 = icmp ne %struct.TYPE_4__* %74, null
  br i1 %75, label %76, label %91

76:                                               ; preds = %72
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %76
  %84 = load i8*, i8** %5, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = call i32 (i8*, i8*, ...) @maybe_warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8* %84, i64* %87)
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @close(i32 %89)
  store i32 -1, i32* %4, align 4
  br label %221

91:                                               ; preds = %76, %72, %69
  %92 = load i8*, i8** %6, align 8
  %93 = load i64, i64* %7, align 8
  %94 = load i8*, i8** %5, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** @suffixes, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @snprintf(i8* %92, i64 %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %94, i32 %98)
  %100 = load i64, i64* %7, align 8
  %101 = icmp uge i64 %99, %100
  br i1 %101, label %102, label %125

102:                                              ; preds = %91
  %103 = load i8*, i8** %6, align 8
  %104 = load i64, i64* %7, align 8
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** @suffixes, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = ptrtoint i8* %105 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  %113 = sub nsw i64 %112, 1
  %114 = inttoptr i64 %113 to i8*
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** @suffixes, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** @suffixes, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i64 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 1
  %124 = call i32 @memcpy(i8* %114, i32 %118, i8* %123)
  br label %125

125:                                              ; preds = %102, %91
  %126 = load i8*, i8** %6, align 8
  %127 = call i64 @check_outfile(i8* %126)
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @close(i32 %130)
  store i32 -1, i32* %4, align 4
  br label %221

132:                                              ; preds = %125
  br label %133

133:                                              ; preds = %132, %41
  %134 = load i64, i64* @cflag, align 8
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %153

136:                                              ; preds = %133
  %137 = load i8*, i8** %6, align 8
  %138 = load i32, i32* @O_WRONLY, align 4
  %139 = load i32, i32* @O_CREAT, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @O_EXCL, align 4
  %142 = or i32 %140, %141
  %143 = call i32 (i8*, i32, ...) @open(i8* %137, i32 %142, i32 384)
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %9, align 4
  %145 = icmp eq i32 %144, -1
  br i1 %145, label %146, label %151

146:                                              ; preds = %136
  %147 = load i8*, i8** %6, align 8
  %148 = call i32 (i8*, ...) @maybe_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i8* %147)
  %149 = load i32, i32* @stdin, align 4
  %150 = call i32 @fclose(i32 %149)
  store i32 -1, i32* %4, align 4
  br label %221

151:                                              ; preds = %136
  %152 = load i8*, i8** %6, align 8
  store i8* %152, i8** @remove_file, align 8
  br label %155

153:                                              ; preds = %133
  %154 = load i32, i32* @STDOUT_FILENO, align 4
  store i32 %154, i32* %9, align 4
  br label %155

155:                                              ; preds = %153, %151
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* %9, align 4
  %158 = load i8*, i8** %5, align 8
  %159 = call i32 @basename(i8* %158)
  %160 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = trunc i64 %161 to i32
  %163 = call i32 @gz_compress(i32 %156, i32 %157, i32* %10, i32 %159, i32 %162)
  store i32 %163, i32* %11, align 4
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @close(i32 %164)
  %166 = load i64, i64* @cflag, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %155
  %169 = load i32, i32* %11, align 4
  %170 = icmp eq i32 %169, -1
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  br label %174

172:                                              ; preds = %168
  %173 = load i32, i32* %10, align 4
  br label %174

174:                                              ; preds = %172, %171
  %175 = phi i32 [ -1, %171 ], [ %173, %172 ]
  store i32 %175, i32* %4, align 4
  br label %221

176:                                              ; preds = %155
  %177 = load i32, i32* %9, align 4
  %178 = call i64 @fstat(i32 %177, %struct.stat* %13)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %176
  %181 = load i8*, i8** %6, align 8
  %182 = call i32 (i8*, ...) @maybe_warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %181)
  br label %209

183:                                              ; preds = %176
  %184 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* %10, align 4
  %187 = icmp ne i32 %185, %186
  br i1 %187, label %188, label %196

188:                                              ; preds = %183
  %189 = load i8*, i8** %6, align 8
  %190 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = load i32, i32* %10, align 4
  %194 = sext i32 %193 to i64
  %195 = call i32 (i8*, i8*, ...) @maybe_warnx(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i8* %189, i64 %192, i64 %194)
  br label %209

196:                                              ; preds = %183
  %197 = load i32, i32* %9, align 4
  %198 = load i8*, i8** %6, align 8
  %199 = call i32 @copymodes(i32 %197, %struct.stat* %12, i8* %198)
  store i8* null, i8** @remove_file, align 8
  %200 = load i32, i32* %9, align 4
  %201 = call i32 @close(i32 %200)
  %202 = icmp eq i32 %201, -1
  br i1 %202, label %203, label %205

203:                                              ; preds = %196
  %204 = call i32 (i8*, ...) @maybe_warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  br label %205

205:                                              ; preds = %203, %196
  %206 = load i8*, i8** %5, align 8
  %207 = call i32 @unlink_input(i8* %206, %struct.stat* %12)
  %208 = load i32, i32* %10, align 4
  store i32 %208, i32* %4, align 4
  br label %221

209:                                              ; preds = %188, %180
  %210 = load i32, i32* %9, align 4
  %211 = call i32 @close(i32 %210)
  %212 = icmp eq i32 %211, -1
  br i1 %212, label %213, label %215

213:                                              ; preds = %209
  %214 = call i32 (i8*, ...) @maybe_warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  br label %215

215:                                              ; preds = %213, %209
  %216 = load i8*, i8** %5, align 8
  %217 = call i32 (i8*, i8*, ...) @maybe_warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* %216)
  %218 = load i8*, i8** %6, align 8
  %219 = call i32 @unlink(i8* %218)
  %220 = load i32, i32* %10, align 4
  store i32 %220, i32* %4, align 4
  br label %221

221:                                              ; preds = %215, %205, %174, %146, %129, %83, %55, %36, %27, %20
  %222 = load i32, i32* %4, align 4
  ret i32 %222
}

declare dso_local i32 @open(i8*, i32, ...) #1

declare dso_local i32 @maybe_warn(i8*, ...) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @infile_set(i8*, i32) #1

declare dso_local i32 @maybe_warnx(i8*, i8*, ...) #1

declare dso_local %struct.TYPE_4__* @check_suffix(i8*, i32) #1

declare dso_local i64 @snprintf(i8*, i64, i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i8*) #1

declare dso_local i64 @check_outfile(i8*) #1

declare dso_local i32 @fclose(i32) #1

declare dso_local i32 @gz_compress(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @copymodes(i32, %struct.stat*, i8*) #1

declare dso_local i32 @unlink_input(i8*, %struct.stat*) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
