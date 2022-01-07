; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpd/extr_printjob.c_startprinting.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpd/extr_printjob.c_startprinting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printer = type { i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"can't open printer description file: %m\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"unknown printer: %s\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"potential reference loop detected in printcap file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @startprinting(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.printer, align 4
  %4 = alloca %struct.printer*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store %struct.printer* %3, %struct.printer** %4, align 8
  %6 = load %struct.printer*, %struct.printer** %4, align 8
  %7 = call i32 @init_printer(%struct.printer* %6)
  %8 = load i8*, i8** %2, align 8
  %9 = load %struct.printer*, %struct.printer** %4, align 8
  %10 = call i32 @getprintcap(i8* %8, %struct.printer* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %24 [
    i32 129, label %12
    i32 130, label %16
    i32 128, label %21
  ]

12:                                               ; preds = %1
  %13 = load i32, i32* @LOG_ERR, align 4
  %14 = call i32 (i32, i8*, ...) @syslog(i32 %13, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @exit(i32 1) #3
  unreachable

16:                                               ; preds = %1
  %17 = load i32, i32* @LOG_ERR, align 4
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 (i32, i8*, ...) @syslog(i32 %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %20 = call i32 @exit(i32 1) #3
  unreachable

21:                                               ; preds = %1
  %22 = load %struct.printer*, %struct.printer** %4, align 8
  %23 = call i32 @fatal(%struct.printer* %22, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %1, %21
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.printer*, %struct.printer** %4, align 8
  %27 = call i32 @printjob(%struct.printer* %26)
  ret void
}

declare dso_local i32 @init_printer(%struct.printer*) #1

declare dso_local i32 @getprintcap(i8*, %struct.printer*) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fatal(%struct.printer*, i8*) #1

declare dso_local i32 @printjob(%struct.printer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
