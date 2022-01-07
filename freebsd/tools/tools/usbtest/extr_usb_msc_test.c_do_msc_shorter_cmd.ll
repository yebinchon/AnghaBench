; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usb_msc_test.c_do_msc_shorter_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usb_msc_test.c_do_msc_shorter_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@xfer_out = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Sent short %d of %d bytes wrapper block, status = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"ERROR: Too short command wrapper was not accepted\0A\00", align 1
@stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @do_msc_shorter_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_msc_shorter_cmd(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [4 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %8 = call i32 @memset(i32* %7, i32 0, i32 16)
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %30, %1
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ne i64 %11, 15
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = load i32, i32* @xfer_out, align 4
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @libusb20_tr_bulk_intr_sync(i32 %14, i32* %15, i32 %16, i32* %4, i32 250)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %18, i32 15, i32 %19)
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @do_msc_reset(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %13
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 0), align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stats, i32 0, i32 0), align 4
  br label %33

29:                                               ; preds = %13
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %9

33:                                               ; preds = %25, %9
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @libusb20_tr_bulk_intr_sync(i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @do_msc_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
