; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_freebsd.c_isp_freeze_loopdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_freebsd.c_isp_freeze_loopdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_fc = type { i32, i32* }

@ISP_LOGDEBUG0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Chan %d Freeze simq (loopdown)\00", align 1
@SIMQFRZ_LOOPDOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Chan %d Mark simq frozen (loopdown)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @isp_freeze_loopdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_freeze_loopdown(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.isp_fc*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.isp_fc* @ISP_FC_PC(i32* %6, i32 %7)
  store %struct.isp_fc* %8, %struct.isp_fc** %5, align 8
  %9 = load %struct.isp_fc*, %struct.isp_fc** %5, align 8
  %10 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %42

14:                                               ; preds = %2
  %15 = load %struct.isp_fc*, %struct.isp_fc** %5, align 8
  %16 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %14
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @ISP_LOGDEBUG0, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @isp_prt(i32* %20, i32 %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @SIMQFRZ_LOOPDOWN, align 4
  %25 = load %struct.isp_fc*, %struct.isp_fc** %5, align 8
  %26 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = call i32 (...) @xpt_hold_boot()
  %28 = load %struct.isp_fc*, %struct.isp_fc** %5, align 8
  %29 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @xpt_freeze_simq(i32* %30, i32 1)
  br label %42

32:                                               ; preds = %14
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @ISP_LOGDEBUG0, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @isp_prt(i32* %33, i32 %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @SIMQFRZ_LOOPDOWN, align 4
  %38 = load %struct.isp_fc*, %struct.isp_fc** %5, align 8
  %39 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %13, %32, %19
  ret void
}

declare dso_local %struct.isp_fc* @ISP_FC_PC(i32*, i32) #1

declare dso_local i32 @isp_prt(i32*, i32, i8*, i32) #1

declare dso_local i32 @xpt_hold_boot(...) #1

declare dso_local i32 @xpt_freeze_simq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
