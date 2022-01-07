; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_setup.c_report_thread_death.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_setup.c_report_thread_death.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trussinfo = type { i32, %struct.threadinfo* }
%struct.threadinfo = type { i64, i32 }

@CLOCK_REALTIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"<thread %ld exited>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trussinfo*)* @report_thread_death to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_thread_death(%struct.trussinfo* %0) #0 {
  %2 = alloca %struct.trussinfo*, align 8
  %3 = alloca %struct.threadinfo*, align 8
  store %struct.trussinfo* %0, %struct.trussinfo** %2, align 8
  %4 = load %struct.trussinfo*, %struct.trussinfo** %2, align 8
  %5 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %4, i32 0, i32 1
  %6 = load %struct.threadinfo*, %struct.threadinfo** %5, align 8
  store %struct.threadinfo* %6, %struct.threadinfo** %3, align 8
  %7 = load i32, i32* @CLOCK_REALTIME, align 4
  %8 = load %struct.threadinfo*, %struct.threadinfo** %3, align 8
  %9 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %8, i32 0, i32 1
  %10 = call i32 @clock_gettime(i32 %7, i32* %9)
  %11 = load %struct.trussinfo*, %struct.trussinfo** %2, align 8
  %12 = call i32 @print_line_prefix(%struct.trussinfo* %11)
  %13 = load %struct.trussinfo*, %struct.trussinfo** %2, align 8
  %14 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.threadinfo*, %struct.threadinfo** %3, align 8
  %17 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %18)
  ret void
}

declare dso_local i32 @clock_gettime(i32, i32*) #1

declare dso_local i32 @print_line_prefix(%struct.trussinfo*) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
