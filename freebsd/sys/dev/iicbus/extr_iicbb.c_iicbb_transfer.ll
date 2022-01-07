; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicbb.c_iicbb_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicbb.c_iicbb_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_msg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.iic_msg*, i32)* @iicbb_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iicbb_transfer(i32 %0, %struct.iic_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.iic_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.iic_msg* %1, %struct.iic_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @device_get_parent(i32 %9)
  %11 = call i32 @IICBB_PRE_XFER(i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %25

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @iicbus_transfer_gen(i32 %17, %struct.iic_msg* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @device_get_parent(i32 %21)
  %23 = call i32 @IICBB_POST_XFER(i32 %22)
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %16, %14
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @IICBB_PRE_XFER(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @iicbus_transfer_gen(i32, %struct.iic_msg*, i32) #1

declare dso_local i32 @IICBB_POST_XFER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
