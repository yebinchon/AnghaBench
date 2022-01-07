; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ioat/extr_ioatcontrol.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ioat/extr_ioatcontrol.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [96 x i8] c"Usage: %s [-c period] [-EefmVxXz] channel-number num-txns [<bufsize> [<chain-len> [duration]]]\0A\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"       %s -r [-c period] [-vVwz] channel-number address [<bufsize>]\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"           -c period - Enable interrupt coalescing (us) (default: 0)\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"           -E        - Test contiguous 8k copy.\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"           -e        - Test non-contiguous 8k copy.\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"           -f        - Test block fill.\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"           -m        - Test memcpy instead of DMA.\0A\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"           -r        - Issue DMA to or from a specific address.\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"           -V        - Enable verification\0A\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"           -v        - <address> is a kernel virtual address\0A\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"           -w        - Write to the specified address\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"           -x        - Test DMA CRC.\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"           -X        - Test DMA CRC copy.\0A\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"           -z        - Zero device stats before test\0A\00", align 1
@EX_USAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = call i8* (...) @getprogname()
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i8* %1)
  %3 = call i8* (...) @getprogname()
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i8* %3)
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i64 0, i64 0))
  %17 = load i32, i32* @EX_USAGE, align 4
  %18 = call i32 @exit(i32 %17) #3
  unreachable
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @getprogname(...) #1

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
