; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat_sigs.c_procstat_threads_sigs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat_sigs.c_procstat_threads_sigs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.procstat = type { i32 }
%struct.kinfo_proc = type { i32, i32, i32, i32, i32 }

@procstat_opts = common dso_local global i32 0, align 4
@PS_OPT_NOHEADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"{T:/%5s %6s %-16s %-7s %4s}\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"PID\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"TID\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"COMM\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"SIG\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"FLAGS\00", align 1
@KERN_PROC_PID = common dso_local global i32 0, align 4
@KERN_PROC_INC_THREAD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"{ek:process_id/%5d/%d}\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"{e:command/%-16s/%s}\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"threads\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [53 x i8] c"Failed to allocate memory in procstat_threads_sigs()\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"{e:thread_id/%6d/%d}\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"signals\00", align 1
@_SIG_MAXSIG = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [24 x i8] c"{dk:process_id/%5d/%d} \00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"{d:thread_id/%6d/%d} \00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"{d:command/%-16s/%s} \00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @procstat_threads_sigs(%struct.procstat* %0, %struct.kinfo_proc* %1) #0 {
  %3 = alloca %struct.procstat*, align 8
  %4 = alloca %struct.kinfo_proc*, align 8
  %5 = alloca %struct.kinfo_proc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.procstat* %0, %struct.procstat** %3, align 8
  store %struct.kinfo_proc* %1, %struct.kinfo_proc** %4, align 8
  %10 = load i32, i32* @procstat_opts, align 4
  %11 = load i32, i32* @PS_OPT_NOHEADER, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %2
  %17 = load %struct.procstat*, %struct.procstat** %3, align 8
  %18 = load i32, i32* @KERN_PROC_PID, align 4
  %19 = load i32, i32* @KERN_PROC_INC_THREAD, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %22 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.kinfo_proc* @procstat_getprocs(%struct.procstat* %17, i32 %20, i32 %23, i32* %7)
  store %struct.kinfo_proc* %24, %struct.kinfo_proc** %5, align 8
  %25 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %26 = icmp eq %struct.kinfo_proc* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %115

28:                                               ; preds = %16
  %29 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %30 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %31)
  %33 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %34 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %35)
  %37 = call i32 @xo_open_container(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %38 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @kinfo_proc_sort(%struct.kinfo_proc* %38, i32 %39)
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %107, %28
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %110

45:                                               ; preds = %41
  %46 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %46, i64 %48
  store %struct.kinfo_proc* %49, %struct.kinfo_proc** %4, align 8
  %50 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %51 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @asprintf(i8** %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %52)
  %54 = load i8*, i8** %9, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %45
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = call i32 @xo_errc(i32 1, i32 %57, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %45
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @xo_open_container(i8* %60)
  %62 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %63 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 %64)
  %66 = call i32 @xo_open_container(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %67

67:                                               ; preds = %98, %59
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @_SIG_MAXSIG, align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %71, label %101

71:                                               ; preds = %67
  %72 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %73 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %74)
  %76 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %77 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 %78)
  %80 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %81 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @procstat_print_signame(i32 %84)
  %86 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %87 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %88 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %87, i32 0, i32 1
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @procstat_print_sig(i32* %88, i32 %89, i8 signext 80)
  %91 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %92 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %91, i32 0, i32 0
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @procstat_print_sig(i32* %92, i32 %93, i8 signext 66)
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @procstat_close_signame(i32 %95)
  %97 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  br label %98

98:                                               ; preds = %71
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %67

101:                                              ; preds = %67
  %102 = call i32 @xo_close_container(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %103 = load i8*, i8** %9, align 8
  %104 = call i32 @xo_close_container(i8* %103)
  %105 = load i8*, i8** %9, align 8
  %106 = call i32 @free(i8* %105)
  br label %107

107:                                              ; preds = %101
  %108 = load i32, i32* %8, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %41

110:                                              ; preds = %41
  %111 = call i32 @xo_close_container(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %112 = load %struct.procstat*, %struct.procstat** %3, align 8
  %113 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %114 = call i32 @procstat_freeprocs(%struct.procstat* %112, %struct.kinfo_proc* %113)
  br label %115

115:                                              ; preds = %110, %27
  ret void
}

declare dso_local i32 @xo_emit(i8*, ...) #1

declare dso_local %struct.kinfo_proc* @procstat_getprocs(%struct.procstat*, i32, i32, i32*) #1

declare dso_local i32 @xo_open_container(i8*) #1

declare dso_local i32 @kinfo_proc_sort(%struct.kinfo_proc*, i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i32) #1

declare dso_local i32 @xo_errc(i32, i32, i8*) #1

declare dso_local i32 @procstat_print_signame(i32) #1

declare dso_local i32 @procstat_print_sig(i32*, i32, i8 signext) #1

declare dso_local i32 @procstat_close_signame(i32) #1

declare dso_local i32 @xo_close_container(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @procstat_freeprocs(%struct.procstat*, %struct.kinfo_proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
