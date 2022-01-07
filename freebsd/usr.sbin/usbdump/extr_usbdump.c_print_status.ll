; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/usbdump/extr_usbdump.c_print_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/usbdump/extr_usbdump.c_print_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [57 x i8] c" status %#x <%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s0>\0A\00", align 1
@OPEN = common dso_local global i32 0, align 4
@TRANSFERRING = common dso_local global i32 0, align 4
@DID_DMA_DELAY = common dso_local global i32 0, align 4
@DID_CLOSE = common dso_local global i32 0, align 4
@DRAINING = common dso_local global i32 0, align 4
@STARTED = common dso_local global i32 0, align 4
@BW_RECLAIMED = common dso_local global i32 0, align 4
@CONTROL_XFR = common dso_local global i32 0, align 4
@CONTROL_HDR = common dso_local global i32 0, align 4
@CONTROL_ACT = common dso_local global i32 0, align 4
@CONTROL_STALL = common dso_local global i32 0, align 4
@SHORT_FRAMES_OK = common dso_local global i32 0, align 4
@SHORT_XFER_OK = common dso_local global i32 0, align 4
@BDMA_ENABLE = common dso_local global i32 0, align 4
@BDMA_NO_POST_SYNC = common dso_local global i32 0, align 4
@BDMA_SETUP = common dso_local global i32 0, align 4
@ISOCHRONOUS_XFR = common dso_local global i32 0, align 4
@CURR_DMA_SET = common dso_local global i32 0, align 4
@CAN_CANCEL_IMMED = common dso_local global i32 0, align 4
@DOING_CALLBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @print_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @OPEN, align 4
  %6 = call i8* @STATUS(i32 %4, i32 %5)
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @TRANSFERRING, align 4
  %9 = call i8* @STATUS(i32 %7, i32 %8)
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @DID_DMA_DELAY, align 4
  %12 = call i8* @STATUS(i32 %10, i32 %11)
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @DID_CLOSE, align 4
  %15 = call i8* @STATUS(i32 %13, i32 %14)
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @DRAINING, align 4
  %18 = call i8* @STATUS(i32 %16, i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @STARTED, align 4
  %21 = call i8* @STATUS(i32 %19, i32 %20)
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @BW_RECLAIMED, align 4
  %24 = call i8* @STATUS(i32 %22, i32 %23)
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @CONTROL_XFR, align 4
  %27 = call i8* @STATUS(i32 %25, i32 %26)
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @CONTROL_HDR, align 4
  %30 = call i8* @STATUS(i32 %28, i32 %29)
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @CONTROL_ACT, align 4
  %33 = call i8* @STATUS(i32 %31, i32 %32)
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @CONTROL_STALL, align 4
  %36 = call i8* @STATUS(i32 %34, i32 %35)
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @SHORT_FRAMES_OK, align 4
  %39 = call i8* @STATUS(i32 %37, i32 %38)
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* @SHORT_XFER_OK, align 4
  %42 = call i8* @STATUS(i32 %40, i32 %41)
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @BDMA_ENABLE, align 4
  %45 = call i8* @STATUS(i32 %43, i32 %44)
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @BDMA_NO_POST_SYNC, align 4
  %48 = call i8* @STATUS(i32 %46, i32 %47)
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @BDMA_SETUP, align 4
  %51 = call i8* @STATUS(i32 %49, i32 %50)
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* @ISOCHRONOUS_XFR, align 4
  %54 = call i8* @STATUS(i32 %52, i32 %53)
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* @CURR_DMA_SET, align 4
  %57 = call i8* @STATUS(i32 %55, i32 %56)
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* @CAN_CANCEL_IMMED, align 4
  %60 = call i8* @STATUS(i32 %58, i32 %59)
  %61 = load i32, i32* %2, align 4
  %62 = load i32, i32* @DOING_CALLBACK, align 4
  %63 = call i8* @STATUS(i32 %61, i32 %62)
  %64 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %3, i8* %6, i8* %9, i8* %12, i8* %15, i8* %18, i8* %21, i8* %24, i8* %27, i8* %30, i8* %33, i8* %36, i8* %39, i8* %42, i8* %45, i8* %48, i8* %51, i8* %54, i8* %57, i8* %60, i8* %63)
  ret void
}

declare dso_local i32 @printf(i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @STATUS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
