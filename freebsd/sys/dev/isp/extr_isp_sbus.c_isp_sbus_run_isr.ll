; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_sbus.c_isp_sbus_run_isr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_sbus.c_isp_sbus_run_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }

@BIU_ISR = common dso_local global i32 0, align 4
@BIU_SEMA = common dso_local global i32 0, align 4
@ISP_LOGDEBUG3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"ISR 0x%x SEMA 0x%x\00", align 1
@BIU_SEMA_LOCK = common dso_local global i32 0, align 4
@OUTMAILBOX0 = common dso_local global i32 0, align 4
@MBOX_COMMAND_COMPLETE = common dso_local global i32 0, align 4
@ISP_RUNSTATE = common dso_local global i64 0, align 8
@HCCR = common dso_local global i32 0, align 4
@HCCR_CMD_CLEAR_RISC_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @isp_sbus_run_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_sbus_run_isr(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = load i32, i32* @BIU_ISR, align 4
  %9 = call i32 @IspVirt2Off(%struct.TYPE_11__* %7, i32 %8)
  %10 = call i32 @BXR2(%struct.TYPE_11__* %6, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %13 = load i32, i32* @BIU_SEMA, align 4
  %14 = call i32 @IspVirt2Off(%struct.TYPE_11__* %12, i32 %13)
  %15 = call i32 @BXR2(%struct.TYPE_11__* %11, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %17 = load i32, i32* @ISP_LOGDEBUG3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @isp_prt(%struct.TYPE_11__* %16, i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %22 = call i32 @INT_PENDING_MASK(%struct.TYPE_11__* %21)
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @BIU_SEMA_LOCK, align 4
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %79

34:                                               ; preds = %30, %1
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %34
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %40 = load i32, i32* @OUTMAILBOX0, align 4
  %41 = call i32 @IspVirt2Off(%struct.TYPE_11__* %39, i32 %40)
  %42 = call i32 @BXR2(%struct.TYPE_11__* %38, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @MBOX_COMMAND_COMPLETE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @isp_intr_mbox(%struct.TYPE_11__* %48, i32 %49)
  br label %55

51:                                               ; preds = %37
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @isp_intr_async(%struct.TYPE_11__* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %47
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ISP_RUNSTATE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %63 = call i32 @isp_intr_respq(%struct.TYPE_11__* %62)
  br label %64

64:                                               ; preds = %61, %55
  br label %68

65:                                               ; preds = %34
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %67 = call i32 @isp_intr_respq(%struct.TYPE_11__* %66)
  br label %68

68:                                               ; preds = %65, %64
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %70 = load i32, i32* @HCCR, align 4
  %71 = load i32, i32* @HCCR_CMD_CLEAR_RISC_INT, align 4
  %72 = call i32 @ISP_WRITE(%struct.TYPE_11__* %69, i32 %70, i32 %71)
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %77 = load i32, i32* @BIU_SEMA, align 4
  %78 = call i32 @ISP_WRITE(%struct.TYPE_11__* %76, i32 %77, i32 0)
  br label %79

79:                                               ; preds = %33, %75, %68
  ret void
}

declare dso_local i32 @BXR2(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @IspVirt2Off(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @isp_prt(%struct.TYPE_11__*, i32, i8*, i32, i32) #1

declare dso_local i32 @INT_PENDING_MASK(%struct.TYPE_11__*) #1

declare dso_local i32 @isp_intr_mbox(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @isp_intr_async(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @isp_intr_respq(%struct.TYPE_11__*) #1

declare dso_local i32 @ISP_WRITE(%struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
