; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat_kstack.c_procstat_kstack.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat_kstack.c_procstat_kstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.procstat = type { i32 }
%struct.kinfo_proc = type { i8*, i8*, i8* }
%struct.kinfo_kstack = type { i8*, i32, i32 }

@KKST_MAXLEN = common dso_local global i32 0, align 4
@procstat_opts = common dso_local global i32 0, align 4
@PS_OPT_NOHEADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"{T:/%5s %6s %-19s %-19s %-29s}\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"PID\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"TID\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"COMM\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"TDNAME\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"KSTACK\00", align 1
@KERN_PROC_PID = common dso_local global i32 0, align 4
@KERN_PROC_INC_THREAD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"{k:process_id/%5d/%d} \00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"{:thread_id/%6d/%d} \00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"{:command/%-19s/%s} \00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"{:thread_name/%-19s/%s} \00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"{:state/%-29s/%s}\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"<running>\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"<swapped>\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@PS_OPT_VERBOSE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"{d:trace/%-29s}\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @procstat_kstack(%struct.procstat* %0, %struct.kinfo_proc* %1) #0 {
  %3 = alloca %struct.procstat*, align 8
  %4 = alloca %struct.kinfo_proc*, align 8
  %5 = alloca %struct.kinfo_kstack*, align 8
  %6 = alloca %struct.kinfo_kstack*, align 8
  %7 = alloca %struct.kinfo_proc*, align 8
  %8 = alloca %struct.kinfo_proc*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.procstat* %0, %struct.procstat** %3, align 8
  store %struct.kinfo_proc* %1, %struct.kinfo_proc** %4, align 8
  %17 = load i32, i32* @KKST_MAXLEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load i32, i32* @KKST_MAXLEN, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %24 = load i32, i32* @procstat_opts, align 4
  %25 = load i32, i32* @PS_OPT_NOHEADER, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = call i32 (i8*, i8*, ...) @xo_emit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %2
  %31 = load %struct.procstat*, %struct.procstat** %3, align 8
  %32 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %33 = call %struct.kinfo_kstack* @procstat_getkstack(%struct.procstat* %31, %struct.kinfo_proc* %32, i32* %15)
  store %struct.kinfo_kstack* %33, %struct.kinfo_kstack** %6, align 8
  store %struct.kinfo_kstack* %33, %struct.kinfo_kstack** %5, align 8
  %34 = load %struct.kinfo_kstack*, %struct.kinfo_kstack** %5, align 8
  %35 = icmp eq %struct.kinfo_kstack* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 1, i32* %16, align 4
  br label %150

37:                                               ; preds = %30
  %38 = load %struct.procstat*, %struct.procstat** %3, align 8
  %39 = load i32, i32* @KERN_PROC_PID, align 4
  %40 = load i32, i32* @KERN_PROC_INC_THREAD, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %43 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call %struct.kinfo_proc* @procstat_getprocs(%struct.procstat* %38, i32 %41, i8* %44, i32* %14)
  store %struct.kinfo_proc* %45, %struct.kinfo_proc** %8, align 8
  store %struct.kinfo_proc* %45, %struct.kinfo_proc** %7, align 8
  %46 = load %struct.kinfo_proc*, %struct.kinfo_proc** %7, align 8
  %47 = icmp eq %struct.kinfo_proc* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = load %struct.procstat*, %struct.procstat** %3, align 8
  %50 = load %struct.kinfo_kstack*, %struct.kinfo_kstack** %6, align 8
  %51 = call i32 @procstat_freekstack(%struct.procstat* %49, %struct.kinfo_kstack* %50)
  store i32 1, i32* %16, align 4
  br label %150

52:                                               ; preds = %37
  %53 = load %struct.kinfo_kstack*, %struct.kinfo_kstack** %5, align 8
  %54 = load i32, i32* %15, align 4
  %55 = call i32 @kinfo_kstack_sort(%struct.kinfo_kstack* %53, i32 %54)
  store i32 0, i32* %12, align 4
  br label %56

56:                                               ; preds = %140, %52
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %143

60:                                               ; preds = %56
  %61 = load %struct.kinfo_kstack*, %struct.kinfo_kstack** %6, align 8
  %62 = load i32, i32* %12, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.kinfo_kstack, %struct.kinfo_kstack* %61, i64 %63
  store %struct.kinfo_kstack* %64, %struct.kinfo_kstack** %5, align 8
  store %struct.kinfo_proc* null, %struct.kinfo_proc** %4, align 8
  store i32 0, i32* %13, align 4
  br label %65

65:                                               ; preds = %83, %60
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %65
  %70 = load %struct.kinfo_proc*, %struct.kinfo_proc** %8, align 8
  %71 = load i32, i32* %13, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %70, i64 %72
  store %struct.kinfo_proc* %73, %struct.kinfo_proc** %4, align 8
  %74 = load %struct.kinfo_kstack*, %struct.kinfo_kstack** %5, align 8
  %75 = getelementptr inbounds %struct.kinfo_kstack, %struct.kinfo_kstack* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %78 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = icmp eq i8* %76, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %69
  br label %86

82:                                               ; preds = %69
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %13, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %65

86:                                               ; preds = %81, %65
  %87 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %88 = icmp eq %struct.kinfo_proc* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %140

90:                                               ; preds = %86
  %91 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %92 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 (i8*, i8*, ...) @xo_emit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %93)
  %95 = load %struct.kinfo_kstack*, %struct.kinfo_kstack** %5, align 8
  %96 = getelementptr inbounds %struct.kinfo_kstack, %struct.kinfo_kstack* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 (i8*, i8*, ...) @xo_emit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %97)
  %99 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %100 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %99, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 (i8*, i8*, ...) @xo_emit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %101)
  %103 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %104 = call i8* @kinfo_proc_thread_name(%struct.kinfo_proc* %103)
  %105 = call i32 (i8*, i8*, ...) @xo_emit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* %104)
  %106 = load %struct.kinfo_kstack*, %struct.kinfo_kstack** %5, align 8
  %107 = getelementptr inbounds %struct.kinfo_kstack, %struct.kinfo_kstack* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  switch i32 %108, label %114 [
    i32 130, label %109
    i32 128, label %111
    i32 129, label %113
  ]

109:                                              ; preds = %90
  %110 = call i32 (i8*, i8*, ...) @xo_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  br label %140

111:                                              ; preds = %90
  %112 = call i32 (i8*, i8*, ...) @xo_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  br label %140

113:                                              ; preds = %90
  br label %116

114:                                              ; preds = %90
  %115 = call i32 (i8*, i8*, ...) @xo_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  br label %140

116:                                              ; preds = %113
  %117 = load %struct.kinfo_kstack*, %struct.kinfo_kstack** %5, align 8
  %118 = getelementptr inbounds %struct.kinfo_kstack, %struct.kinfo_kstack* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @procstat_opts, align 4
  %121 = load i32, i32* @PS_OPT_VERBOSE, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i32 2, i32 1
  %126 = call i32 @kstack_cleanup(i32 %119, i8* %20, i32 %125)
  %127 = call i32 @xo_open_list(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %128 = load %struct.kinfo_kstack*, %struct.kinfo_kstack** %5, align 8
  %129 = getelementptr inbounds %struct.kinfo_kstack, %struct.kinfo_kstack* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @procstat_opts, align 4
  %132 = load i32, i32* @PS_OPT_VERBOSE, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i32 2, i32 1
  %137 = call i32 @kstack_cleanup_encoded(i32 %130, i8* %23, i32 %136)
  %138 = call i32 @xo_close_list(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %139 = call i32 (i8*, i8*, ...) @xo_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i8* %20)
  br label %140

140:                                              ; preds = %116, %114, %111, %109, %89
  %141 = load i32, i32* %12, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %12, align 4
  br label %56

143:                                              ; preds = %56
  %144 = load %struct.procstat*, %struct.procstat** %3, align 8
  %145 = load %struct.kinfo_kstack*, %struct.kinfo_kstack** %6, align 8
  %146 = call i32 @procstat_freekstack(%struct.procstat* %144, %struct.kinfo_kstack* %145)
  %147 = load %struct.procstat*, %struct.procstat** %3, align 8
  %148 = load %struct.kinfo_proc*, %struct.kinfo_proc** %8, align 8
  %149 = call i32 @procstat_freeprocs(%struct.procstat* %147, %struct.kinfo_proc* %148)
  store i32 0, i32* %16, align 4
  br label %150

150:                                              ; preds = %143, %48, %36
  %151 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %151)
  %152 = load i32, i32* %16, align 4
  switch i32 %152, label %154 [
    i32 0, label %153
    i32 1, label %153
  ]

153:                                              ; preds = %150, %150
  ret void

154:                                              ; preds = %150
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @xo_emit(i8*, i8*, ...) #2

declare dso_local %struct.kinfo_kstack* @procstat_getkstack(%struct.procstat*, %struct.kinfo_proc*, i32*) #2

declare dso_local %struct.kinfo_proc* @procstat_getprocs(%struct.procstat*, i32, i8*, i32*) #2

declare dso_local i32 @procstat_freekstack(%struct.procstat*, %struct.kinfo_kstack*) #2

declare dso_local i32 @kinfo_kstack_sort(%struct.kinfo_kstack*, i32) #2

declare dso_local i8* @kinfo_proc_thread_name(%struct.kinfo_proc*) #2

declare dso_local i32 @kstack_cleanup(i32, i8*, i32) #2

declare dso_local i32 @xo_open_list(i8*) #2

declare dso_local i32 @kstack_cleanup_encoded(i32, i8*, i32) #2

declare dso_local i32 @xo_close_list(i8*) #2

declare dso_local i32 @procstat_freeprocs(%struct.procstat*, %struct.kinfo_proc*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
