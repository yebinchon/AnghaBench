; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ktrace/extr_ktrace.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ktrace/extr_ktrace.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i32 }

@DEF_POINTS = common dso_local global i32 0, align 4
@def_tracefile = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"aCcdf:g:ip:t:\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@CLEARALL = common dso_local global i64 0, align 8
@CLEAR = common dso_local global i64 0, align 8
@KTRFLAG_DESCEND = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@NOTSET = common dso_local global i64 0, align 8
@pid = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"unknown facility in %s\00", align 1
@optind = common dso_local global i64 0, align 8
@clear = common dso_local global i64 0, align 8
@KTRFAC_INHERIT = common dso_local global i32 0, align 4
@SIGSYS = common dso_local global i32 0, align 4
@no_ktrace = common dso_local global i32 0, align 4
@KTROP_CLEAR = common dso_local global i32 0, align 4
@ALL_POINTS = common dso_local global i32 0, align 4
@KTROP_CLEARFILE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@S_IRWXG = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@DEFFILEMODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"refuse to append to %s not owned by you\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"%s not regular file\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"unlink %s\00", align 1
@O_EXCL = common dso_local global i32 0, align 4
@PROC_ABI_POINTS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"exec of '%s' failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.stat, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %6, align 4
  %15 = load i32, i32* @DEF_POINTS, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i8*, i8** @def_tracefile, align 8
  store i8* %16, i8** %12, align 8
  br label %17

17:                                               ; preds = %62, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @getopt(i32 %18, i8** %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %7, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %63

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  %24 = trunc i32 %23 to i8
  %25 = sext i8 %24 to i32
  switch i32 %25, label %60 [
    i32 97, label %26
    i32 67, label %27
    i32 99, label %30
    i32 100, label %33
    i32 102, label %37
    i32 103, label %39
    i32 105, label %45
    i32 112, label %46
    i32 116, label %50
  ]

26:                                               ; preds = %22
  store i32 1, i32* %6, align 4
  br label %62

27:                                               ; preds = %22
  %28 = load i64, i64* @CLEARALL, align 8
  %29 = call i32 @set_pid_clear(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  br label %62

30:                                               ; preds = %22
  %31 = load i64, i64* @CLEAR, align 8
  %32 = call i32 @set_pid_clear(i8* null, i64 %31)
  br label %62

33:                                               ; preds = %22
  %34 = load i32, i32* @KTRFLAG_DESCEND, align 4
  %35 = load i32, i32* %10, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %10, align 4
  br label %62

37:                                               ; preds = %22
  %38 = load i8*, i8** @optarg, align 8
  store i8* %38, i8** %12, align 8
  br label %62

39:                                               ; preds = %22
  %40 = load i8*, i8** @optarg, align 8
  %41 = load i64, i64* @NOTSET, align 8
  %42 = call i32 @set_pid_clear(i8* %40, i64 %41)
  %43 = load i64, i64* @pid, align 8
  %44 = sub nsw i64 0, %43
  store i64 %44, i64* @pid, align 8
  br label %62

45:                                               ; preds = %22
  store i32 1, i32* %9, align 4
  br label %62

46:                                               ; preds = %22
  %47 = load i8*, i8** @optarg, align 8
  %48 = load i64, i64* @NOTSET, align 8
  %49 = call i32 @set_pid_clear(i8* %47, i64 %48)
  br label %62

50:                                               ; preds = %22
  %51 = load i8*, i8** @optarg, align 8
  %52 = call i32 @getpoints(i8* %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i8*, i8** @optarg, align 8
  %57 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  %58 = call i32 (...) @usage()
  br label %59

59:                                               ; preds = %55, %50
  br label %62

60:                                               ; preds = %22
  %61 = call i32 (...) @usage()
  br label %62

62:                                               ; preds = %60, %59, %46, %45, %39, %37, %33, %30, %27, %26
  br label %17

63:                                               ; preds = %17
  %64 = load i64, i64* @optind, align 8
  %65 = load i8**, i8*** %5, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 %64
  store i8** %66, i8*** %5, align 8
  %67 = load i64, i64* @optind, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = sub nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %4, align 4
  %72 = load i64, i64* @clear, align 8
  %73 = load i64, i64* @NOTSET, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %63
  %76 = load i64, i64* @pid, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load i32, i32* %4, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = call i32 (...) @usage()
  br label %83

83:                                               ; preds = %81, %78, %75, %63
  %84 = load i64, i64* @pid, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i32, i32* %4, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = call i32 (...) @usage()
  br label %91

91:                                               ; preds = %89, %86, %83
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i32, i32* @KTRFAC_INHERIT, align 4
  %96 = load i32, i32* %11, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %94, %91
  %99 = load i32, i32* @SIGSYS, align 4
  %100 = load i32, i32* @no_ktrace, align 4
  %101 = call i32 @signal(i32 %99, i32 %100)
  %102 = load i64, i64* @clear, align 8
  %103 = load i64, i64* @NOTSET, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %137

105:                                              ; preds = %98
  %106 = load i64, i64* @clear, align 8
  %107 = load i64, i64* @CLEARALL, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = load i32, i32* @KTROP_CLEAR, align 4
  %111 = load i32, i32* @KTRFLAG_DESCEND, align 4
  %112 = or i32 %110, %111
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* @ALL_POINTS, align 4
  store i32 %113, i32* %11, align 4
  br label %125

114:                                              ; preds = %105
  %115 = load i64, i64* @pid, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = load i32, i32* @KTROP_CLEAR, align 4
  br label %121

119:                                              ; preds = %114
  %120 = load i32, i32* @KTROP_CLEARFILE, align 4
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i32 [ %118, %117 ], [ %120, %119 ]
  %123 = load i32, i32* %10, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %10, align 4
  br label %125

125:                                              ; preds = %121, %109
  %126 = load i8*, i8** %12, align 8
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %11, align 4
  %129 = load i64, i64* @pid, align 8
  %130 = call i64 @ktrace(i8* %126, i32 %127, i32 %128, i64 %129)
  %131 = icmp slt i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %125
  %133 = load i8*, i8** %12, align 8
  %134 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %133)
  br label %135

135:                                              ; preds = %132, %125
  %136 = call i32 @exit(i32 0) #3
  unreachable

137:                                              ; preds = %98
  %138 = load i32, i32* @S_IRWXG, align 4
  %139 = load i32, i32* @S_IRWXO, align 4
  %140 = or i32 %138, %139
  %141 = call i32 @umask(i32 %140)
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %178

144:                                              ; preds = %137
  %145 = load i8*, i8** %12, align 8
  %146 = load i32, i32* @O_CREAT, align 4
  %147 = load i32, i32* @O_WRONLY, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @O_NONBLOCK, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @DEFFILEMODE, align 4
  %152 = call i32 @open(i8* %145, i32 %150, i32 %151)
  store i32 %152, i32* %8, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %144
  %155 = load i8*, i8** %12, align 8
  %156 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %155)
  br label %157

157:                                              ; preds = %154, %144
  %158 = load i32, i32* %8, align 4
  %159 = call i64 @fstat(i32 %158, %struct.stat* %14)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = call i64 (...) @getuid()
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %161, %157
  %167 = load i8*, i8** %12, align 8
  %168 = call i32 @errx(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8* %167)
  br label %169

169:                                              ; preds = %166, %161
  %170 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @S_ISREG(i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %169
  %175 = load i8*, i8** %12, align 8
  %176 = call i32 @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %175)
  br label %177

177:                                              ; preds = %174, %169
  br label %203

178:                                              ; preds = %137
  %179 = load i8*, i8** %12, align 8
  %180 = call i32 @unlink(i8* %179)
  %181 = icmp eq i32 %180, -1
  br i1 %181, label %182, label %189

182:                                              ; preds = %178
  %183 = load i64, i64* @errno, align 8
  %184 = load i64, i64* @ENOENT, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %182
  %187 = load i8*, i8** %12, align 8
  %188 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %187)
  br label %189

189:                                              ; preds = %186, %182, %178
  %190 = load i8*, i8** %12, align 8
  %191 = load i32, i32* @O_CREAT, align 4
  %192 = load i32, i32* @O_EXCL, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @O_WRONLY, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* @DEFFILEMODE, align 4
  %197 = call i32 @open(i8* %190, i32 %195, i32 %196)
  store i32 %197, i32* %8, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %189
  %200 = load i8*, i8** %12, align 8
  %201 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %200)
  br label %202

202:                                              ; preds = %199, %189
  br label %203

203:                                              ; preds = %202, %177
  %204 = load i32, i32* %13, align 4
  %205 = call i32 @umask(i32 %204)
  %206 = load i32, i32* %8, align 4
  %207 = call i32 @close(i32 %206)
  %208 = load i32, i32* @PROC_ABI_POINTS, align 4
  %209 = load i32, i32* %11, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %11, align 4
  %211 = load i32, i32* %4, align 4
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %231

213:                                              ; preds = %203
  %214 = load i8*, i8** %12, align 8
  %215 = load i32, i32* %10, align 4
  %216 = load i32, i32* %11, align 4
  %217 = call i64 (...) @getpid()
  %218 = call i64 @ktrace(i8* %214, i32 %215, i32 %216, i64 %217)
  %219 = icmp slt i64 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %213
  %221 = load i8*, i8** %12, align 8
  %222 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %221)
  br label %223

223:                                              ; preds = %220, %213
  %224 = load i8**, i8*** %5, align 8
  %225 = load i8*, i8** %224, align 8
  %226 = load i8**, i8*** %5, align 8
  %227 = call i32 @execvp(i8* %225, i8** %226)
  %228 = load i8**, i8*** %5, align 8
  %229 = load i8*, i8** %228, align 8
  %230 = call i32 @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %229)
  br label %231

231:                                              ; preds = %223, %203
  %232 = load i8*, i8** %12, align 8
  %233 = load i32, i32* %10, align 4
  %234 = load i32, i32* %11, align 4
  %235 = load i64, i64* @pid, align 8
  %236 = call i64 @ktrace(i8* %232, i32 %233, i32 %234, i64 %235)
  %237 = icmp slt i64 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %231
  %239 = load i8*, i8** %12, align 8
  %240 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %239)
  br label %241

241:                                              ; preds = %238, %231
  %242 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @set_pid_clear(i8*, i64) #1

declare dso_local i32 @getpoints(i8*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i64 @ktrace(i8*, i32, i32, i64) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @umask(i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @getuid(...) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @execvp(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
