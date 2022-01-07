; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_freebsd.c_isp_loop_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_freebsd.c_isp_loop_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.isp_fc = type { i64 }

@ISP_LOG_SANCFG = common dso_local global i32 0, align 4
@ISP_LOGDEBUG0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Chan %d Loop changed\00", align 1
@ISP_ROLE_INITIATOR = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @isp_loop_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_loop_changed(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.isp_fc*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.TYPE_3__* @FCPARAM(i32* %7, i32 %8)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.isp_fc* @ISP_FC_PC(i32* %10, i32 %11)
  store %struct.isp_fc* %12, %struct.isp_fc** %6, align 8
  %13 = load %struct.isp_fc*, %struct.isp_fc** %6, align 8
  %14 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %41

18:                                               ; preds = %2
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %21 = load i32, i32* @ISP_LOGDEBUG0, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @isp_prt(i32* %19, i32 %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ISP_ROLE_INITIATOR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %18
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @isp_freeze_loopdown(i32* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %18
  %36 = load i64, i64* @time_uptime, align 8
  %37 = load %struct.isp_fc*, %struct.isp_fc** %6, align 8
  %38 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.isp_fc*, %struct.isp_fc** %6, align 8
  %40 = call i32 @wakeup(%struct.isp_fc* %39)
  br label %41

41:                                               ; preds = %35, %17
  ret void
}

declare dso_local %struct.TYPE_3__* @FCPARAM(i32*, i32) #1

declare dso_local %struct.isp_fc* @ISP_FC_PC(i32*, i32) #1

declare dso_local i32 @isp_prt(i32*, i32, i8*, i32) #1

declare dso_local i32 @isp_freeze_loopdown(i32*, i32) #1

declare dso_local i32 @wakeup(%struct.isp_fc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
