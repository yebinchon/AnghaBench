; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@ISP_RESETSTATE = common dso_local global i64 0, align 8
@BIU2400_ICR = common dso_local global i32 0, align 4
@BIU2400_HCCR = common dso_local global i32 0, align 4
@HCCR_2400_CMD_PAUSE = common dso_local global i32 0, align 4
@BIU_ICR = common dso_local global i32 0, align 4
@HCCR = common dso_local global i32 0, align 4
@HCCR_CMD_PAUSE = common dso_local global i32 0, align 4
@BIU2100_CSR = common dso_local global i32 0, align 4
@BIU2100_FPM0_REGS = common dso_local global i32 0, align 4
@FPM_DIAG_CONFIG = common dso_local global i32 0, align 4
@FPM_SOFT_RESET = common dso_local global i32 0, align 4
@BIU2100_FB_REGS = common dso_local global i32 0, align 4
@FBM_CMD = common dso_local global i32 0, align 4
@FBMCMD_FIFO_RESET_ALL = common dso_local global i32 0, align 4
@BIU2100_RISC_REGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isp_shutdown(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %3 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @ISP_RESETSTATE, align 8
  %7 = icmp sge i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = call i32 @isp_stop(%struct.TYPE_8__* %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = call i32 @ISP_DISABLE_INTS(%struct.TYPE_8__* %12)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %15 = call i64 @IS_FC(%struct.TYPE_8__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %58

17:                                               ; preds = %11
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %19 = call i64 @IS_24XX(%struct.TYPE_8__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = load i32, i32* @BIU2400_ICR, align 4
  %24 = call i32 @ISP_WRITE(%struct.TYPE_8__* %22, i32 %23, i32 0)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = load i32, i32* @BIU2400_HCCR, align 4
  %27 = load i32, i32* @HCCR_2400_CMD_PAUSE, align 4
  %28 = call i32 @ISP_WRITE(%struct.TYPE_8__* %25, i32 %26, i32 %27)
  br label %57

29:                                               ; preds = %17
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %31 = load i32, i32* @BIU_ICR, align 4
  %32 = call i32 @ISP_WRITE(%struct.TYPE_8__* %30, i32 %31, i32 0)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %34 = load i32, i32* @HCCR, align 4
  %35 = load i32, i32* @HCCR_CMD_PAUSE, align 4
  %36 = call i32 @ISP_WRITE(%struct.TYPE_8__* %33, i32 %34, i32 %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %38 = load i32, i32* @BIU2100_CSR, align 4
  %39 = load i32, i32* @BIU2100_FPM0_REGS, align 4
  %40 = call i32 @ISP_WRITE(%struct.TYPE_8__* %37, i32 %38, i32 %39)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %42 = load i32, i32* @FPM_DIAG_CONFIG, align 4
  %43 = load i32, i32* @FPM_SOFT_RESET, align 4
  %44 = call i32 @ISP_WRITE(%struct.TYPE_8__* %41, i32 %42, i32 %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = load i32, i32* @BIU2100_CSR, align 4
  %47 = load i32, i32* @BIU2100_FB_REGS, align 4
  %48 = call i32 @ISP_WRITE(%struct.TYPE_8__* %45, i32 %46, i32 %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %50 = load i32, i32* @FBM_CMD, align 4
  %51 = load i32, i32* @FBMCMD_FIFO_RESET_ALL, align 4
  %52 = call i32 @ISP_WRITE(%struct.TYPE_8__* %49, i32 %50, i32 %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %54 = load i32, i32* @BIU2100_CSR, align 4
  %55 = load i32, i32* @BIU2100_RISC_REGS, align 4
  %56 = call i32 @ISP_WRITE(%struct.TYPE_8__* %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %29, %21
  br label %66

58:                                               ; preds = %11
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %60 = load i32, i32* @BIU_ICR, align 4
  %61 = call i32 @ISP_WRITE(%struct.TYPE_8__* %59, i32 %60, i32 0)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %63 = load i32, i32* @HCCR, align 4
  %64 = load i32, i32* @HCCR_CMD_PAUSE, align 4
  %65 = call i32 @ISP_WRITE(%struct.TYPE_8__* %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %58, %57
  ret void
}

declare dso_local i32 @isp_stop(%struct.TYPE_8__*) #1

declare dso_local i32 @ISP_DISABLE_INTS(%struct.TYPE_8__*) #1

declare dso_local i64 @IS_FC(%struct.TYPE_8__*) #1

declare dso_local i64 @IS_24XX(%struct.TYPE_8__*) #1

declare dso_local i32 @ISP_WRITE(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
