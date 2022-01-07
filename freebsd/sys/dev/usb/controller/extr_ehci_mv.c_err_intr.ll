; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci_mv.c_err_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci_mv.c_err_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USB_BRIDGE_INTR_CAUSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"USB error: \00", align 1
@MV_USB_ADDR_DECODE_ERR = common dso_local global i32 0, align 4
@USB_BRIDGE_ERR_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"address decoding error (addr=%#x)\0A\00", align 1
@MV_USB_HOST_UNDERFLOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"host underflow\0A\00", align 1
@MV_USB_HOST_OVERFLOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"host overflow\0A\00", align 1
@MV_USB_DEVICE_UNDERFLOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"device underflow\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"unknown cause (cause=%#x)\0A\00", align 1
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @err_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @err_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @USB_BRIDGE_INTR_CAUSE, align 4
  %10 = call i8* @EREAD4(i32* %8, i32 %9)
  %11 = ptrtoint i8* %10 to i32
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %67

14:                                               ; preds = %1
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @MV_USB_ADDR_DECODE_ERR, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @USB_BRIDGE_ERR_ADDR, align 4
  %23 = call i8* @EREAD4(i32* %21, i32 %22)
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %20, %14
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @MV_USB_HOST_UNDERFLOW, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %27
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @MV_USB_HOST_OVERFLOW, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %34
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @MV_USB_DEVICE_UNDERFLOW, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %41
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @MV_USB_ADDR_DECODE_ERR, align 4
  %51 = load i32, i32* @MV_USB_HOST_UNDERFLOW, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @MV_USB_HOST_OVERFLOW, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @MV_USB_DEVICE_UNDERFLOW, align 4
  %56 = or i32 %54, %55
  %57 = xor i32 %56, -1
  %58 = and i32 %49, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %48
  %61 = load i32, i32* %4, align 4
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %60, %48
  %64 = load i32*, i32** %3, align 8
  %65 = load i32, i32* @USB_BRIDGE_INTR_CAUSE, align 4
  %66 = call i32 @EWRITE4(i32* %64, i32 %65, i32 0)
  br label %67

67:                                               ; preds = %63, %1
  %68 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %68
}

declare dso_local i8* @EREAD4(i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @EWRITE4(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
