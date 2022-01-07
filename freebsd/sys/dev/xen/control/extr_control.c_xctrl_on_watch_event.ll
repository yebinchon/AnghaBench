; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/control/extr_control.c_xctrl_on_watch_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/control/extr_control.c_xctrl_on_watch_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xctrl_shutdown_reason = type { i32 (...)*, i32 }
%struct.xs_watch = type { i32 }

@XST_NIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"control\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"unable to ack shutdown request, proceeding anyway\0A\00", align 1
@xctrl_shutdown_reasons = common dso_local global %struct.xctrl_shutdown_reason* null, align 8
@M_XENSTORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xs_watch*, i8**, i32)* @xctrl_on_watch_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xctrl_on_watch_event(%struct.xs_watch* %0, i8** %1, i32 %2) #0 {
  %4 = alloca %struct.xs_watch*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xctrl_shutdown_reason*, align 8
  %8 = alloca %struct.xctrl_shutdown_reason*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.xs_watch* %0, %struct.xs_watch** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @XST_NIL, align 4
  %13 = call i32 @xs_read(i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %11, i8** %9)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %54

17:                                               ; preds = %3
  %18 = load i32, i32* @XST_NIL, align 4
  %19 = call i32 @xs_write(i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %17
  %25 = load %struct.xctrl_shutdown_reason*, %struct.xctrl_shutdown_reason** @xctrl_shutdown_reasons, align 8
  store %struct.xctrl_shutdown_reason* %25, %struct.xctrl_shutdown_reason** %7, align 8
  %26 = load %struct.xctrl_shutdown_reason*, %struct.xctrl_shutdown_reason** %7, align 8
  %27 = load %struct.xctrl_shutdown_reason*, %struct.xctrl_shutdown_reason** @xctrl_shutdown_reasons, align 8
  %28 = call i32 @nitems(%struct.xctrl_shutdown_reason* %27)
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.xctrl_shutdown_reason, %struct.xctrl_shutdown_reason* %26, i64 %29
  store %struct.xctrl_shutdown_reason* %30, %struct.xctrl_shutdown_reason** %8, align 8
  br label %31

31:                                               ; preds = %47, %24
  %32 = load %struct.xctrl_shutdown_reason*, %struct.xctrl_shutdown_reason** %7, align 8
  %33 = load %struct.xctrl_shutdown_reason*, %struct.xctrl_shutdown_reason** %8, align 8
  %34 = icmp ult %struct.xctrl_shutdown_reason* %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load i8*, i8** %9, align 8
  %37 = load %struct.xctrl_shutdown_reason*, %struct.xctrl_shutdown_reason** %7, align 8
  %38 = getelementptr inbounds %struct.xctrl_shutdown_reason, %struct.xctrl_shutdown_reason* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @strcmp(i8* %36, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %35
  %43 = load %struct.xctrl_shutdown_reason*, %struct.xctrl_shutdown_reason** %7, align 8
  %44 = getelementptr inbounds %struct.xctrl_shutdown_reason, %struct.xctrl_shutdown_reason* %43, i32 0, i32 0
  %45 = load i32 (...)*, i32 (...)** %44, align 8
  %46 = call i32 (...) %45()
  br label %50

47:                                               ; preds = %35
  %48 = load %struct.xctrl_shutdown_reason*, %struct.xctrl_shutdown_reason** %7, align 8
  %49 = getelementptr inbounds %struct.xctrl_shutdown_reason, %struct.xctrl_shutdown_reason* %48, i32 1
  store %struct.xctrl_shutdown_reason* %49, %struct.xctrl_shutdown_reason** %7, align 8
  br label %31

50:                                               ; preds = %42, %31
  %51 = load i8*, i8** %9, align 8
  %52 = load i32, i32* @M_XENSTORE, align 4
  %53 = call i32 @free(i8* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %16
  ret void
}

declare dso_local i32 @xs_read(i32, i8*, i8*, i32*, i8**) #1

declare dso_local i32 @xs_write(i32, i8*, i8*, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @nitems(%struct.xctrl_shutdown_reason*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
