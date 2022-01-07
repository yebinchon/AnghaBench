; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat_args.c_procstat_env.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat_args.c_procstat_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.procstat = type { i32 }
%struct.kinfo_proc = type { i32, i32 }

@procstat_opts = common dso_local global i32 0, align 4
@PS_OPT_NOHEADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"{T:/%5s %-16s %-53s}\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"PID\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"COMM\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"ENVIRONMENT\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"{k:process_id/%5d/%d} {:command/%-16s/%s}\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c" {d:env/-}\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"environment\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c" {l:env/%s}\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @procstat_env(%struct.procstat* %0, %struct.kinfo_proc* %1) #0 {
  %3 = alloca %struct.procstat*, align 8
  %4 = alloca %struct.kinfo_proc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  store %struct.procstat* %0, %struct.procstat** %3, align 8
  store %struct.kinfo_proc* %1, %struct.kinfo_proc** %4, align 8
  %7 = load i32, i32* @procstat_opts, align 4
  %8 = load i32, i32* @PS_OPT_NOHEADER, align 4
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  %14 = load %struct.procstat*, %struct.procstat** %3, align 8
  %15 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %16 = call i8** @procstat_getenvv(%struct.procstat* %14, %struct.kinfo_proc* %15, i32 0)
  store i8** %16, i8*** %6, align 8
  %17 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %18 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %21 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %19, i32 %22)
  %24 = load i8**, i8*** %6, align 8
  %25 = icmp eq i8** %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %13
  %27 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %50

28:                                               ; preds = %13
  %29 = call i32 @xo_open_list(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %44, %28
  %31 = load i8**, i8*** %6, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %30
  %38 = load i8**, i8*** %6, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %30

47:                                               ; preds = %30
  %48 = call i32 @xo_close_list(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %49 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %26
  ret void
}

declare dso_local i32 @xo_emit(i8*, ...) #1

declare dso_local i8** @procstat_getenvv(%struct.procstat*, %struct.kinfo_proc*, i32) #1

declare dso_local i32 @xo_open_list(i8*) #1

declare dso_local i32 @xo_close_list(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
