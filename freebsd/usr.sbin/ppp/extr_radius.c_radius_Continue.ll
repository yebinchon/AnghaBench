; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_radius.c_radius_Continue.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_radius.c_radius_Continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.timeval = type { i32, i32 }

@LogRADIUS = common dso_local global i32 0, align 4
@LogPHASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Radius: Request re-sent\0A\00", align 1
@TICKUNIT = common dso_local global i32 0, align 4
@SECTICKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radius*, i32)* @radius_Continue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radius_Continue(%struct.radius* %0, i32 %1) #0 {
  %3 = alloca %struct.radius*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.timeval, align 4
  %6 = alloca i32, align 4
  store %struct.radius* %0, %struct.radius** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.radius*, %struct.radius** %3, align 8
  %8 = getelementptr inbounds %struct.radius, %struct.radius* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = call i32 @timer_Stop(%struct.TYPE_5__* %9)
  %11 = load %struct.radius*, %struct.radius** %3, align 8
  %12 = getelementptr inbounds %struct.radius, %struct.radius* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.radius*, %struct.radius** %3, align 8
  %17 = getelementptr inbounds %struct.radius, %struct.radius* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = call i32 @rad_continue_send_request(i32 %14, i32 %15, i32* %18, %struct.timeval* %5)
  store i32 %19, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %2
  %22 = load i32, i32* @LogRADIUS, align 4
  %23 = call i64 @log_IsKept(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @LogRADIUS, align 4
  br label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @LogPHASE, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = call i32 @log_Printf(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @TICKUNIT, align 4
  %35 = sdiv i32 %33, %34
  %36 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SECTICKS, align 4
  %39 = mul nsw i32 %37, %38
  %40 = add nsw i32 %35, %39
  %41 = load %struct.radius*, %struct.radius** %3, align 8
  %42 = getelementptr inbounds %struct.radius, %struct.radius* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 4
  %45 = load %struct.radius*, %struct.radius** %3, align 8
  %46 = getelementptr inbounds %struct.radius, %struct.radius* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 @timer_Start(%struct.TYPE_5__* %47)
  br label %53

49:                                               ; preds = %2
  %50 = load %struct.radius*, %struct.radius** %3, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @radius_Process(%struct.radius* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %29
  ret void
}

declare dso_local i32 @timer_Stop(%struct.TYPE_5__*) #1

declare dso_local i32 @rad_continue_send_request(i32, i32, i32*, %struct.timeval*) #1

declare dso_local i32 @log_Printf(i32, i8*) #1

declare dso_local i64 @log_IsKept(i32) #1

declare dso_local i32 @timer_Start(%struct.TYPE_5__*) #1

declare dso_local i32 @radius_Process(%struct.radius*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
