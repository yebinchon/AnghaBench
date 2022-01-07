; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_sbus.c_isp_sbus_dumpregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_sbus.c_isp_sbus_dumpregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"    biu_conf1=%x\00", align 1
@BIU_CONF1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c" biu_icr=%x biu_isr=%x biu_sema=%x \00", align 1
@BIU_ICR = common dso_local global i32 0, align 4
@BIU_ISR = common dso_local global i32 0, align 4
@BIU_SEMA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"risc_hccr=%x\0A\00", align 1
@HCCR = common dso_local global i32 0, align 4
@HCCR_CMD_PAUSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"    cdma_conf=%x cdma_sts=%x cdma_fifostat=%x\0A\00", align 1
@CDMA_CONF = common dso_local global i32 0, align 4
@CDMA_STATUS = common dso_local global i32 0, align 4
@CDMA_FIFO_STS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"    ddma_conf=%x ddma_sts=%x ddma_fifostat=%x\0A\00", align 1
@DDMA_CONF = common dso_local global i32 0, align 4
@DDMA_STATUS = common dso_local global i32 0, align 4
@DDMA_FIFO_STS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [47 x i8] c"    sxp_int=%x sxp_gross=%x sxp(scsi_ctrl)=%x\0A\00", align 1
@SXP_INTERRUPT = common dso_local global i32 0, align 4
@SXP_GROSS_ERR = common dso_local global i32 0, align 4
@SXP_PINS_CTRL = common dso_local global i32 0, align 4
@HCCR_CMD_RELEASE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"    mbox regs: %x %x %x %x %x\0A\00", align 1
@OUTMAILBOX0 = common dso_local global i32 0, align 4
@OUTMAILBOX1 = common dso_local global i32 0, align 4
@OUTMAILBOX2 = common dso_local global i32 0, align 4
@OUTMAILBOX3 = common dso_local global i32 0, align 4
@OUTMAILBOX4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i8*)* @isp_sbus_dumpregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_sbus_dumpregs(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i8* @device_get_nameunit(i32 %10)
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %11, i8* %12)
  br label %20

14:                                               ; preds = %2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @device_get_nameunit(i32 %17)
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %14, %7
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = load i32, i32* @BIU_CONF1, align 4
  %23 = call i32 @ISP_READ(%struct.TYPE_5__* %21, i32 %22)
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = load i32, i32* @BIU_ICR, align 4
  %27 = call i32 @ISP_READ(%struct.TYPE_5__* %25, i32 %26)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = load i32, i32* @BIU_ISR, align 4
  %30 = call i32 @ISP_READ(%struct.TYPE_5__* %28, i32 %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = load i32, i32* @BIU_SEMA, align 4
  %33 = call i32 @ISP_READ(%struct.TYPE_5__* %31, i32 %32)
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %27, i32 %30, i32 %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = load i32, i32* @HCCR, align 4
  %37 = call i32 @ISP_READ(%struct.TYPE_5__* %35, i32 %36)
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = load i32, i32* @HCCR, align 4
  %41 = load i32, i32* @HCCR_CMD_PAUSE, align 4
  %42 = call i32 @ISP_WRITE(%struct.TYPE_5__* %39, i32 %40, i32 %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = load i32, i32* @CDMA_CONF, align 4
  %45 = call i32 @ISP_READ(%struct.TYPE_5__* %43, i32 %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = load i32, i32* @CDMA_STATUS, align 4
  %48 = call i32 @ISP_READ(%struct.TYPE_5__* %46, i32 %47)
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = load i32, i32* @CDMA_FIFO_STS, align 4
  %51 = call i32 @ISP_READ(%struct.TYPE_5__* %49, i32 %50)
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %45, i32 %48, i32 %51)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = load i32, i32* @DDMA_CONF, align 4
  %55 = call i32 @ISP_READ(%struct.TYPE_5__* %53, i32 %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %57 = load i32, i32* @DDMA_STATUS, align 4
  %58 = call i32 @ISP_READ(%struct.TYPE_5__* %56, i32 %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %60 = load i32, i32* @DDMA_FIFO_STS, align 4
  %61 = call i32 @ISP_READ(%struct.TYPE_5__* %59, i32 %60)
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %55, i32 %58, i32 %61)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %64 = load i32, i32* @SXP_INTERRUPT, align 4
  %65 = call i32 @ISP_READ(%struct.TYPE_5__* %63, i32 %64)
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %67 = load i32, i32* @SXP_GROSS_ERR, align 4
  %68 = call i32 @ISP_READ(%struct.TYPE_5__* %66, i32 %67)
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %70 = load i32, i32* @SXP_PINS_CTRL, align 4
  %71 = call i32 @ISP_READ(%struct.TYPE_5__* %69, i32 %70)
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i32 %65, i32 %68, i32 %71)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %74 = load i32, i32* @HCCR, align 4
  %75 = load i32, i32* @HCCR_CMD_RELEASE, align 4
  %76 = call i32 @ISP_WRITE(%struct.TYPE_5__* %73, i32 %74, i32 %75)
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %78 = load i32, i32* @OUTMAILBOX0, align 4
  %79 = call i32 @ISP_READ(%struct.TYPE_5__* %77, i32 %78)
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %81 = load i32, i32* @OUTMAILBOX1, align 4
  %82 = call i32 @ISP_READ(%struct.TYPE_5__* %80, i32 %81)
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %84 = load i32, i32* @OUTMAILBOX2, align 4
  %85 = call i32 @ISP_READ(%struct.TYPE_5__* %83, i32 %84)
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %87 = load i32, i32* @OUTMAILBOX3, align 4
  %88 = call i32 @ISP_READ(%struct.TYPE_5__* %86, i32 %87)
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %90 = load i32, i32* @OUTMAILBOX4, align 4
  %91 = call i32 @ISP_READ(%struct.TYPE_5__* %89, i32 %90)
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %79, i32 %82, i32 %85, i32 %88, i32 %91)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i32 @ISP_READ(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ISP_WRITE(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
