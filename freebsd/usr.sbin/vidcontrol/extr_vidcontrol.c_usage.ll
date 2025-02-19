; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/vidcontrol/extr_vidcontrol.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/vidcontrol/extr_vidcontrol.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vt4_mode = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s\0A%s\0A%s\0A%s\0A%s\0A%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"usage: vidcontrol [-CHPpx] [-b color] [-c appearance] [-f [[size] file]]\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"                  [-g geometry] [-h size] [-i active | adapter | mode]\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"                  [-M char] [-m on | off]\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"                  [-r foreground background] [-S on | off] [-s number]\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"                  [-T xterm | cons25] [-t N | off] [mode]\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"                  [foreground [background]] [show]\00", align 1
@.str.7 = private unnamed_addr constant [70 x i8] c"usage: vidcontrol [-CdHLPpx] [-b color] [-c appearance] [-E emulator]\00", align 1
@.str.8 = private unnamed_addr constant [61 x i8] c"                  [-f [[size] file]] [-g geometry] [-h size]\00", align 1
@.str.9 = private unnamed_addr constant [73 x i8] c"                  [-i active | adapter | mode] [-l screen_map] [-M char]\00", align 1
@.str.10 = private unnamed_addr constant [73 x i8] c"                  [-m on | off] [-r foreground background] [-S on | off]\00", align 1
@.str.11 = private unnamed_addr constant [70 x i8] c"                  [-s number] [-T xterm | cons25] [-t N | off] [mode]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = load i64, i64* @vt4_mode, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, i32* @stderr, align 4
  %5 = call i32 @fprintf(i32 %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0))
  br label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @stderr, align 4
  %8 = call i32 @fprintf(i32 %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0))
  br label %9

9:                                                ; preds = %6, %3
  %10 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

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
