; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i64, i32 }
%struct.trussinfo = type { i32, i32, i32*, i32, i32, i32* }
%struct.TYPE_2__ = type { i32, i32* }

@.str = private unnamed_addr constant [16 x i8] c"calloc() failed\00", align 1
@stderr = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"p:o:facedDs:SH\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"attempt to grab self.\00", align 1
@FOLLOWFORKS = common dso_local global i32 0, align 4
@EXECVEARGS = common dso_local global i32 0, align 4
@COUNTONLY = common dso_local global i32 0, align 4
@NOSIGS = common dso_local global i32 0, align 4
@EXECVEENVS = common dso_local global i32 0, align 4
@ABSOLUTETIMESTAMPS = common dso_local global i32 0, align 4
@RELATIVETIMESTAMPS = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"maximum string size is %s: %s\00", align 1
@DISPLAYTIDS = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"we\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"cannot open %s\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@restore_proc = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@PT_DETACH = common dso_local global i32 0, align 4
@PT_SYSCALL = common dso_local global i32 0, align 4
@CLOCK_REALTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.sigaction, align 8
  %7 = alloca %struct.trussinfo*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %8, align 8
  %13 = call i64 @calloc(i32 1, i32 32)
  %14 = inttoptr i64 %13 to %struct.trussinfo*
  store %struct.trussinfo* %14, %struct.trussinfo** %7, align 8
  %15 = load %struct.trussinfo*, %struct.trussinfo** %7, align 8
  %16 = icmp eq %struct.trussinfo* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %2
  store i64 0, i64* %11, align 8
  %20 = load i32*, i32** @stderr, align 8
  %21 = load %struct.trussinfo*, %struct.trussinfo** %7, align 8
  %22 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %21, i32 0, i32 2
  store i32* %20, i32** %22, align 8
  %23 = load %struct.trussinfo*, %struct.trussinfo** %7, align 8
  %24 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %23, i32 0, i32 0
  store i32 32, i32* %24, align 8
  %25 = load %struct.trussinfo*, %struct.trussinfo** %7, align 8
  %26 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %25, i32 0, i32 5
  store i32* null, i32** %26, align 8
  %27 = load %struct.trussinfo*, %struct.trussinfo** %7, align 8
  %28 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %27, i32 0, i32 4
  %29 = call i32 @LIST_INIT(i32* %28)
  %30 = call i32 (...) @init_syscalls()
  br label %31

31:                                               ; preds = %114, %19
  %32 = load i32, i32* %4, align 4
  %33 = load i8**, i8*** %5, align 8
  %34 = call i32 @getopt(i32 %32, i8** %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 %34, i32* %12, align 4
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %115

36:                                               ; preds = %31
  %37 = load i32, i32* %12, align 4
  switch i32 %37, label %112 [
    i32 112, label %38
    i32 102, label %47
    i32 97, label %53
    i32 99, label %59
    i32 101, label %67
    i32 100, label %73
    i32 68, label %79
    i32 111, label %85
    i32 115, label %87
    i32 83, label %100
    i32 72, label %106
  ]

38:                                               ; preds = %36
  %39 = load i8*, i8** @optarg, align 8
  %40 = call i64 @atoi(i8* %39)
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %11, align 8
  %42 = call i64 (...) @getpid()
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = call i32 (i32, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %38
  br label %114

47:                                               ; preds = %36
  %48 = load i32, i32* @FOLLOWFORKS, align 4
  %49 = load %struct.trussinfo*, %struct.trussinfo** %7, align 8
  %50 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %114

53:                                               ; preds = %36
  %54 = load i32, i32* @EXECVEARGS, align 4
  %55 = load %struct.trussinfo*, %struct.trussinfo** %7, align 8
  %56 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %114

59:                                               ; preds = %36
  %60 = load i32, i32* @COUNTONLY, align 4
  %61 = load i32, i32* @NOSIGS, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.trussinfo*, %struct.trussinfo** %7, align 8
  %64 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %114

67:                                               ; preds = %36
  %68 = load i32, i32* @EXECVEENVS, align 4
  %69 = load %struct.trussinfo*, %struct.trussinfo** %7, align 8
  %70 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %114

73:                                               ; preds = %36
  %74 = load i32, i32* @ABSOLUTETIMESTAMPS, align 4
  %75 = load %struct.trussinfo*, %struct.trussinfo** %7, align 8
  %76 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %114

79:                                               ; preds = %36
  %80 = load i32, i32* @RELATIVETIMESTAMPS, align 4
  %81 = load %struct.trussinfo*, %struct.trussinfo** %7, align 8
  %82 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %114

85:                                               ; preds = %36
  %86 = load i8*, i8** @optarg, align 8
  store i8* %86, i8** %8, align 8
  br label %114

87:                                               ; preds = %36
  %88 = load i8*, i8** @optarg, align 8
  %89 = load i32, i32* @INT_MAX, align 4
  %90 = call i32 @strtonum(i8* %88, i32 0, i32 %89, i8** %10)
  %91 = load %struct.trussinfo*, %struct.trussinfo** %7, align 8
  %92 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %87
  %96 = load i8*, i8** %10, align 8
  %97 = load i8*, i8** @optarg, align 8
  %98 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %96, i8* %97)
  br label %99

99:                                               ; preds = %95, %87
  br label %114

100:                                              ; preds = %36
  %101 = load i32, i32* @NOSIGS, align 4
  %102 = load %struct.trussinfo*, %struct.trussinfo** %7, align 8
  %103 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %114

106:                                              ; preds = %36
  %107 = load i32, i32* @DISPLAYTIDS, align 4
  %108 = load %struct.trussinfo*, %struct.trussinfo** %7, align 8
  %109 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  br label %114

112:                                              ; preds = %36
  %113 = call i32 (...) @usage()
  br label %114

114:                                              ; preds = %112, %106, %100, %99, %85, %79, %73, %67, %59, %53, %47, %46
  br label %31

115:                                              ; preds = %31
  %116 = load i64, i64* @optind, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = sub nsw i64 %118, %116
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %4, align 4
  %121 = load i64, i64* @optind, align 8
  %122 = load i8**, i8*** %5, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 %121
  store i8** %123, i8*** %5, align 8
  %124 = load i64, i64* %11, align 8
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %115
  %127 = load i32, i32* %4, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %126, %115
  %130 = load i64, i64* %11, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = load i32, i32* %4, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %132, %126
  %136 = call i32 (...) @usage()
  br label %137

137:                                              ; preds = %135, %132, %129
  %138 = load i8*, i8** %8, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %150

140:                                              ; preds = %137
  %141 = load i8*, i8** %8, align 8
  %142 = call i32* @fopen(i8* %141, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %143 = load %struct.trussinfo*, %struct.trussinfo** %7, align 8
  %144 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %143, i32 0, i32 2
  store i32* %142, i32** %144, align 8
  %145 = icmp eq i32* %142, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = load i8*, i8** %8, align 8
  %148 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %147)
  br label %149

149:                                              ; preds = %146, %140
  br label %150

150:                                              ; preds = %149, %137
  %151 = load i64, i64* %11, align 8
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %167

153:                                              ; preds = %150
  %154 = load i8**, i8*** %5, align 8
  store i8** %154, i8*** %9, align 8
  %155 = load %struct.trussinfo*, %struct.trussinfo** %7, align 8
  %156 = load i8**, i8*** %9, align 8
  %157 = call i32 @setup_and_wait(%struct.trussinfo* %155, i8** %156)
  %158 = load i32, i32* @SIGINT, align 4
  %159 = load i32, i32* @SIG_IGN, align 4
  %160 = call i32 @signal(i32 %158, i32 %159)
  %161 = load i32, i32* @SIGTERM, align 4
  %162 = load i32, i32* @SIG_IGN, align 4
  %163 = call i32 @signal(i32 %161, i32 %162)
  %164 = load i32, i32* @SIGQUIT, align 4
  %165 = load i32, i32* @SIG_IGN, align 4
  %166 = call i32 @signal(i32 %164, i32 %165)
  br label %182

167:                                              ; preds = %150
  %168 = load i32, i32* @restore_proc, align 4
  %169 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 2
  store i32 %168, i32* %169, align 8
  %170 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 1
  store i64 0, i64* %170, align 8
  %171 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 0
  %172 = call i32 @sigemptyset(i32* %171)
  %173 = load i32, i32* @SIGINT, align 4
  %174 = call i32 @sigaction(i32 %173, %struct.sigaction* %6, i32* null)
  %175 = load i32, i32* @SIGQUIT, align 4
  %176 = call i32 @sigaction(i32 %175, %struct.sigaction* %6, i32* null)
  %177 = load i32, i32* @SIGTERM, align 4
  %178 = call i32 @sigaction(i32 %177, %struct.sigaction* %6, i32* null)
  %179 = load %struct.trussinfo*, %struct.trussinfo** %7, align 8
  %180 = load i64, i64* %11, align 8
  %181 = call i32 @start_tracing(%struct.trussinfo* %179, i64 %180)
  br label %182

182:                                              ; preds = %167, %153
  %183 = load %struct.trussinfo*, %struct.trussinfo** %7, align 8
  %184 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %183, i32 0, i32 4
  %185 = call %struct.TYPE_2__* @LIST_FIRST(i32* %184)
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = icmp eq i32* %187, null
  br i1 %188, label %189, label %208

189:                                              ; preds = %182
  %190 = load i64, i64* %11, align 8
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %200

192:                                              ; preds = %189
  %193 = load %struct.trussinfo*, %struct.trussinfo** %7, align 8
  %194 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %193, i32 0, i32 4
  %195 = call %struct.TYPE_2__* @LIST_FIRST(i32* %194)
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @SIGKILL, align 4
  %199 = call i32 @kill(i32 %197, i32 %198)
  br label %200

200:                                              ; preds = %192, %189
  %201 = load i32, i32* @PT_DETACH, align 4
  %202 = load %struct.trussinfo*, %struct.trussinfo** %7, align 8
  %203 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %202, i32 0, i32 4
  %204 = call %struct.TYPE_2__* @LIST_FIRST(i32* %203)
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @ptrace(i32 %201, i32 %206, i32* null, i32 0)
  store i32 1, i32* %3, align 4
  br label %236

208:                                              ; preds = %182
  %209 = load i32, i32* @PT_SYSCALL, align 4
  %210 = load %struct.trussinfo*, %struct.trussinfo** %7, align 8
  %211 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %210, i32 0, i32 4
  %212 = call %struct.TYPE_2__* @LIST_FIRST(i32* %211)
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @ptrace(i32 %209, i32 %214, i32* inttoptr (i64 1 to i32*), i32 0)
  %216 = load i32, i32* @CLOCK_REALTIME, align 4
  %217 = load %struct.trussinfo*, %struct.trussinfo** %7, align 8
  %218 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %217, i32 0, i32 3
  %219 = call i32 @clock_gettime(i32 %216, i32* %218)
  %220 = load %struct.trussinfo*, %struct.trussinfo** %7, align 8
  %221 = call i32 @eventloop(%struct.trussinfo* %220)
  %222 = load %struct.trussinfo*, %struct.trussinfo** %7, align 8
  %223 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @COUNTONLY, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %208
  %229 = load %struct.trussinfo*, %struct.trussinfo** %7, align 8
  %230 = call i32 @print_summary(%struct.trussinfo* %229)
  br label %231

231:                                              ; preds = %228, %208
  %232 = load %struct.trussinfo*, %struct.trussinfo** %7, align 8
  %233 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %232, i32 0, i32 2
  %234 = load i32*, i32** %233, align 8
  %235 = call i32 @fflush(i32* %234)
  store i32 0, i32* %3, align 4
  br label %236

236:                                              ; preds = %231, %200
  %237 = load i32, i32* %3, align 4
  ret i32 %237
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @init_syscalls(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @strtonum(i8*, i32, i32, i8**) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @setup_and_wait(%struct.trussinfo*, i8**) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @start_tracing(%struct.trussinfo*, i64) #1

declare dso_local %struct.TYPE_2__* @LIST_FIRST(i32*) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @ptrace(i32, i32, i32*, i32) #1

declare dso_local i32 @clock_gettime(i32, i32*) #1

declare dso_local i32 @eventloop(%struct.trussinfo*) #1

declare dso_local i32 @print_summary(%struct.trussinfo*) #1

declare dso_local i32 @fflush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
