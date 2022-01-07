; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_lb.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_lb.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"usage: lb [options]\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"where options are:\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"  -h              \09view help text\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"  -i iface        \09interface name (required)\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"  -p [prefix:]npipes\09add a new group of output pipes\0A\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"  -B nbufs        \09number of extra buffers (default: %d)\0A\00", align 1
@DEF_EXTRA_BUFS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"  -b batch        \09batch size (default: %d)\0A\00", align 1
@DEF_BATCH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [53 x i8] c"  -w seconds        \09wait for link up (default: %d)\0A\00", align 1
@DEF_WAIT_LINK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [78 x i8] c"  -W                    enable busy waiting. this will run your CPU at 100%%\0A\00", align 1
@.str.9 = private unnamed_addr constant [71 x i8] c"  -s seconds      \09seconds between syslog stats messages (default: 0)\0A\00", align 1
@.str.10 = private unnamed_addr constant [71 x i8] c"  -o seconds      \09seconds between stdout stats messages (default: 0)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usage() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %6 = load i32, i32* @DEF_EXTRA_BUFS, align 4
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* @DEF_BATCH, align 4
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* @DEF_WAIT_LINK, align 4
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 %10)
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.8, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.9, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.10, i64 0, i64 0))
  %15 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
