; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/xinstall/extr_xinstall.c_metadata_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/xinstall/extr_xinstall.c_metadata_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i64 }
%struct.flock = type { i32, i32, i64, i64 }

@metadata_log.extra = internal constant [6 x i8] c" \09\0A\\#\00", align 1
@metafp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i32 0, align 4
@F_SETLKW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"can't lock %s\00", align 1
@metafile = common dso_local global i32 0, align 4
@destdir = common dso_local global i8* null, align 8
@VIS_OCTAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c".%s%s type=%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@owner = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c" uname=%s\00", align 1
@group = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c" gname=%s\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c" mode=%#o\00", align 1
@mode = common dso_local global i32 0, align 4
@VIS_CSTYLE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c" link=%s\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c" size=%lld\00", align 1
@dopreserve = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [17 x i8] c" time=%lld.%09ld\00", align 1
@digest = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [7 x i8] c" %s=%s\00", align 1
@fflags = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [10 x i8] c" flags=%s\00", align 1
@tags = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [9 x i8] c" tags=%s\00", align 1
@F_UNLCK = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"can't unlock %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, %struct.timespec*, i8*, i8*, i64)* @metadata_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @metadata_log(i8* %0, i8* %1, %struct.timespec* %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.timespec*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.flock, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.timespec* %2, %struct.timespec** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %17 = load i32, i32* @metafp, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %6
  br label %210

20:                                               ; preds = %6
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = mul nsw i32 4, %22
  %24 = add nsw i32 %23, 1
  %25 = call i64 @malloc(i32 %24)
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %14, align 8
  %27 = load i8*, i8** %14, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = call i32 @strerror(i32 %30)
  %32 = call i32 @warnx(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %210

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.flock, %struct.flock* %16, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = getelementptr inbounds %struct.flock, %struct.flock* %16, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @SEEK_SET, align 4
  %37 = getelementptr inbounds %struct.flock, %struct.flock* %16, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @F_WRLCK, align 4
  %39 = getelementptr inbounds %struct.flock, %struct.flock* %16, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* @metafp, align 4
  %41 = call i32 @fileno(i32 %40)
  %42 = load i32, i32* @F_SETLKW, align 4
  %43 = call i32 @fcntl(i32 %41, i32 %42, %struct.flock* %16)
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %50

45:                                               ; preds = %33
  %46 = load i32, i32* @metafile, align 4
  %47 = call i32 @warn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i8*, i8** %14, align 8
  %49 = call i32 @free(i8* %48)
  br label %210

50:                                               ; preds = %33
  %51 = load i8*, i8** %7, align 8
  store i8* %51, i8** %13, align 8
  %52 = load i8*, i8** @destdir, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %82

54:                                               ; preds = %50
  %55 = load i8*, i8** @destdir, align 8
  %56 = call i32 @strlen(i8* %55)
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %15, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = load i8*, i8** @destdir, align 8
  %60 = load i64, i64* %15, align 8
  %61 = call i64 @strncmp(i8* %58, i8* %59, i64 %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %54
  %64 = load i8*, i8** %13, align 8
  %65 = load i64, i64* %15, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 47
  br i1 %69, label %77, label %70

70:                                               ; preds = %63
  %71 = load i8*, i8** %13, align 8
  %72 = load i64, i64* %15, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %70, %63
  %78 = load i64, i64* %15, align 8
  %79 = load i8*, i8** %13, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 %78
  store i8* %80, i8** %13, align 8
  br label %81

81:                                               ; preds = %77, %70, %54
  br label %82

82:                                               ; preds = %81, %50
  br label %83

83:                                               ; preds = %95, %82
  %84 = load i8*, i8** %13, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i8*, i8** %13, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 47
  br label %93

93:                                               ; preds = %88, %83
  %94 = phi i1 [ false, %83 ], [ %92, %88 ]
  br i1 %94, label %95, label %98

95:                                               ; preds = %93
  %96 = load i8*, i8** %13, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %13, align 8
  br label %83

98:                                               ; preds = %93
  %99 = load i8*, i8** %14, align 8
  %100 = load i8*, i8** %13, align 8
  %101 = load i32, i32* @VIS_OCTAL, align 4
  %102 = call i32 @strsvis(i8* %99, i8* %100, i32 %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @metadata_log.extra, i64 0, i64 0))
  %103 = load i8*, i8** %14, align 8
  store i8* %103, i8** %13, align 8
  %104 = load i32, i32* @metafp, align 4
  %105 = load i8*, i8** %13, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %111 = load i8*, i8** %13, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = call i32 (i32, i8*, ...) @fprintf(i32 %104, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %110, i8* %111, i8* %112)
  %114 = load i8*, i8** @owner, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %120

116:                                              ; preds = %98
  %117 = load i32, i32* @metafp, align 4
  %118 = load i8*, i8** @owner, align 8
  %119 = call i32 (i32, i8*, ...) @fprintf(i32 %117, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %118)
  br label %120

120:                                              ; preds = %116, %98
  %121 = load i8*, i8** @group, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load i32, i32* @metafp, align 4
  %125 = load i8*, i8** @group, align 8
  %126 = call i32 (i32, i8*, ...) @fprintf(i32 %124, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %125)
  br label %127

127:                                              ; preds = %123, %120
  %128 = load i32, i32* @metafp, align 4
  %129 = load i32, i32* @mode, align 4
  %130 = call i32 (i32, i8*, ...) @fprintf(i32 %128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %129)
  %131 = load i8*, i8** %10, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %141

133:                                              ; preds = %127
  %134 = load i8*, i8** %14, align 8
  %135 = load i8*, i8** %10, align 8
  %136 = load i32, i32* @VIS_CSTYLE, align 4
  %137 = call i32 @strsvis(i8* %134, i8* %135, i32 %136, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @metadata_log.extra, i64 0, i64 0))
  %138 = load i32, i32* @metafp, align 4
  %139 = load i8*, i8** %14, align 8
  %140 = call i32 (i32, i8*, ...) @fprintf(i32 %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %139)
  br label %141

141:                                              ; preds = %133, %127
  %142 = load i8*, i8** %8, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 102
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = load i32, i32* @metafp, align 4
  %148 = load i64, i64* %12, align 8
  %149 = call i32 (i32, i8*, ...) @fprintf(i32 %147, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i64 %148)
  br label %150

150:                                              ; preds = %146, %141
  %151 = load %struct.timespec*, %struct.timespec** %9, align 8
  %152 = icmp ne %struct.timespec* %151, null
  br i1 %152, label %153, label %167

153:                                              ; preds = %150
  %154 = load i64, i64* @dopreserve, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %167

156:                                              ; preds = %153
  %157 = load i32, i32* @metafp, align 4
  %158 = load %struct.timespec*, %struct.timespec** %9, align 8
  %159 = getelementptr inbounds %struct.timespec, %struct.timespec* %158, i64 1
  %160 = getelementptr inbounds %struct.timespec, %struct.timespec* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.timespec*, %struct.timespec** %9, align 8
  %163 = getelementptr inbounds %struct.timespec, %struct.timespec* %162, i64 1
  %164 = getelementptr inbounds %struct.timespec, %struct.timespec* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 (i32, i8*, ...) @fprintf(i32 %157, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i64 %161, i32 %165)
  br label %167

167:                                              ; preds = %156, %153, %150
  %168 = load i8*, i8** %11, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %170, label %178

170:                                              ; preds = %167
  %171 = load i8*, i8** @digest, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %173, label %178

173:                                              ; preds = %170
  %174 = load i32, i32* @metafp, align 4
  %175 = load i8*, i8** @digest, align 8
  %176 = load i8*, i8** %11, align 8
  %177 = call i32 (i32, i8*, ...) @fprintf(i32 %174, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %175, i8* %176)
  br label %178

178:                                              ; preds = %173, %170, %167
  %179 = load i8*, i8** @fflags, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %185

181:                                              ; preds = %178
  %182 = load i32, i32* @metafp, align 4
  %183 = load i8*, i8** @fflags, align 8
  %184 = call i32 (i32, i8*, ...) @fprintf(i32 %182, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* %183)
  br label %185

185:                                              ; preds = %181, %178
  %186 = load i8*, i8** @tags, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %188, label %192

188:                                              ; preds = %185
  %189 = load i32, i32* @metafp, align 4
  %190 = load i8*, i8** @tags, align 8
  %191 = call i32 (i32, i8*, ...) @fprintf(i32 %189, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8* %190)
  br label %192

192:                                              ; preds = %188, %185
  %193 = load i32, i32* @metafp, align 4
  %194 = call i32 @fputc(i8 signext 10, i32 %193)
  %195 = load i32, i32* @metafp, align 4
  %196 = call i32 @fflush(i32 %195)
  %197 = load i32, i32* @F_UNLCK, align 4
  %198 = getelementptr inbounds %struct.flock, %struct.flock* %16, i32 0, i32 0
  store i32 %197, i32* %198, align 8
  %199 = load i32, i32* @metafp, align 4
  %200 = call i32 @fileno(i32 %199)
  %201 = load i32, i32* @F_SETLKW, align 4
  %202 = call i32 @fcntl(i32 %200, i32 %201, %struct.flock* %16)
  %203 = icmp eq i32 %202, -1
  br i1 %203, label %204, label %207

204:                                              ; preds = %192
  %205 = load i32, i32* @metafile, align 4
  %206 = call i32 @warn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 %205)
  br label %207

207:                                              ; preds = %204, %192
  %208 = load i8*, i8** %14, align 8
  %209 = call i32 @free(i8* %208)
  br label %210

210:                                              ; preds = %207, %45, %29, %19
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @fcntl(i32, i32, %struct.flock*) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @strsvis(i8*, i8*, i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
