; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat_rusage.c_procstat_rusage.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat_rusage.c_procstat_rusage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.procstat = type { i32 }
%struct.kinfo_proc = type { i8*, i8* }

@procstat_opts = common dso_local global i32 0, align 4
@PS_OPT_NOHEADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"{d:ta/%5s} \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"PID\00", align 1
@PS_OPT_PERTHREAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"{d:tb/%6s} \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"TID\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"{d:tc/%-16s %-32s %14s}\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"COMM\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"RESOURCE\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"VALUE        \00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"{e:process_id/%d}\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"{e:command/%s}\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"threads\00", align 1
@KERN_PROC_PID = common dso_local global i32 0, align 4
@KERN_PROC_INC_THREAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @procstat_rusage(%struct.procstat* %0, %struct.kinfo_proc* %1) #0 {
  %3 = alloca %struct.procstat*, align 8
  %4 = alloca %struct.kinfo_proc*, align 8
  %5 = alloca %struct.kinfo_proc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.procstat* %0, %struct.procstat** %3, align 8
  store %struct.kinfo_proc* %1, %struct.kinfo_proc** %4, align 8
  %8 = load i32, i32* @procstat_opts, align 4
  %9 = load i32, i32* @PS_OPT_NOHEADER, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = call i32 (i8*, i8*, ...) @xo_emit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @procstat_opts, align 4
  %15 = load i32, i32* @PS_OPT_PERTHREAD, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = call i32 (i8*, i8*, ...) @xo_emit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %12
  %21 = call i32 (i8*, i8*, ...) @xo_emit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %2
  %23 = load i32, i32* @procstat_opts, align 4
  %24 = load i32, i32* @PS_OPT_PERTHREAD, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %29 = call i32 @print_rusage(%struct.kinfo_proc* %28)
  br label %73

30:                                               ; preds = %22
  %31 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %32 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i8*, i8*, ...) @xo_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* %33)
  %35 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %36 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 (i8*, i8*, ...) @xo_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* %37)
  %39 = call i32 @xo_open_container(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %40 = load %struct.procstat*, %struct.procstat** %3, align 8
  %41 = load i32, i32* @KERN_PROC_PID, align 4
  %42 = load i32, i32* @KERN_PROC_INC_THREAD, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %45 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call %struct.kinfo_proc* @procstat_getprocs(%struct.procstat* %40, i32 %43, i8* %46, i32* %6)
  store %struct.kinfo_proc* %47, %struct.kinfo_proc** %5, align 8
  %48 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %49 = icmp eq %struct.kinfo_proc* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %30
  br label %73

51:                                               ; preds = %30
  %52 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @kinfo_proc_sort(%struct.kinfo_proc* %52, i32 %53)
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %65, %51
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %60, i64 %62
  %64 = call i32 @print_rusage(%struct.kinfo_proc* %63)
  br label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %7, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %55

68:                                               ; preds = %55
  %69 = call i32 @xo_close_container(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %70 = load %struct.procstat*, %struct.procstat** %3, align 8
  %71 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %72 = call i32 @procstat_freeprocs(%struct.procstat* %70, %struct.kinfo_proc* %71)
  br label %73

73:                                               ; preds = %68, %50, %27
  ret void
}

declare dso_local i32 @xo_emit(i8*, i8*, ...) #1

declare dso_local i32 @print_rusage(%struct.kinfo_proc*) #1

declare dso_local i32 @xo_open_container(i8*) #1

declare dso_local %struct.kinfo_proc* @procstat_getprocs(%struct.procstat*, i32, i8*, i32*) #1

declare dso_local i32 @kinfo_proc_sort(%struct.kinfo_proc*, i32) #1

declare dso_local i32 @xo_close_container(i8*) #1

declare dso_local i32 @procstat_freeprocs(%struct.procstat*, %struct.kinfo_proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
