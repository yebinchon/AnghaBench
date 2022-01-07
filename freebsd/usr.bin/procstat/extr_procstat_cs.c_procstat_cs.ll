; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat_cs.c_procstat_cs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat_cs.c_procstat_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.procstat = type { i32 }
%struct.kinfo_proc = type { i8*, i32, i32, i32, i32 }
%struct.sbuf = type { i32 }

@procstat_opts = common dso_local global i32 0, align 4
@PS_OPT_NOHEADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"{T:/%5s %6s %-19s %-19s %2s %4s %-7s}\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"PID\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"TID\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"COMM\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"TDNAME\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"CPU\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"CSID\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"CPU MASK\00", align 1
@KERN_PROC_PID = common dso_local global i32 0, align 4
@KERN_PROC_INC_THREAD = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"{k:process_id/%5d/%d} \00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"{:thread_id/%6d/%d} \00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"{:command/%-19s/%s} \00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"{:thread_name/%-19s/%s} \00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"{:cpu/%3d/%d} \00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"{:cpu/%3s/%s} \00", align 1
@CPU_LEVEL_CPUSET = common dso_local global i32 0, align 4
@CPU_WHICH_TID = common dso_local global i32 0, align 4
@CPUSET_INVALID = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [22 x i8] c"{:cpu_set_id/%4d/%d} \00", align 1
@CPU_LEVEL_WHICH = common dso_local global i32 0, align 4
@CPU_SETSIZE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"-%d,%d\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c",%d\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"-%d\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"Could not generate output\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"{:cpu_set/%s}\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @procstat_cs(%struct.procstat* %0, %struct.kinfo_proc* %1) #0 {
  %3 = alloca %struct.procstat*, align 8
  %4 = alloca %struct.kinfo_proc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kinfo_proc*, align 8
  %8 = alloca %struct.sbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.procstat* %0, %struct.procstat** %3, align 8
  store %struct.kinfo_proc* %1, %struct.kinfo_proc** %4, align 8
  %15 = load i32, i32* @procstat_opts, align 4
  %16 = load i32, i32* @PS_OPT_NOHEADER, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %2
  %22 = load %struct.procstat*, %struct.procstat** %3, align 8
  %23 = load i32, i32* @KERN_PROC_PID, align 4
  %24 = load i32, i32* @KERN_PROC_INC_THREAD, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %27 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.kinfo_proc* @procstat_getprocs(%struct.procstat* %22, i32 %25, i32 %28, i32* %9)
  store %struct.kinfo_proc* %29, %struct.kinfo_proc** %7, align 8
  %30 = load %struct.kinfo_proc*, %struct.kinfo_proc** %7, align 8
  %31 = icmp eq %struct.kinfo_proc* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %190

33:                                               ; preds = %21
  %34 = load %struct.kinfo_proc*, %struct.kinfo_proc** %7, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @kinfo_proc_sort(%struct.kinfo_proc* %34, i32 %35)
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %183, %33
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %186

41:                                               ; preds = %37
  %42 = load %struct.kinfo_proc*, %struct.kinfo_proc** %7, align 8
  %43 = load i32, i32* %10, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %42, i64 %44
  store %struct.kinfo_proc* %45, %struct.kinfo_proc** %4, align 8
  %46 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %47 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %48)
  %50 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %51 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %52)
  %54 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %55 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @strlen(i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %41
  %60 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %61 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  br label %64

63:                                               ; preds = %41
  br label %64

64:                                               ; preds = %63, %59
  %65 = phi i8* [ %62, %59 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), %63 ]
  %66 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %65)
  %67 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %68 = call i32 @kinfo_proc_thread_name(%struct.kinfo_proc* %67)
  %69 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %68)
  %70 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %71 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 255
  br i1 %73, label %74, label %79

74:                                               ; preds = %64
  %75 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %76 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 %77)
  br label %92

79:                                               ; preds = %64
  %80 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %81 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 255
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %86 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 %87)
  br label %91

89:                                               ; preds = %79
  %90 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %84
  br label %92

92:                                               ; preds = %91, %74
  %93 = load i32, i32* @CPU_LEVEL_CPUSET, align 4
  %94 = load i32, i32* @CPU_WHICH_TID, align 4
  %95 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %96 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @cpuset_getid(i32 %93, i32 %94, i32 %97, i32* %5)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %92
  %101 = load i32, i32* @CPUSET_INVALID, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %100, %92
  %103 = load i32, i32* %5, align 4
  %104 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @CPUSET_INVALID, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %181

108:                                              ; preds = %102
  %109 = load i32, i32* @CPU_LEVEL_WHICH, align 4
  %110 = load i32, i32* @CPU_WHICH_TID, align 4
  %111 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %112 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @cpuset_getaffinity(i32 %109, i32 %110, i32 %113, i32 4, i32* %6)
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %181

116:                                              ; preds = %108
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %117 = call %struct.sbuf* (...) @sbuf_new_auto()
  store %struct.sbuf* %117, %struct.sbuf** %8, align 8
  store i32 0, i32* %14, align 4
  br label %118

118:                                              ; preds = %156, %116
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* @CPU_SETSIZE, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %159

122:                                              ; preds = %118
  %123 = load i32, i32* %14, align 4
  %124 = call i64 @CPU_ISSET(i32 %123, i32* %6)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %155

126:                                              ; preds = %122
  %127 = load i32, i32* %11, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %131 = load i32, i32* %14, align 4
  %132 = call i32 (%struct.sbuf*, i8*, i32, ...) @sbuf_printf(%struct.sbuf* %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32 %131)
  store i32 1, i32* %11, align 4
  br label %153

133:                                              ; preds = %126
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* %13, align 4
  %136 = add nsw i32 %135, 1
  %137 = icmp eq i32 %134, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  store i32 1, i32* %12, align 4
  br label %152

139:                                              ; preds = %133
  %140 = load i32, i32* %12, align 4
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %142, label %147

142:                                              ; preds = %139
  %143 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %14, align 4
  %146 = call i32 (%struct.sbuf*, i8*, i32, ...) @sbuf_printf(%struct.sbuf* %143, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 %144, i32 %145)
  store i32 0, i32* %12, align 4
  br label %151

147:                                              ; preds = %139
  %148 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %149 = load i32, i32* %14, align 4
  %150 = call i32 (%struct.sbuf*, i8*, i32, ...) @sbuf_printf(%struct.sbuf* %148, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 %149)
  br label %151

151:                                              ; preds = %147, %142
  br label %152

152:                                              ; preds = %151, %138
  br label %153

153:                                              ; preds = %152, %129
  %154 = load i32, i32* %14, align 4
  store i32 %154, i32* %13, align 4
  br label %155

155:                                              ; preds = %153, %122
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %14, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %14, align 4
  br label %118

159:                                              ; preds = %118
  %160 = load i32, i32* %11, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %159
  %163 = load i32, i32* %12, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %167 = load i32, i32* %13, align 4
  %168 = call i32 (%struct.sbuf*, i8*, i32, ...) @sbuf_printf(%struct.sbuf* %166, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i32 %167)
  br label %169

169:                                              ; preds = %165, %162, %159
  %170 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %171 = call i64 @sbuf_finish(%struct.sbuf* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  %174 = call i32 @xo_err(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0))
  br label %175

175:                                              ; preds = %173, %169
  %176 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %177 = call i32 @sbuf_data(%struct.sbuf* %176)
  %178 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i32 %177)
  %179 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %180 = call i32 @sbuf_delete(%struct.sbuf* %179)
  br label %181

181:                                              ; preds = %175, %108, %102
  %182 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  br label %183

183:                                              ; preds = %181
  %184 = load i32, i32* %10, align 4
  %185 = add i32 %184, 1
  store i32 %185, i32* %10, align 4
  br label %37

186:                                              ; preds = %37
  %187 = load %struct.procstat*, %struct.procstat** %3, align 8
  %188 = load %struct.kinfo_proc*, %struct.kinfo_proc** %7, align 8
  %189 = call i32 @procstat_freeprocs(%struct.procstat* %187, %struct.kinfo_proc* %188)
  br label %190

190:                                              ; preds = %186, %32
  ret void
}

declare dso_local i32 @xo_emit(i8*, ...) #1

declare dso_local %struct.kinfo_proc* @procstat_getprocs(%struct.procstat*, i32, i32, i32*) #1

declare dso_local i32 @kinfo_proc_sort(%struct.kinfo_proc*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @kinfo_proc_thread_name(%struct.kinfo_proc*) #1

declare dso_local i64 @cpuset_getid(i32, i32, i32, i32*) #1

declare dso_local i64 @cpuset_getaffinity(i32, i32, i32, i32, i32*) #1

declare dso_local %struct.sbuf* @sbuf_new_auto(...) #1

declare dso_local i64 @CPU_ISSET(i32, i32*) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i32, ...) #1

declare dso_local i64 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i32 @xo_err(i32, i8*) #1

declare dso_local i32 @sbuf_data(%struct.sbuf*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

declare dso_local i32 @procstat_freeprocs(%struct.procstat*, %struct.kinfo_proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
