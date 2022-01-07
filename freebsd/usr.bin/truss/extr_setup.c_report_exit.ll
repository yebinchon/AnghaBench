; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_setup.c_report_exit.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_setup.c_report_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trussinfo = type { i32, %struct.threadinfo* }
%struct.threadinfo = type { i32 }
%struct.TYPE_3__ = type { i64, i32 }

@CLOCK_REALTIME = common dso_local global i32 0, align 4
@CLD_EXITED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"process exit, rval = %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"process killed, signal = %u%s\0A\00", align 1
@CLD_DUMPED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c" (core dumped)\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trussinfo*, %struct.TYPE_3__*)* @report_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_exit(%struct.trussinfo* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.trussinfo*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.threadinfo*, align 8
  store %struct.trussinfo* %0, %struct.trussinfo** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = load %struct.trussinfo*, %struct.trussinfo** %3, align 8
  %7 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %6, i32 0, i32 1
  %8 = load %struct.threadinfo*, %struct.threadinfo** %7, align 8
  store %struct.threadinfo* %8, %struct.threadinfo** %5, align 8
  %9 = load i32, i32* @CLOCK_REALTIME, align 4
  %10 = load %struct.threadinfo*, %struct.threadinfo** %5, align 8
  %11 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %10, i32 0, i32 0
  %12 = call i32 @clock_gettime(i32 %9, i32* %11)
  %13 = load %struct.trussinfo*, %struct.trussinfo** %3, align 8
  %14 = call i32 @print_line_prefix(%struct.trussinfo* %13)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CLD_EXITED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.trussinfo*, %struct.trussinfo** %3, align 8
  %22 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %43

28:                                               ; preds = %2
  %29 = load %struct.trussinfo*, %struct.trussinfo** %3, align 8
  %30 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CLD_DUMPED, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %42 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %34, i8* %41)
  br label %43

43:                                               ; preds = %28, %20
  ret void
}

declare dso_local i32 @clock_gettime(i32, i32*) #1

declare dso_local i32 @print_line_prefix(%struct.trussinfo*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
