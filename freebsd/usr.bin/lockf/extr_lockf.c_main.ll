; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/lockf/extr_lockf.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/lockf/extr_lockf.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i64, i32, i32 }

@keep = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"sknt:\00", align 1
@optarg = common dso_local global i8* null, align 8
@EX_USAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid timeout \22%s\22\00", align 1
@optind = common dso_local global i32 0, align 4
@lockname = common dso_local global i8* null, align 8
@timeout = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@lockfd = common dso_local global i32 0, align 4
@timed_out = common dso_local global i32 0, align 4
@EX_TEMPFAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"%s: already locked\00", align 1
@cleanup = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"atexit failed\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"cannot fork\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@killed = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"waitpid failed\00", align 1
@EX_SOFTWARE = common dso_local global i32 0, align 4

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
  %13 = alloca %struct.sigaction, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* @keep, align 4
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* @O_CREAT, align 4
  store i32 %14, i32* %7, align 4
  store i32 -1, i32* %10, align 4
  br label %15

15:                                               ; preds = %51, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %6, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %52

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %49 [
    i32 107, label %22
    i32 110, label %23
    i32 115, label %28
    i32 116, label %29
  ]

22:                                               ; preds = %20
  store i32 1, i32* @keep, align 4
  br label %51

23:                                               ; preds = %20
  %24 = load i32, i32* @O_CREAT, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %7, align 4
  br label %51

28:                                               ; preds = %20
  store i32 1, i32* %8, align 4
  br label %51

29:                                               ; preds = %20
  %30 = load i8*, i8** @optarg, align 8
  %31 = call i32 @strtol(i8* %30, i8** %12, i32 0)
  store i32 %31, i32* %10, align 4
  %32 = load i8*, i8** @optarg, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %29
  %37 = load i8*, i8** %12, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41, %36, %29
  %45 = load i32, i32* @EX_USAGE, align 4
  %46 = load i8*, i8** @optarg, align 8
  %47 = call i32 @errx(i32 %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %44, %41
  br label %51

49:                                               ; preds = %20
  %50 = call i32 (...) @usage()
  br label %51

51:                                               ; preds = %49, %48, %28, %23, %22
  br label %15

52:                                               ; preds = %15
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @optind, align 4
  %55 = sub nsw i32 %53, %54
  %56 = icmp slt i32 %55, 2
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = call i32 (...) @usage()
  br label %59

59:                                               ; preds = %57, %52
  %60 = load i8**, i8*** %5, align 8
  %61 = load i32, i32* @optind, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* @optind, align 4
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8*, i8** %60, i64 %63
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** @lockname, align 8
  %66 = load i32, i32* @optind, align 4
  %67 = load i32, i32* %4, align 4
  %68 = sub nsw i32 %67, %66
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* @optind, align 4
  %70 = load i8**, i8*** %5, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8*, i8** %70, i64 %71
  store i8** %72, i8*** %5, align 8
  %73 = load i32, i32* %10, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %59
  %76 = load i32, i32* @timeout, align 4
  %77 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %13, i32 0, i32 2
  store i32 %76, i32* %77, align 4
  %78 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %13, i32 0, i32 1
  %79 = call i32 @sigemptyset(i32* %78)
  %80 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %13, i32 0, i32 0
  store i64 0, i64* %80, align 8
  %81 = load i32, i32* @SIGALRM, align 4
  %82 = call i32 @sigaction(i32 %81, %struct.sigaction* %13, i32* null)
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @alarm(i32 %83)
  br label %85

85:                                               ; preds = %75, %59
  %86 = load i8*, i8** @lockname, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @O_NONBLOCK, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @acquire_lock(i8* %86, i32 %89)
  store i32 %90, i32* @lockfd, align 4
  br label %91

91:                                               ; preds = %117, %85
  %92 = load i32, i32* @lockfd, align 4
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load i32, i32* @timed_out, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br label %100

100:                                              ; preds = %97, %94, %91
  %101 = phi i1 [ false, %94 ], [ false, %91 ], [ %99, %97 ]
  br i1 %101, label %102, label %118

102:                                              ; preds = %100
  %103 = load i32, i32* @keep, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i8*, i8** @lockname, align 8
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @acquire_lock(i8* %106, i32 %107)
  store i32 %108, i32* @lockfd, align 4
  br label %117

109:                                              ; preds = %102
  %110 = load i8*, i8** @lockname, align 8
  %111 = call i32 @wait_for_lock(i8* %110)
  %112 = load i8*, i8** @lockname, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @O_NONBLOCK, align 4
  %115 = or i32 %113, %114
  %116 = call i32 @acquire_lock(i8* %112, i32 %115)
  store i32 %116, i32* @lockfd, align 4
  br label %117

117:                                              ; preds = %109, %105
  br label %91

118:                                              ; preds = %100
  %119 = load i32, i32* %10, align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = call i32 @alarm(i32 0)
  br label %123

123:                                              ; preds = %121, %118
  %124 = load i32, i32* @lockfd, align 4
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %126, label %136

126:                                              ; preds = %123
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i32, i32* @EX_TEMPFAIL, align 4
  %131 = call i32 @exit(i32 %130) #3
  unreachable

132:                                              ; preds = %126
  %133 = load i32, i32* @EX_TEMPFAIL, align 4
  %134 = load i8*, i8** @lockname, align 8
  %135 = call i32 @errx(i32 %133, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %134)
  br label %136

136:                                              ; preds = %132, %123
  %137 = load i32, i32* @cleanup, align 4
  %138 = call i32 @atexit(i32 %137)
  %139 = icmp eq i32 %138, -1
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load i32, i32* @EX_OSERR, align 4
  %142 = call i32 @err(i32 %141, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %143

143:                                              ; preds = %140, %136
  %144 = call i32 (...) @fork()
  store i32 %144, i32* %11, align 4
  %145 = icmp eq i32 %144, -1
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i32, i32* @EX_OSERR, align 4
  %148 = call i32 @err(i32 %147, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %149

149:                                              ; preds = %146, %143
  %150 = load i32, i32* %11, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %165

152:                                              ; preds = %149
  %153 = load i32, i32* @lockfd, align 4
  %154 = call i32 @close(i32 %153)
  %155 = load i8**, i8*** %5, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 0
  %157 = load i8*, i8** %156, align 8
  %158 = load i8**, i8*** %5, align 8
  %159 = call i32 @execvp(i8* %157, i8** %158)
  %160 = load i8**, i8*** %5, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i64 0
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %162)
  %164 = call i32 @_exit(i32 1) #3
  unreachable

165:                                              ; preds = %149
  %166 = load i32, i32* @SIGINT, align 4
  %167 = load i32, i32* @SIG_IGN, align 4
  %168 = call i32 @signal(i32 %166, i32 %167)
  %169 = load i32, i32* @SIGQUIT, align 4
  %170 = load i32, i32* @SIG_IGN, align 4
  %171 = call i32 @signal(i32 %169, i32 %170)
  %172 = load i32, i32* @SIGTERM, align 4
  %173 = load i32, i32* @killed, align 4
  %174 = call i32 @signal(i32 %172, i32 %173)
  %175 = load i32, i32* %11, align 4
  %176 = call i32 @waitpid(i32 %175, i32* %9, i32 0)
  %177 = icmp eq i32 %176, -1
  br i1 %177, label %178, label %181

178:                                              ; preds = %165
  %179 = load i32, i32* @EX_OSERR, align 4
  %180 = call i32 @err(i32 %179, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %181

181:                                              ; preds = %178, %165
  %182 = load i32, i32* %9, align 4
  %183 = call i64 @WIFEXITED(i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  %186 = load i32, i32* %9, align 4
  %187 = call i32 @WEXITSTATUS(i32 %186)
  br label %190

188:                                              ; preds = %181
  %189 = load i32, i32* @EX_SOFTWARE, align 4
  br label %190

190:                                              ; preds = %188, %185
  %191 = phi i32 [ %187, %185 ], [ %189, %188 ]
  ret i32 %191
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @acquire_lock(i8*, i32) #1

declare dso_local i32 @wait_for_lock(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @atexit(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @execvp(i8*, i8**) #1

declare dso_local i32 @warn(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
