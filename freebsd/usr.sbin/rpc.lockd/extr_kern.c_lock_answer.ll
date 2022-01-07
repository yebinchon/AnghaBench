; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_kern.c_lock_answer.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_kern.c_lock_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.lockd_ans = type { i32, i32, %struct.TYPE_5__, i8* }
%struct.TYPE_5__ = type { i32, i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"inedible nlm cookie\00", align 1
@d_calls = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"lock answer: pid %lu: %s %d\00", align 1
@NLM_VERS4 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"nlmv4\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"nlmv3\00", align 1
@EACCES = common dso_local global i8* null, align 8
@EAGAIN = common dso_local global i8* null, align 8
@EDEADLK = common dso_local global i8* null, align 8
@EROFS = common dso_local global i8* null, align 8
@ESTALE = common dso_local global i8* null, align 8
@EFBIG = common dso_local global i8* null, align 8
@LOCKD_ANS_VERSION = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EPIPE = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i64 0, align 8
@LOG_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"process %lu: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lock_answer(i32 %0, %struct.TYPE_4__* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.lockd_ans, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %16, 8
  br i1 %17, label %18, label %30

18:                                               ; preds = %5
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @LOG_ERR, align 4
  %23 = call i32 (i32, i8*, ...) @syslog(i32 %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %154

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  %26 = getelementptr inbounds %struct.lockd_ans, %struct.lockd_ans* %12, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = getelementptr inbounds %struct.lockd_ans, %struct.lockd_ans* %12, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  store i32 -1, i32* %29, align 4
  br label %36

30:                                               ; preds = %5
  %31 = getelementptr inbounds %struct.lockd_ans, %struct.lockd_ans* %12, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @memcpy(%struct.TYPE_5__* %31, i32 %34, i32 8)
  br label %36

36:                                               ; preds = %30, %24
  %37 = load i64, i64* @d_calls, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = load i32, i32* @LOG_DEBUG, align 4
  %41 = getelementptr inbounds %struct.lockd_ans, %struct.lockd_ans* %12, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @NLM_VERS4, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %50 = load i32, i32* %9, align 4
  %51 = call i32 (i32, i8*, ...) @syslog(i32 %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %44, i8* %49, i32 %50)
  br label %52

52:                                               ; preds = %39, %36
  %53 = getelementptr inbounds %struct.lockd_ans, %struct.lockd_ans* %12, i32 0, i32 0
  store i32 0, i32* %53, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @NLM_VERS4, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %100

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  switch i32 %58, label %61 [
    i32 136, label %59
    i32 141, label %64
    i32 139, label %77
    i32 143, label %80
    i32 140, label %81
    i32 142, label %84
    i32 135, label %87
    i32 134, label %90
    i32 137, label %93
    i32 138, label %96
  ]

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.lockd_ans, %struct.lockd_ans* %12, i32 0, i32 3
  store i8* null, i8** %60, align 8
  br label %99

61:                                               ; preds = %57
  %62 = load i8*, i8** @EACCES, align 8
  %63 = getelementptr inbounds %struct.lockd_ans, %struct.lockd_ans* %12, i32 0, i32 3
  store i8* %62, i8** %63, align 8
  br label %99

64:                                               ; preds = %57
  %65 = load i32*, i32** %10, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i8*, i8** @EAGAIN, align 8
  %69 = getelementptr inbounds %struct.lockd_ans, %struct.lockd_ans* %12, i32 0, i32 3
  store i8* %68, i8** %69, align 8
  br label %76

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.lockd_ans, %struct.lockd_ans* %12, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.lockd_ans, %struct.lockd_ans* %12, i32 0, i32 1
  store i32 %73, i32* %74, align 4
  %75 = getelementptr inbounds %struct.lockd_ans, %struct.lockd_ans* %12, i32 0, i32 3
  store i8* null, i8** %75, align 8
  br label %76

76:                                               ; preds = %70, %67
  br label %99

77:                                               ; preds = %57
  %78 = load i8*, i8** @EAGAIN, align 8
  %79 = getelementptr inbounds %struct.lockd_ans, %struct.lockd_ans* %12, i32 0, i32 3
  store i8* %78, i8** %79, align 8
  br label %99

80:                                               ; preds = %57
  store i32 -1, i32* %6, align 4
  br label %154

81:                                               ; preds = %57
  %82 = load i8*, i8** @EAGAIN, align 8
  %83 = getelementptr inbounds %struct.lockd_ans, %struct.lockd_ans* %12, i32 0, i32 3
  store i8* %82, i8** %83, align 8
  br label %99

84:                                               ; preds = %57
  %85 = load i8*, i8** @EDEADLK, align 8
  %86 = getelementptr inbounds %struct.lockd_ans, %struct.lockd_ans* %12, i32 0, i32 3
  store i8* %85, i8** %86, align 8
  br label %99

87:                                               ; preds = %57
  %88 = load i8*, i8** @EROFS, align 8
  %89 = getelementptr inbounds %struct.lockd_ans, %struct.lockd_ans* %12, i32 0, i32 3
  store i8* %88, i8** %89, align 8
  br label %99

90:                                               ; preds = %57
  %91 = load i8*, i8** @ESTALE, align 8
  %92 = getelementptr inbounds %struct.lockd_ans, %struct.lockd_ans* %12, i32 0, i32 3
  store i8* %91, i8** %92, align 8
  br label %99

93:                                               ; preds = %57
  %94 = load i8*, i8** @EFBIG, align 8
  %95 = getelementptr inbounds %struct.lockd_ans, %struct.lockd_ans* %12, i32 0, i32 3
  store i8* %94, i8** %95, align 8
  br label %99

96:                                               ; preds = %57
  %97 = load i8*, i8** @EACCES, align 8
  %98 = getelementptr inbounds %struct.lockd_ans, %struct.lockd_ans* %12, i32 0, i32 3
  store i8* %97, i8** %98, align 8
  br label %99

99:                                               ; preds = %96, %93, %90, %87, %84, %81, %77, %76, %61, %59
  br label %131

100:                                              ; preds = %52
  %101 = load i32, i32* %9, align 4
  switch i32 %101, label %104 [
    i32 128, label %102
    i32 131, label %107
    i32 129, label %120
    i32 133, label %123
    i32 130, label %124
    i32 132, label %127
  ]

102:                                              ; preds = %100
  %103 = getelementptr inbounds %struct.lockd_ans, %struct.lockd_ans* %12, i32 0, i32 3
  store i8* null, i8** %103, align 8
  br label %130

104:                                              ; preds = %100
  %105 = load i8*, i8** @EACCES, align 8
  %106 = getelementptr inbounds %struct.lockd_ans, %struct.lockd_ans* %12, i32 0, i32 3
  store i8* %105, i8** %106, align 8
  br label %130

107:                                              ; preds = %100
  %108 = load i32*, i32** %10, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i8*, i8** @EAGAIN, align 8
  %112 = getelementptr inbounds %struct.lockd_ans, %struct.lockd_ans* %12, i32 0, i32 3
  store i8* %111, i8** %112, align 8
  br label %119

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.lockd_ans, %struct.lockd_ans* %12, i32 0, i32 0
  store i32 1, i32* %114, align 8
  %115 = load i32*, i32** %10, align 8
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.lockd_ans, %struct.lockd_ans* %12, i32 0, i32 1
  store i32 %116, i32* %117, align 4
  %118 = getelementptr inbounds %struct.lockd_ans, %struct.lockd_ans* %12, i32 0, i32 3
  store i8* null, i8** %118, align 8
  br label %119

119:                                              ; preds = %113, %110
  br label %130

120:                                              ; preds = %100
  %121 = load i8*, i8** @EAGAIN, align 8
  %122 = getelementptr inbounds %struct.lockd_ans, %struct.lockd_ans* %12, i32 0, i32 3
  store i8* %121, i8** %122, align 8
  br label %130

123:                                              ; preds = %100
  store i32 -1, i32* %6, align 4
  br label %154

124:                                              ; preds = %100
  %125 = load i8*, i8** @EAGAIN, align 8
  %126 = getelementptr inbounds %struct.lockd_ans, %struct.lockd_ans* %12, i32 0, i32 3
  store i8* %125, i8** %126, align 8
  br label %130

127:                                              ; preds = %100
  %128 = load i8*, i8** @EDEADLK, align 8
  %129 = getelementptr inbounds %struct.lockd_ans, %struct.lockd_ans* %12, i32 0, i32 3
  store i8* %128, i8** %129, align 8
  br label %130

130:                                              ; preds = %127, %124, %120, %119, %104, %102
  br label %131

131:                                              ; preds = %130, %99
  %132 = load i32, i32* @LOCKD_ANS_VERSION, align 4
  %133 = call i64 @nfslockdans(i32 %132, %struct.lockd_ans* %12)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %153

135:                                              ; preds = %131
  %136 = load i64, i64* @errno, align 8
  %137 = load i64, i64* @EPIPE, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %143, label %139

139:                                              ; preds = %135
  %140 = load i64, i64* @errno, align 8
  %141 = load i64, i64* @ESRCH, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %139, %135
  %144 = load i32, i32* @LOG_INFO, align 4
  br label %147

145:                                              ; preds = %139
  %146 = load i32, i32* @LOG_ERR, align 4
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i32 [ %144, %143 ], [ %146, %145 ]
  %149 = getelementptr inbounds %struct.lockd_ans, %struct.lockd_ans* %12, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 (i32, i8*, ...) @syslog(i32 %148, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %151)
  store i32 -1, i32* %6, align 4
  br label %154

153:                                              ; preds = %131
  store i32 0, i32* %6, align 4
  br label %154

154:                                              ; preds = %153, %147, %123, %80, %21
  %155 = load i32, i32* %6, align 4
  ret i32 %155
}

declare dso_local i32 @syslog(i32, i8*, ...) #1

declare dso_local i32 @memcpy(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @nfslockdans(i32, %struct.lockd_ans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
