; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpd/extr_printjob.c_opentty.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpd/extr_printjob.c_opentty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printer = type { i32, i32, i64 }

@O_RDWR = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@pfd = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s: %m\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"waiting for %s to become ready (offline?)\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"%s is ready and printing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.printer*)* @opentty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opentty(%struct.printer* %0) #0 {
  %2 = alloca %struct.printer*, align 8
  %3 = alloca i32, align 4
  store %struct.printer* %0, %struct.printer** %2, align 8
  store i32 1, i32* %3, align 4
  br label %4

4:                                                ; preds = %54, %1
  %5 = load %struct.printer*, %struct.printer** %2, align 8
  %6 = getelementptr inbounds %struct.printer, %struct.printer* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.printer*, %struct.printer** %2, align 8
  %9 = getelementptr inbounds %struct.printer, %struct.printer* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load i32, i32* @O_RDWR, align 4
  br label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @O_WRONLY, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  %18 = call i64 @open(i32 %7, i32 %17)
  store i64 %18, i64* @pfd, align 8
  %19 = load i64, i64* @pfd, align 8
  %20 = icmp sge i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 @delay(i32 500)
  br label %56

23:                                               ; preds = %16
  %24 = load i64, i64* @errno, align 8
  %25 = load i64, i64* @ENOENT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i32, i32* @LOG_ERR, align 4
  %29 = load %struct.printer*, %struct.printer** %2, align 8
  %30 = getelementptr inbounds %struct.printer, %struct.printer* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @syslog(i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = call i32 @exit(i32 1) #3
  unreachable

34:                                               ; preds = %23
  %35 = load i32, i32* %3, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.printer*, %struct.printer** %2, align 8
  %39 = load %struct.printer*, %struct.printer** %2, align 8
  %40 = getelementptr inbounds %struct.printer, %struct.printer* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @pstatus(%struct.printer* %38, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %37, %34
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @sleep(i32 %44)
  br label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %3, align 4
  %48 = icmp slt i32 %47, 32
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %3, align 4
  %51 = shl i32 %50, 1
  br label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %49
  %55 = phi i32 [ %51, %49 ], [ %53, %52 ]
  store i32 %55, i32* %3, align 4
  br label %4

56:                                               ; preds = %21
  %57 = load i64, i64* @pfd, align 8
  %58 = call i64 @isatty(i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct.printer*, %struct.printer** %2, align 8
  %62 = call i32 @setty(%struct.printer* %61)
  br label %63

63:                                               ; preds = %60, %56
  %64 = load %struct.printer*, %struct.printer** %2, align 8
  %65 = load %struct.printer*, %struct.printer** %2, align 8
  %66 = getelementptr inbounds %struct.printer, %struct.printer* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @pstatus(%struct.printer* %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  ret void
}

declare dso_local i64 @open(i32, i32) #1

declare dso_local i32 @delay(i32) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @pstatus(%struct.printer*, i8*, i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i64 @isatty(i64) #1

declare dso_local i32 @setty(%struct.printer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
