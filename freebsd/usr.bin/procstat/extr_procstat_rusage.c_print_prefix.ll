; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat_rusage.c_print_prefix.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat_rusage.c_print_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_proc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"{d:process_id/%5d/%d} \00", align 1
@procstat_opts = common dso_local global i32 0, align 4
@PS_OPT_PERTHREAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"{d:thread_id/%6d/%d} \00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"{d:command/%-16s/%s} \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kinfo_proc*)* @print_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_prefix(%struct.kinfo_proc* %0) #0 {
  %2 = alloca %struct.kinfo_proc*, align 8
  store %struct.kinfo_proc* %0, %struct.kinfo_proc** %2, align 8
  %3 = load %struct.kinfo_proc*, %struct.kinfo_proc** %2, align 8
  %4 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @xo_emit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* @procstat_opts, align 4
  %8 = load i32, i32* @PS_OPT_PERTHREAD, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.kinfo_proc*, %struct.kinfo_proc** %2, align 8
  %13 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @xo_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.kinfo_proc*, %struct.kinfo_proc** %2, align 8
  %18 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @xo_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  ret void
}

declare dso_local i32 @xo_emit(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
