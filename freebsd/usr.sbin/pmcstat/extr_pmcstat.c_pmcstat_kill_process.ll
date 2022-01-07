; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcstat.c_pmcstat_kill_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcstat.c_pmcstat_kill_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.pmcstat_target = type { i32 }

@args = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@FLAG_HAS_COMMANDLINE = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"ERROR: cannot signal child process\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmcstat_kill_process() #0 {
  %1 = alloca %struct.pmcstat_target*, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 0), align 4
  %3 = load i32, i32* @FLAG_HAS_COMMANDLINE, align 4
  %4 = and i32 %2, %3
  %5 = call i32 @assert(i32 %4)
  %6 = call %struct.pmcstat_target* @SLIST_FIRST(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 1))
  store %struct.pmcstat_target* %6, %struct.pmcstat_target** %1, align 8
  %7 = load %struct.pmcstat_target*, %struct.pmcstat_target** %1, align 8
  %8 = icmp ne %struct.pmcstat_target* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.pmcstat_target*, %struct.pmcstat_target** %1, align 8
  %12 = getelementptr inbounds %struct.pmcstat_target, %struct.pmcstat_target* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SIGINT, align 4
  %15 = call i64 @kill(i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %0
  %18 = load i32, i32* @EX_OSERR, align 4
  %19 = call i32 @err(i32 %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %0
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.pmcstat_target* @SLIST_FIRST(i32*) #1

declare dso_local i64 @kill(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
