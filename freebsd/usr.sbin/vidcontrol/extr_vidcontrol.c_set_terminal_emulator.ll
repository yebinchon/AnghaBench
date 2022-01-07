; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/vidcontrol/extr_vidcontrol.c_set_terminal_emulator.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/vidcontrol/extr_vidcontrol.c_set_terminal_emulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.term_info = type { i8*, i8* }

@CONS_SETTERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"SETTERM '%s'\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%s (%s) -> %s (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @set_terminal_emulator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_terminal_emulator(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.term_info, align 8
  %4 = alloca %struct.term_info, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i32 @get_terminal_emulator(i32 0, %struct.term_info* %3)
  %6 = getelementptr inbounds %struct.term_info, %struct.term_info* %4, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @strlcpy(i8* %7, i8* %8, i32 8)
  %10 = load i32, i32* @CONS_SETTERM, align 4
  %11 = call i64 @ioctl(i32 0, i32 %10, %struct.term_info* %4)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @warn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = call i32 @get_terminal_emulator(i32 0, %struct.term_info* %4)
  %18 = getelementptr inbounds %struct.term_info, %struct.term_info* %3, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds %struct.term_info, %struct.term_info* %3, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds %struct.term_info, %struct.term_info* %4, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds %struct.term_info, %struct.term_info* %4, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %19, i8* %21, i8* %23, i8* %25)
  ret void
}

declare dso_local i32 @get_terminal_emulator(i32, %struct.term_info*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.term_info*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
