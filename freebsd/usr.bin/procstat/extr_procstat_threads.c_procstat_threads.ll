; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat_threads.c_procstat_threads.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat_threads.c_procstat_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.procstat = type { i32 }
%struct.kinfo_proc = type { i8*, i32, i32, i32, i32, i8*, i8*, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@procstat_opts = common dso_local global i32 0, align 4
@PS_OPT_NOHEADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"{T:/%5s %6s %-19s %-19s %2s %4s %-7s %-9s}\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"PID\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"TID\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"COMM\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"TDNAME\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"CPU\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"PRI\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"STATE\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"WCHAN\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"{ek:process_id/%d}\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"{e:command/%s}\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"threads\00", align 1
@KERN_PROC_PID = common dso_local global i32 0, align 4
@KERN_PROC_INC_THREAD = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [48 x i8] c"Failed to allocate memory in procstat_threads()\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"{dk:process_id/%5d/%d} \00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"{:thread_id/%6d/%d} \00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"{d:command/%-19s/%s} \00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"{:thread_name/%-19s/%s} \00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"{:cpu/%3d/%d} \00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"{:cpu/%3s/%s} \00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"{:priority/%4d/%d} \00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"run\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"zomb\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"{:run_state/%-7s/%s} \00", align 1
@KI_LOCKBLOCK = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [23 x i8] c"{:lock_name/*%-8s/%s} \00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"{:wait_channel/%-9s/%s} \00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @procstat_threads(%struct.procstat* %0, %struct.kinfo_proc* %1) #0 {
  %3 = alloca %struct.procstat*, align 8
  %4 = alloca %struct.kinfo_proc*, align 8
  %5 = alloca %struct.kinfo_proc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.procstat* %0, %struct.procstat** %3, align 8
  store %struct.kinfo_proc* %1, %struct.kinfo_proc** %4, align 8
  %10 = load i32, i32* @procstat_opts, align 4
  %11 = load i32, i32* @PS_OPT_NOHEADER, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %2
  %17 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %18 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %19)
  %21 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %22 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @strlen(i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %16
  %27 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %28 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  br label %31

30:                                               ; preds = %16
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i8* [ %29, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), %30 ]
  %33 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* %32)
  %34 = call i32 @xo_open_container(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %35 = load %struct.procstat*, %struct.procstat** %3, align 8
  %36 = load i32, i32* @KERN_PROC_PID, align 4
  %37 = load i32, i32* @KERN_PROC_INC_THREAD, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %40 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %39, i32 0, i32 9
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.kinfo_proc* @procstat_getprocs(%struct.procstat* %35, i32 %38, i32 %41, i32* %6)
  store %struct.kinfo_proc* %42, %struct.kinfo_proc** %5, align 8
  %43 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %44 = icmp eq %struct.kinfo_proc* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %31
  br label %185

46:                                               ; preds = %31
  %47 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @kinfo_proc_sort(%struct.kinfo_proc* %47, i32 %48)
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %177, %46
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %180

54:                                               ; preds = %50
  %55 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %55, i64 %57
  store %struct.kinfo_proc* %58, %struct.kinfo_proc** %4, align 8
  %59 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %60 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %59, i32 0, i32 8
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @asprintf(i8** %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 %61)
  %63 = load i8*, i8** %9, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %54
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = call i32 @xo_errc(i32 1, i32 %66, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %54
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 @xo_open_container(i8* %69)
  %71 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %72 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %71, i32 0, i32 9
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i32 %73)
  %75 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %76 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 %77)
  %79 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %80 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i64 @strlen(i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %68
  %85 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %86 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  br label %89

88:                                               ; preds = %68
  br label %89

89:                                               ; preds = %88, %84
  %90 = phi i8* [ %87, %84 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), %88 ]
  %91 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8* %90)
  %92 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %93 = call i32 @kinfo_proc_thread_name(%struct.kinfo_proc* %92)
  %94 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i32 %93)
  %95 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %96 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 255
  br i1 %98, label %99, label %104

99:                                               ; preds = %89
  %100 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %101 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i32 %102)
  br label %117

104:                                              ; preds = %89
  %105 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %106 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 255
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %111 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i32 %112)
  br label %116

114:                                              ; preds = %104
  %115 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %109
  br label %117

117:                                              ; preds = %116, %99
  %118 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %119 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %118, i32 0, i32 7
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i32 %121)
  %123 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %124 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  switch i32 %125, label %133 [
    i32 132, label %126
    i32 130, label %127
    i32 131, label %128
    i32 133, label %129
    i32 129, label %130
    i32 128, label %131
    i32 134, label %132
  ]

126:                                              ; preds = %117
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i8** %8, align 8
  br label %134

127:                                              ; preds = %117
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8** %8, align 8
  br label %134

128:                                              ; preds = %117
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i8** %8, align 8
  br label %134

129:                                              ; preds = %117
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8** %8, align 8
  br label %134

130:                                              ; preds = %117
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i8** %8, align 8
  br label %134

131:                                              ; preds = %117
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i8** %8, align 8
  br label %134

132:                                              ; preds = %117
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i8** %8, align 8
  br label %134

133:                                              ; preds = %117
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i8** %8, align 8
  br label %134

134:                                              ; preds = %133, %132, %131, %130, %129, %128, %127, %126
  %135 = load i8*, i8** %8, align 8
  %136 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i64 0, i64 0), i8* %135)
  %137 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %138 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @KI_LOCKBLOCK, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %157

143:                                              ; preds = %134
  %144 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %145 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %144, i32 0, i32 5
  %146 = load i8*, i8** %145, align 8
  %147 = call i64 @strlen(i8* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %143
  %150 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %151 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %150, i32 0, i32 5
  %152 = load i8*, i8** %151, align 8
  br label %154

153:                                              ; preds = %143
  br label %154

154:                                              ; preds = %153, %149
  %155 = phi i8* [ %152, %149 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), %153 ]
  %156 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0), i8* %155)
  br label %171

157:                                              ; preds = %134
  %158 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %159 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %158, i32 0, i32 6
  %160 = load i8*, i8** %159, align 8
  %161 = call i64 @strlen(i8* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %157
  %164 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %165 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %164, i32 0, i32 6
  %166 = load i8*, i8** %165, align 8
  br label %168

167:                                              ; preds = %157
  br label %168

168:                                              ; preds = %167, %163
  %169 = phi i8* [ %166, %163 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), %167 ]
  %170 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i64 0, i64 0), i8* %169)
  br label %171

171:                                              ; preds = %168, %154
  %172 = load i8*, i8** %9, align 8
  %173 = call i32 @xo_close_container(i8* %172)
  %174 = load i8*, i8** %9, align 8
  %175 = call i32 @free(i8* %174)
  %176 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0))
  br label %177

177:                                              ; preds = %171
  %178 = load i32, i32* %7, align 4
  %179 = add i32 %178, 1
  store i32 %179, i32* %7, align 4
  br label %50

180:                                              ; preds = %50
  %181 = call i32 @xo_close_container(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %182 = load %struct.procstat*, %struct.procstat** %3, align 8
  %183 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %184 = call i32 @procstat_freeprocs(%struct.procstat* %182, %struct.kinfo_proc* %183)
  br label %185

185:                                              ; preds = %180, %45
  ret void
}

declare dso_local i32 @xo_emit(i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @xo_open_container(i8*) #1

declare dso_local %struct.kinfo_proc* @procstat_getprocs(%struct.procstat*, i32, i32, i32*) #1

declare dso_local i32 @kinfo_proc_sort(%struct.kinfo_proc*, i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i32) #1

declare dso_local i32 @xo_errc(i32, i32, i8*) #1

declare dso_local i32 @kinfo_proc_thread_name(%struct.kinfo_proc*) #1

declare dso_local i32 @xo_close_container(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @procstat_freeprocs(%struct.procstat*, %struct.kinfo_proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
