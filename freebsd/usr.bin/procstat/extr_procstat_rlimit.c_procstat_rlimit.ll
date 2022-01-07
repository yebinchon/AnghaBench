; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat_rlimit.c_procstat_rlimit.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat_rlimit.c_procstat_rlimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.procstat = type { i32 }
%struct.kinfo_proc = type { i32, i32 }
%struct.rlimit = type { i32, i32 }

@procstat_opts = common dso_local global i32 0, align 4
@PS_OPT_NOHEADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"{T:/%5s %-16s %-16s %16s %16s}\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"PID\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"COMM\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"RLIMIT\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"SOFT     \00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"HARD     \00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"{ek:process_id/%5d}{e:command/%-16s/%s}\00", align 1
@RLIM_NLIMITS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [62 x i8] c"{dk:process_id/%5d} {d:command/%-16s} {d:rlimit_param/%-16s} \00", align 1
@rlimit_param = common dso_local global %struct.TYPE_2__* null, align 8
@RLIM_INFINITY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"{e:soft_limit/infinity}\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"{e:soft_limit/%U}\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"{e:hard_limit/infinity}\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"{e:hard_limit/%U}\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"{d:rlim_cur/%16s} \00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"{d:rlim_max/%16s}\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @procstat_rlimit(%struct.procstat* %0, %struct.kinfo_proc* %1) #0 {
  %3 = alloca %struct.procstat*, align 8
  %4 = alloca %struct.kinfo_proc*, align 8
  %5 = alloca %struct.rlimit, align 4
  %6 = alloca i32, align 4
  store %struct.procstat* %0, %struct.procstat** %3, align 8
  store %struct.kinfo_proc* %1, %struct.kinfo_proc** %4, align 8
  %7 = load i32, i32* @procstat_opts, align 4
  %8 = load i32, i32* @PS_OPT_NOHEADER, align 4
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  %14 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %15 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %18 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %16, i32 %19)
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %92, %13
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @RLIM_NLIMITS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %95

25:                                               ; preds = %21
  %26 = load %struct.procstat*, %struct.procstat** %3, align 8
  %27 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @procstat_getrlimit(%struct.procstat* %26, %struct.kinfo_proc* %27, i32 %28, %struct.rlimit* %5)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %95

32:                                               ; preds = %25
  %33 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %34 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %37 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rlimit_param, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0), i32 %35, i32 %38, i32 %44)
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rlimit_param, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @xo_open_container(i32 %51)
  %53 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %5, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @RLIM_INFINITY, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %32
  %58 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %63

59:                                               ; preds = %32
  %60 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %5, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %59, %57
  %64 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %5, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @RLIM_INFINITY, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  br label %74

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %5, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %70, %68
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rlimit_param, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @xo_close_container(i32 %80)
  %82 = load i32, i32* %6, align 4
  %83 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %5, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @humanize_rlimit(i32 %82, i32 %84)
  %86 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %6, align 4
  %88 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %5, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @humanize_rlimit(i32 %87, i32 %89)
  %91 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %74
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %21

95:                                               ; preds = %31, %21
  ret void
}

declare dso_local i32 @xo_emit(i8*, ...) #1

declare dso_local i32 @procstat_getrlimit(%struct.procstat*, %struct.kinfo_proc*, i32, %struct.rlimit*) #1

declare dso_local i32 @xo_open_container(i32) #1

declare dso_local i32 @xo_close_container(i32) #1

declare dso_local i32 @humanize_rlimit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
