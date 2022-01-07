; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/camdd/extr_camdd.c_camdd_parse_io_opts.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/camdd/extr_camdd.c_camdd_parse_io_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camdd_io_opts = type { i32, i32, i8*, i32, i8*, i32, i32*, i32 }

@.str = private unnamed_addr constant [14 x i8] c"strdup failed\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Got empty I/O parameter name\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Empty I/O parameter value for %s\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@CAMDD_DEV_FILE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"Error allocating memory\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@CAMDD_DEV_PASS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"bs\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"blocksize\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"expand_number(3) failed on %s=%s\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"invalid queue depth %s\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"mcs\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"invalid minimum cmd size %s\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"invalid debug level %s\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"Unrecognized parameter %s=%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @camdd_parse_io_opts(i8* %0, i32 %1, %struct.camdd_io_opts* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.camdd_io_opts*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.camdd_io_opts* %2, %struct.camdd_io_opts** %6, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.camdd_io_opts*, %struct.camdd_io_opts** %6, align 8
  %18 = getelementptr inbounds %struct.camdd_io_opts, %struct.camdd_io_opts* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i8* @strdup(i8* %19)
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %205

25:                                               ; preds = %3
  %26 = load i8*, i8** %7, align 8
  store i8* %26, i8** %9, align 8
  br label %27

27:                                               ; preds = %203, %35, %25
  %28 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %28, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %204

30:                                               ; preds = %27
  %31 = load i8*, i8** %8, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %27

36:                                               ; preds = %30
  %37 = call i8* @strsep(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %37, i8** %11, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %205

44:                                               ; preds = %36
  %45 = call i8* @strsep(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %45, i8** %12, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** %12, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48, %44
  %54 = load i8*, i8** %11, align 8
  %55 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %54)
  store i32 1, i32* %10, align 4
  br label %205

56:                                               ; preds = %48
  %57 = load i8*, i8** %11, align 8
  %58 = call i64 @strncasecmp(i8* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %56
  %61 = load i32, i32* @CAMDD_DEV_FILE, align 4
  %62 = load %struct.camdd_io_opts*, %struct.camdd_io_opts** %6, align 8
  %63 = getelementptr inbounds %struct.camdd_io_opts, %struct.camdd_io_opts* %62, i32 0, i32 7
  store i32 %61, i32* %63, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = call i8* @strdup(i8* %64)
  %66 = bitcast i8* %65 to i32*
  %67 = load %struct.camdd_io_opts*, %struct.camdd_io_opts** %6, align 8
  %68 = getelementptr inbounds %struct.camdd_io_opts, %struct.camdd_io_opts* %67, i32 0, i32 6
  store i32* %66, i32** %68, align 8
  %69 = load %struct.camdd_io_opts*, %struct.camdd_io_opts** %6, align 8
  %70 = getelementptr inbounds %struct.camdd_io_opts, %struct.camdd_io_opts* %69, i32 0, i32 6
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %60
  %74 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %205

75:                                               ; preds = %60
  br label %203

76:                                               ; preds = %56
  %77 = load i8*, i8** %11, align 8
  %78 = call i64 @strncasecmp(i8* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 4)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %76
  %81 = load i32, i32* @CAMDD_DEV_PASS, align 4
  %82 = load %struct.camdd_io_opts*, %struct.camdd_io_opts** %6, align 8
  %83 = getelementptr inbounds %struct.camdd_io_opts, %struct.camdd_io_opts* %82, i32 0, i32 7
  store i32 %81, i32* %83, align 8
  %84 = load i8*, i8** %12, align 8
  %85 = call i8* @strdup(i8* %84)
  %86 = bitcast i8* %85 to i32*
  %87 = load %struct.camdd_io_opts*, %struct.camdd_io_opts** %6, align 8
  %88 = getelementptr inbounds %struct.camdd_io_opts, %struct.camdd_io_opts* %87, i32 0, i32 6
  store i32* %86, i32** %88, align 8
  %89 = load %struct.camdd_io_opts*, %struct.camdd_io_opts** %6, align 8
  %90 = getelementptr inbounds %struct.camdd_io_opts, %struct.camdd_io_opts* %89, i32 0, i32 6
  %91 = load i32*, i32** %90, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %80
  %94 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %205

95:                                               ; preds = %80
  br label %202

96:                                               ; preds = %76
  %97 = load i8*, i8** %11, align 8
  %98 = call i64 @strncasecmp(i8* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 2)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load i8*, i8** %11, align 8
  %102 = call i64 @strncasecmp(i8* %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 9)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %100, %96
  %105 = load i8*, i8** %12, align 8
  %106 = load %struct.camdd_io_opts*, %struct.camdd_io_opts** %6, align 8
  %107 = getelementptr inbounds %struct.camdd_io_opts, %struct.camdd_io_opts* %106, i32 0, i32 5
  %108 = call i32 @expand_number(i8* %105, i32* %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %115

111:                                              ; preds = %104
  %112 = load i8*, i8** %11, align 8
  %113 = load i8*, i8** %12, align 8
  %114 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8* %112, i8* %113)
  store i32 1, i32* %10, align 4
  br label %205

115:                                              ; preds = %104
  br label %201

116:                                              ; preds = %100
  %117 = load i8*, i8** %11, align 8
  %118 = call i64 @strncasecmp(i8* %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 5)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %116
  %121 = load i8*, i8** %12, align 8
  %122 = call i8* @strtoull(i8* %121, i8** %13, i32 0)
  %123 = load %struct.camdd_io_opts*, %struct.camdd_io_opts** %6, align 8
  %124 = getelementptr inbounds %struct.camdd_io_opts, %struct.camdd_io_opts* %123, i32 0, i32 4
  store i8* %122, i8** %124, align 8
  %125 = load i8*, i8** %13, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %120
  %130 = load i8*, i8** %12, align 8
  %131 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i8* %130)
  store i32 1, i32* %10, align 4
  br label %205

132:                                              ; preds = %120
  br label %200

133:                                              ; preds = %116
  %134 = load i8*, i8** %11, align 8
  %135 = call i64 @strncasecmp(i8* %134, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 3)
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %160

137:                                              ; preds = %133
  %138 = load i8*, i8** %12, align 8
  %139 = call i32 @strtol(i8* %138, i8** %14, i32 0)
  %140 = load %struct.camdd_io_opts*, %struct.camdd_io_opts** %6, align 8
  %141 = getelementptr inbounds %struct.camdd_io_opts, %struct.camdd_io_opts* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  %142 = load i8*, i8** %14, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %156, label %146

146:                                              ; preds = %137
  %147 = load %struct.camdd_io_opts*, %struct.camdd_io_opts** %6, align 8
  %148 = getelementptr inbounds %struct.camdd_io_opts, %struct.camdd_io_opts* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp sgt i32 %149, 16
  br i1 %150, label %156, label %151

151:                                              ; preds = %146
  %152 = load %struct.camdd_io_opts*, %struct.camdd_io_opts** %6, align 8
  %153 = getelementptr inbounds %struct.camdd_io_opts, %struct.camdd_io_opts* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %151, %146, %137
  %157 = load i8*, i8** %12, align 8
  %158 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i8* %157)
  store i32 1, i32* %10, align 4
  br label %205

159:                                              ; preds = %151
  br label %199

160:                                              ; preds = %133
  %161 = load i8*, i8** %11, align 8
  %162 = call i64 @strncasecmp(i8* %161, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 6)
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %176

164:                                              ; preds = %160
  %165 = load i8*, i8** %12, align 8
  %166 = load %struct.camdd_io_opts*, %struct.camdd_io_opts** %6, align 8
  %167 = getelementptr inbounds %struct.camdd_io_opts, %struct.camdd_io_opts* %166, i32 0, i32 3
  %168 = call i32 @expand_number(i8* %165, i32* %167)
  store i32 %168, i32* %10, align 4
  %169 = load i32, i32* %10, align 4
  %170 = icmp eq i32 %169, -1
  br i1 %170, label %171, label %175

171:                                              ; preds = %164
  %172 = load i8*, i8** %11, align 8
  %173 = load i8*, i8** %12, align 8
  %174 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8* %172, i8* %173)
  store i32 1, i32* %10, align 4
  br label %205

175:                                              ; preds = %164
  br label %198

176:                                              ; preds = %160
  %177 = load i8*, i8** %11, align 8
  %178 = call i64 @strncasecmp(i8* %177, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 5)
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %193

180:                                              ; preds = %176
  %181 = load i8*, i8** %12, align 8
  %182 = call i8* @strtoull(i8* %181, i8** %15, i32 0)
  %183 = load %struct.camdd_io_opts*, %struct.camdd_io_opts** %6, align 8
  %184 = getelementptr inbounds %struct.camdd_io_opts, %struct.camdd_io_opts* %183, i32 0, i32 2
  store i8* %182, i8** %184, align 8
  %185 = load i8*, i8** %15, align 8
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %180
  %190 = load i8*, i8** %12, align 8
  %191 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i8* %190)
  store i32 1, i32* %10, align 4
  br label %205

192:                                              ; preds = %180
  br label %197

193:                                              ; preds = %176
  %194 = load i8*, i8** %11, align 8
  %195 = load i8*, i8** %12, align 8
  %196 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i8* %194, i8* %195)
  br label %197

197:                                              ; preds = %193, %192
  br label %198

198:                                              ; preds = %197, %175
  br label %199

199:                                              ; preds = %198, %159
  br label %200

200:                                              ; preds = %199, %132
  br label %201

201:                                              ; preds = %200, %115
  br label %202

202:                                              ; preds = %201, %95
  br label %203

203:                                              ; preds = %202, %75
  br label %27

204:                                              ; preds = %27
  br label %205

205:                                              ; preds = %204, %189, %171, %156, %129, %111, %93, %73, %53, %42, %23
  %206 = load i8*, i8** %9, align 8
  %207 = call i32 @free(i8* %206)
  %208 = load i32, i32* %10, align 4
  ret i32 %208
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @expand_number(i8*, i32*) #1

declare dso_local i8* @strtoull(i8*, i8**, i32) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
