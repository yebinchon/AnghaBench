; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/uhsoctl/extr_uhsoctl.c_daemonize.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/uhsoctl/extr_uhsoctl.c_daemonize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctx = type { i8*, i32, %struct.pidfh*, i32 }
%struct.pidfh = type { i32 }

@PIDFILE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"Cannot create pidfile %s\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Cannot daemonize\00", align 1
@FLG_DAEMON = common dso_local global i32 0, align 4
@syslog_title = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@LOG_PID = common dso_local global i32 0, align 4
@LOG_USER = common dso_local global i32 0, align 4
@syslog_open = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctx*)* @daemonize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @daemonize(%struct.ctx* %0) #0 {
  %2 = alloca %struct.ctx*, align 8
  %3 = alloca %struct.pidfh*, align 8
  %4 = alloca i32, align 4
  store %struct.ctx* %0, %struct.ctx** %2, align 8
  %5 = load %struct.ctx*, %struct.ctx** %2, align 8
  %6 = getelementptr inbounds %struct.ctx, %struct.ctx* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = load i8*, i8** @PIDFILE, align 8
  %9 = load %struct.ctx*, %struct.ctx** %2, align 8
  %10 = getelementptr inbounds %struct.ctx, %struct.ctx* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %7, i32 127, i8* %8, i8* %11)
  %13 = load %struct.ctx*, %struct.ctx** %2, align 8
  %14 = getelementptr inbounds %struct.ctx, %struct.ctx* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.pidfh* @pidfile_open(i32 %15, i32 384, i32* %4)
  store %struct.pidfh* %16, %struct.pidfh** %3, align 8
  %17 = load %struct.pidfh*, %struct.pidfh** %3, align 8
  %18 = icmp eq %struct.pidfh* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.ctx*, %struct.ctx** %2, align 8
  %21 = getelementptr inbounds %struct.ctx, %struct.ctx* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %52

24:                                               ; preds = %1
  %25 = call i32 @daemon(i32 0, i32 0)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.pidfh*, %struct.pidfh** %3, align 8
  %30 = call i32 @pidfile_remove(%struct.pidfh* %29)
  br label %52

31:                                               ; preds = %24
  %32 = load %struct.pidfh*, %struct.pidfh** %3, align 8
  %33 = call i32 @pidfile_write(%struct.pidfh* %32)
  %34 = load %struct.pidfh*, %struct.pidfh** %3, align 8
  %35 = load %struct.ctx*, %struct.ctx** %2, align 8
  %36 = getelementptr inbounds %struct.ctx, %struct.ctx* %35, i32 0, i32 2
  store %struct.pidfh* %34, %struct.pidfh** %36, align 8
  %37 = load i32, i32* @FLG_DAEMON, align 4
  %38 = load %struct.ctx*, %struct.ctx** %2, align 8
  %39 = getelementptr inbounds %struct.ctx, %struct.ctx* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load i32, i32* @syslog_title, align 4
  %43 = call i8* (...) @getprogname()
  %44 = load %struct.ctx*, %struct.ctx** %2, align 8
  %45 = getelementptr inbounds %struct.ctx, %struct.ctx* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %42, i32 63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %43, i8* %46)
  %48 = load i32, i32* @syslog_title, align 4
  %49 = load i32, i32* @LOG_PID, align 4
  %50 = load i32, i32* @LOG_USER, align 4
  %51 = call i32 @openlog(i32 %48, i32 %49, i32 %50)
  store i32 1, i32* @syslog_open, align 4
  br label %52

52:                                               ; preds = %31, %27, %19
  ret void
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, ...) #1

declare dso_local %struct.pidfh* @pidfile_open(i32, i32, i32*) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @daemon(i32, i32) #1

declare dso_local i32 @pidfile_remove(%struct.pidfh*) #1

declare dso_local i32 @pidfile_write(%struct.pidfh*) #1

declare dso_local i8* @getprogname(...) #1

declare dso_local i32 @openlog(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
