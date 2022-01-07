; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpd/extr_printjob.c_setty.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpd/extr_printjob.c_setty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printer = type { i64, i32, i32 }
%struct.termios = type { i32 }

@pfd = common dso_local global i32 0, align 4
@TIOCEXCL = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s: ioctl(TIOCEXCL): %m\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%s: tcgetattr: %m\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@TCSAFLUSH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"%s: tcsetattr: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.printer*)* @setty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setty(%struct.printer* %0) #0 {
  %2 = alloca %struct.printer*, align 8
  %3 = alloca %struct.termios, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.printer* %0, %struct.printer** %2, align 8
  %6 = load i32, i32* @pfd, align 4
  %7 = load i32, i32* @TIOCEXCL, align 4
  %8 = call i64 @ioctl(i32 %6, i32 %7, i8* null)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load i32, i32* @LOG_ERR, align 4
  %12 = load %struct.printer*, %struct.printer** %2, align 8
  %13 = getelementptr inbounds %struct.printer, %struct.printer* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @syslog(i32 %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = call i32 @exit(i32 1) #3
  unreachable

17:                                               ; preds = %1
  %18 = load i32, i32* @pfd, align 4
  %19 = call i64 @tcgetattr(i32 %18, %struct.termios* %3)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i32, i32* @LOG_ERR, align 4
  %23 = load %struct.printer*, %struct.printer** %2, align 8
  %24 = getelementptr inbounds %struct.printer, %struct.printer* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @syslog(i32 %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = call i32 @exit(i32 1) #3
  unreachable

28:                                               ; preds = %17
  %29 = load %struct.printer*, %struct.printer** %2, align 8
  %30 = getelementptr inbounds %struct.printer, %struct.printer* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.printer*, %struct.printer** %2, align 8
  %35 = getelementptr inbounds %struct.printer, %struct.printer* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @cfsetspeed(%struct.termios* %3, i32 %36)
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.printer*, %struct.printer** %2, align 8
  %40 = getelementptr inbounds %struct.printer, %struct.printer* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load %struct.printer*, %struct.printer** %2, align 8
  %45 = getelementptr inbounds %struct.printer, %struct.printer* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i8* @strdup(i64 %46)
  store i8* %47, i8** %4, align 8
  br label %48

48:                                               ; preds = %51, %43
  %49 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %49, i8** %5, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @msearch(i8* %52, %struct.termios* %3)
  br label %48

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %38
  %56 = load %struct.printer*, %struct.printer** %2, align 8
  %57 = getelementptr inbounds %struct.printer, %struct.printer* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load %struct.printer*, %struct.printer** %2, align 8
  %62 = getelementptr inbounds %struct.printer, %struct.printer* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %60, %55
  %66 = load i32, i32* @pfd, align 4
  %67 = load i32, i32* @TCSAFLUSH, align 4
  %68 = call i32 @tcsetattr(i32 %66, i32 %67, %struct.termios* %3)
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i32, i32* @LOG_ERR, align 4
  %72 = load %struct.printer*, %struct.printer** %2, align 8
  %73 = getelementptr inbounds %struct.printer, %struct.printer* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @syslog(i32 %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %70, %65
  br label %77

77:                                               ; preds = %76, %60
  ret void
}

declare dso_local i64 @ioctl(i32, i32, i8*) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @tcgetattr(i32, %struct.termios*) #1

declare dso_local i32 @cfsetspeed(%struct.termios*, i32) #1

declare dso_local i8* @strdup(i64) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @msearch(i8*, %struct.termios*) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
