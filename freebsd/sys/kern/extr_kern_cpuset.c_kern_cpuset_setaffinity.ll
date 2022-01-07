; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_kern_cpuset_setaffinity.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_kern_cpuset_setaffinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.cpuset = type { i32 }
%struct.proc = type { i32 }

@CPU_MAXSIZE = common dso_local global i64 0, align 8
@NBBY = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@ECAPMODE = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_cpuset_setaffinity(%struct.thread* %0, i32 %1, i64 %2, i32 %3, i64 %4, %struct.TYPE_11__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.cpuset*, align 8
  %15 = alloca %struct.cpuset*, align 8
  %16 = alloca %struct.thread*, align 8
  %17 = alloca %struct.proc*, align 8
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store %struct.thread* %0, %struct.thread** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store %struct.TYPE_11__* %5, %struct.TYPE_11__** %13, align 8
  %22 = load i64, i64* %12, align 8
  %23 = icmp ult i64 %22, 4
  br i1 %23, label %30, label %24

24:                                               ; preds = %6
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* @CPU_MAXSIZE, align 8
  %27 = load i64, i64* @NBBY, align 8
  %28 = udiv i64 %26, %27
  %29 = icmp ugt i64 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24, %6
  %31 = load i32, i32* @ERANGE, align 4
  store i32 %31, i32* %7, align 4
  br label %176

32:                                               ; preds = %24
  %33 = load %struct.thread*, %struct.thread** %8, align 8
  %34 = call i64 @IN_CAPABILITY_MODE(%struct.thread* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %32
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 136
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @ECAPMODE, align 4
  store i32 %40, i32* %7, align 4
  br label %176

41:                                               ; preds = %36
  %42 = load i64, i64* %10, align 8
  %43 = icmp ne i64 %42, 128
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i64, i64* %10, align 8
  %46 = icmp ne i64 %45, 129
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @ECAPMODE, align 4
  store i32 %48, i32* %7, align 4
  br label %176

49:                                               ; preds = %44, %41
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, -1
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* @ECAPMODE, align 4
  store i32 %53, i32* %7, align 4
  br label %176

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54, %32
  %56 = load i64, i64* %12, align 8
  %57 = load i32, i32* @M_TEMP, align 4
  %58 = load i32, i32* @M_WAITOK, align 4
  %59 = load i32, i32* @M_ZERO, align 4
  %60 = or i32 %58, %59
  %61 = call %struct.TYPE_11__* @malloc(i64 %56, i32 %57, i32 %60)
  store %struct.TYPE_11__* %61, %struct.TYPE_11__** %18, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %64 = load i64, i64* %12, align 8
  %65 = call i32 @copyin(%struct.TYPE_11__* %62, %struct.TYPE_11__* %63, i64 %64)
  store i32 %65, i32* %19, align 4
  %66 = load i32, i32* %19, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  br label %171

69:                                               ; preds = %55
  %70 = load i64, i64* %12, align 8
  %71 = icmp ugt i64 %70, 4
  br i1 %71, label %72, label %95

72:                                               ; preds = %69
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = bitcast i32* %74 to i8*
  store i8* %75, i8** %21, align 8
  store i8* %75, i8** %20, align 8
  %76 = load i64, i64* %12, align 8
  %77 = load i8*, i8** %20, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 %76
  store i8* %78, i8** %20, align 8
  %79 = load i8*, i8** %21, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 4
  store i8* %80, i8** %21, align 8
  br label %81

81:                                               ; preds = %93, %72
  %82 = load i8*, i8** %21, align 8
  %83 = load i8*, i8** %20, align 8
  %84 = icmp ne i8* %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  %86 = load i8*, i8** %21, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %21, align 8
  %88 = load i8, i8* %86, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* @EINVAL, align 4
  store i32 %92, i32* %19, align 4
  br label %171

93:                                               ; preds = %85
  br label %81

94:                                               ; preds = %81
  br label %95

95:                                               ; preds = %94, %69
  %96 = load i32, i32* %9, align 4
  switch i32 %96, label %168 [
    i32 137, label %97
    i32 138, label %97
    i32 136, label %137
  ]

97:                                               ; preds = %95, %95
  %98 = load i64, i64* %10, align 8
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @cpuset_which(i64 %98, i32 %99, %struct.proc** %17, %struct.thread** %16, %struct.cpuset** %15)
  store i32 %100, i32* %19, align 4
  %101 = load i32, i32* %19, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %170

104:                                              ; preds = %97
  %105 = load i64, i64* %10, align 8
  switch i64 %105, label %120 [
    i64 128, label %106
    i64 129, label %106
    i64 135, label %117
    i64 130, label %117
    i64 132, label %118
    i64 133, label %118
    i64 131, label %118
    i64 134, label %118
  ]

106:                                              ; preds = %104, %104
  %107 = load %struct.thread*, %struct.thread** %16, align 8
  %108 = call i32 @thread_lock(%struct.thread* %107)
  %109 = load %struct.thread*, %struct.thread** %16, align 8
  %110 = getelementptr inbounds %struct.thread, %struct.thread* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call %struct.cpuset* @cpuset_ref(i32 %111)
  store %struct.cpuset* %112, %struct.cpuset** %15, align 8
  %113 = load %struct.thread*, %struct.thread** %16, align 8
  %114 = call i32 @thread_unlock(%struct.thread* %113)
  %115 = load %struct.proc*, %struct.proc** %17, align 8
  %116 = call i32 @PROC_UNLOCK(%struct.proc* %115)
  br label %120

117:                                              ; preds = %104, %104
  br label %120

118:                                              ; preds = %104, %104, %104, %104
  %119 = load i32, i32* @EINVAL, align 4
  store i32 %119, i32* %19, align 4
  br label %171

120:                                              ; preds = %104, %117, %106
  %121 = load i32, i32* %9, align 4
  %122 = icmp eq i32 %121, 137
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load %struct.cpuset*, %struct.cpuset** %15, align 8
  %125 = call %struct.cpuset* @cpuset_refroot(%struct.cpuset* %124)
  store %struct.cpuset* %125, %struct.cpuset** %14, align 8
  br label %129

126:                                              ; preds = %120
  %127 = load %struct.cpuset*, %struct.cpuset** %15, align 8
  %128 = call %struct.cpuset* @cpuset_refbase(%struct.cpuset* %127)
  store %struct.cpuset* %128, %struct.cpuset** %14, align 8
  br label %129

129:                                              ; preds = %126, %123
  %130 = load %struct.cpuset*, %struct.cpuset** %14, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %132 = call i32 @cpuset_modify(%struct.cpuset* %130, %struct.TYPE_11__* %131)
  store i32 %132, i32* %19, align 4
  %133 = load %struct.cpuset*, %struct.cpuset** %14, align 8
  %134 = call i32 @cpuset_rel(%struct.cpuset* %133)
  %135 = load %struct.cpuset*, %struct.cpuset** %15, align 8
  %136 = call i32 @cpuset_rel(%struct.cpuset* %135)
  br label %170

137:                                              ; preds = %95
  %138 = load i64, i64* %10, align 8
  switch i64 %138, label %165 [
    i64 128, label %139
    i64 129, label %143
    i64 135, label %147
    i64 130, label %147
    i64 132, label %160
    i64 133, label %160
    i64 131, label %160
  ]

139:                                              ; preds = %137
  %140 = load i32, i32* %11, align 4
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %142 = call i32 @cpuset_setthread(i32 %140, %struct.TYPE_11__* %141)
  store i32 %142, i32* %19, align 4
  br label %167

143:                                              ; preds = %137
  %144 = load i32, i32* %11, align 4
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %146 = call i32 @cpuset_setproc(i32 %144, i32* null, %struct.TYPE_11__* %145, i32* null)
  store i32 %146, i32* %19, align 4
  br label %167

147:                                              ; preds = %137, %137
  %148 = load i64, i64* %10, align 8
  %149 = load i32, i32* %11, align 4
  %150 = call i32 @cpuset_which(i64 %148, i32 %149, %struct.proc** %17, %struct.thread** %16, %struct.cpuset** %15)
  store i32 %150, i32* %19, align 4
  %151 = load i32, i32* %19, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %147
  %154 = load %struct.cpuset*, %struct.cpuset** %15, align 8
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %156 = call i32 @cpuset_modify(%struct.cpuset* %154, %struct.TYPE_11__* %155)
  store i32 %156, i32* %19, align 4
  %157 = load %struct.cpuset*, %struct.cpuset** %15, align 8
  %158 = call i32 @cpuset_rel(%struct.cpuset* %157)
  br label %159

159:                                              ; preds = %153, %147
  br label %167

160:                                              ; preds = %137, %137, %137
  %161 = load i32, i32* %11, align 4
  %162 = load i64, i64* %10, align 8
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %164 = call i32 @intr_setaffinity(i32 %161, i64 %162, %struct.TYPE_11__* %163)
  store i32 %164, i32* %19, align 4
  br label %167

165:                                              ; preds = %137
  %166 = load i32, i32* @EINVAL, align 4
  store i32 %166, i32* %19, align 4
  br label %167

167:                                              ; preds = %165, %160, %159, %143, %139
  br label %170

168:                                              ; preds = %95
  %169 = load i32, i32* @EINVAL, align 4
  store i32 %169, i32* %19, align 4
  br label %170

170:                                              ; preds = %168, %167, %129, %103
  br label %171

171:                                              ; preds = %170, %118, %91, %68
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %173 = load i32, i32* @M_TEMP, align 4
  %174 = call i32 @free(%struct.TYPE_11__* %172, i32 %173)
  %175 = load i32, i32* %19, align 4
  store i32 %175, i32* %7, align 4
  br label %176

176:                                              ; preds = %171, %52, %47, %39, %30
  %177 = load i32, i32* %7, align 4
  ret i32 %177
}

declare dso_local i64 @IN_CAPABILITY_MODE(%struct.thread*) #1

declare dso_local %struct.TYPE_11__* @malloc(i64, i32, i32) #1

declare dso_local i32 @copyin(%struct.TYPE_11__*, %struct.TYPE_11__*, i64) #1

declare dso_local i32 @cpuset_which(i64, i32, %struct.proc**, %struct.thread**, %struct.cpuset**) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local %struct.cpuset* @cpuset_ref(i32) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local %struct.cpuset* @cpuset_refroot(%struct.cpuset*) #1

declare dso_local %struct.cpuset* @cpuset_refbase(%struct.cpuset*) #1

declare dso_local i32 @cpuset_modify(%struct.cpuset*, %struct.TYPE_11__*) #1

declare dso_local i32 @cpuset_rel(%struct.cpuset*) #1

declare dso_local i32 @cpuset_setthread(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @cpuset_setproc(i32, i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @intr_setaffinity(i32, i64, %struct.TYPE_11__*) #1

declare dso_local i32 @free(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
