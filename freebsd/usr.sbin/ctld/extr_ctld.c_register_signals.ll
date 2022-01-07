; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_register_signals.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_register_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i8*, i32 }

@sighup_handler = common dso_local global i8* null, align 8
@SIGHUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"sigaction\00", align 1
@sigterm_handler = common dso_local global i8* null, align 8
@SIGTERM = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@sigchld_handler = common dso_local global i8* null, align 8
@SIGCHLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @register_signals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @register_signals() #0 {
  %1 = alloca %struct.sigaction, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @bzero(%struct.sigaction* %1, i32 16)
  %4 = load i8*, i8** @sighup_handler, align 8
  %5 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0
  store i8* %4, i8** %5, align 8
  %6 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 1
  %7 = call i32 @sigfillset(i32* %6)
  %8 = load i32, i32* @SIGHUP, align 4
  %9 = call i32 @sigaction(i32 %8, %struct.sigaction* %1, i32* null)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %0
  %15 = load i8*, i8** @sigterm_handler, align 8
  %16 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0
  store i8* %15, i8** %16, align 8
  %17 = load i32, i32* @SIGTERM, align 4
  %18 = call i32 @sigaction(i32 %17, %struct.sigaction* %1, i32* null)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %14
  %24 = load i8*, i8** @sigterm_handler, align 8
  %25 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0
  store i8* %24, i8** %25, align 8
  %26 = load i32, i32* @SIGINT, align 4
  %27 = call i32 @sigaction(i32 %26, %struct.sigaction* %1, i32* null)
  store i32 %27, i32* %2, align 4
  %28 = load i32, i32* %2, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %23
  %33 = load i8*, i8** @sigchld_handler, align 8
  %34 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  %35 = load i32, i32* @SIGCHLD, align 4
  %36 = call i32 @sigaction(i32 %35, %struct.sigaction* %1, i32* null)
  store i32 %36, i32* %2, align 4
  %37 = load i32, i32* %2, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %32
  ret void
}

declare dso_local i32 @bzero(%struct.sigaction*, i32) #1

declare dso_local i32 @sigfillset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @log_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
