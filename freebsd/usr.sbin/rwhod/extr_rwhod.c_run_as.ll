; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rwhod/extr_rwhod.c_run_as.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rwhod/extr_rwhod.c_run_as.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }
%struct.group = type { i32 }

@UNPRIV_USER = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"getpwnam(%s): %m\00", align 1
@UNPRIV_GROUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"getgrnam(%s): %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_as(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.passwd*, align 8
  %6 = alloca %struct.group*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @UNPRIV_USER, align 4
  %8 = call %struct.passwd* @getpwnam(i32 %7)
  store %struct.passwd* %8, %struct.passwd** %5, align 8
  %9 = load %struct.passwd*, %struct.passwd** %5, align 8
  %10 = icmp eq %struct.passwd* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, i32* @LOG_ERR, align 4
  %13 = load i32, i32* @UNPRIV_USER, align 4
  %14 = call i32 @syslog(i32 %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = call i32 @exit(i32 1) #3
  unreachable

16:                                               ; preds = %2
  %17 = load %struct.passwd*, %struct.passwd** %5, align 8
  %18 = getelementptr inbounds %struct.passwd, %struct.passwd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %3, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @UNPRIV_GROUP, align 4
  %22 = call %struct.group* @getgrnam(i32 %21)
  store %struct.group* %22, %struct.group** %6, align 8
  %23 = load %struct.group*, %struct.group** %6, align 8
  %24 = icmp eq %struct.group* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %16
  %26 = load i32, i32* @LOG_ERR, align 4
  %27 = load i32, i32* @UNPRIV_GROUP, align 4
  %28 = call i32 @syslog(i32 %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = call i32 @exit(i32 1) #3
  unreachable

30:                                               ; preds = %16
  %31 = load %struct.group*, %struct.group** %6, align 8
  %32 = getelementptr inbounds %struct.group, %struct.group* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %4, align 8
  store i32 %33, i32* %34, align 4
  ret void
}

declare dso_local %struct.passwd* @getpwnam(i32) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.group* @getgrnam(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
