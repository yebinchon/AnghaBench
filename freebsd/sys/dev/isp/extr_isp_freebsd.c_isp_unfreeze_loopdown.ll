; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_freebsd.c_isp_unfreeze_loopdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_freebsd.c_isp_unfreeze_loopdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_fc = type { i32, i32* }

@SIMQFRZ_LOOPDOWN = common dso_local global i32 0, align 4
@ISP_LOGDEBUG0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Chan %d Release simq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @isp_unfreeze_loopdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_unfreeze_loopdown(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.isp_fc*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.isp_fc* @ISP_FC_PC(i32* %7, i32 %8)
  store %struct.isp_fc* %9, %struct.isp_fc** %5, align 8
  %10 = load %struct.isp_fc*, %struct.isp_fc** %5, align 8
  %11 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %44

15:                                               ; preds = %2
  %16 = load %struct.isp_fc*, %struct.isp_fc** %5, align 8
  %17 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SIMQFRZ_LOOPDOWN, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @SIMQFRZ_LOOPDOWN, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.isp_fc*, %struct.isp_fc** %5, align 8
  %24 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %15
  %30 = load %struct.isp_fc*, %struct.isp_fc** %5, align 8
  %31 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* @ISP_LOGDEBUG0, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @isp_prt(i32* %35, i32 %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.isp_fc*, %struct.isp_fc** %5, align 8
  %40 = getelementptr inbounds %struct.isp_fc, %struct.isp_fc* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @xpt_release_simq(i32* %41, i32 1)
  %43 = call i32 (...) @xpt_release_boot()
  br label %44

44:                                               ; preds = %14, %34, %29, %15
  ret void
}

declare dso_local %struct.isp_fc* @ISP_FC_PC(i32*, i32) #1

declare dso_local i32 @isp_prt(i32*, i32, i8*, i32) #1

declare dso_local i32 @xpt_release_simq(i32*, i32) #1

declare dso_local i32 @xpt_release_boot(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
