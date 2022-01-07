; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcstat.c_pmcstat_show_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcstat.c_pmcstat_show_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EX_USAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1785 x i8] c"[options] [commandline]\0A\09 Measure process and/or system performance using hardware\0A\09 performance monitoring counters.\0A\09 Options include:\0A\09 -C\09\09 (toggle) show cumulative counts\0A\09 -D path\09 create profiles in directory \22path\22\0A\09 -E\09\09 (toggle) show counts at process exit\0A\09 -F file\09 write a system-wide callgraph (Kcachegrind format) to \22file\22\0A\09 -G file\09 write a system-wide callgraph to \22file\22\0A\09 -I\09\09 don't resolve leaf function name, show address instead\0A\09 -L\09\09 list all counters available on this host\0A\09 -M file\09 print executable/gmon file map to \22file\22\0A\09 -N\09\09 (toggle) capture callchains\0A\09 -O file\09 send log output to \22file\22\0A\09 -P spec\09 allocate a process-private sampling PMC\0A\09 -R file\09 read events from \22file\22\0A\09 -S spec\09 allocate a system-wide sampling PMC\0A\09 -T\09\09 start in top mode\0A\09 -U \09\0A merged user kernel stack capture\0A\09 -W\09\09 (toggle) show counts per context switch\0A\09 -a file\09 print sampled PCs and callgraph to \22file\22\0A\09 -c cpu-list\09 set cpus for subsequent system-wide PMCs\0A\09 -d\09\09 (toggle) track descendants\0A\09 -e\09\09 use wide history counter for gprof(1) output\0A\09 -f spec\09 pass \22spec\22 to as plugin option\0A\09 -g\09\09 produce gprof(1) compatible profiles\0A\09 -i lwp\09\09 filter on thread id \22lwp\22 in post-processing\0A\09 -k dir\09\09 set the path to the kernel\0A\09 -l secs\09 set duration time\0A\09 -m file\09 print sampled PCs to \22file\22\0A\09 -n rate\09 set sampling rate\0A\09 -o file\09 send print output to \22file\22\0A\09 -p spec\09 allocate a process-private counting PMC\0A\09 -q\09\09 suppress verbosity\0A\09 -r fsroot\09 specify FS root directory\0A\09 -s spec\09 allocate a system-wide counting PMC\0A\09 -t process-spec attach to running processes matching \22process-spec\22\0A\09 -u spec \09 provide short description of counters matching spec\0A\09 -v\09\09 increase verbosity\0A\09 -w secs\09 set printing time interval\0A\09 -z depth\09 limit callchain display depth\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmcstat_show_usage() #0 {
  %1 = load i32, i32* @EX_USAGE, align 4
  %2 = call i32 @errx(i32 %1, i8* getelementptr inbounds ([1785 x i8], [1785 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
