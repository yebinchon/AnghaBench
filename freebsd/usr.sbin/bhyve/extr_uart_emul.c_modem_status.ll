; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_uart_emul.c_modem_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_uart_emul.c_modem_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCR_LOOPBACK = common dso_local global i32 0, align 4
@MCR_RTS = common dso_local global i32 0, align 4
@MSR_CTS = common dso_local global i32 0, align 4
@MCR_DTR = common dso_local global i32 0, align 4
@MSR_DSR = common dso_local global i32 0, align 4
@MCR_OUT1 = common dso_local global i32 0, align 4
@MSR_RI = common dso_local global i32 0, align 4
@MCR_OUT2 = common dso_local global i32 0, align 4
@MSR_DCD = common dso_local global i32 0, align 4
@MSR_DELTA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @modem_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modem_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @MCR_LOOPBACK, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %45

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @MCR_RTS, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load i32, i32* @MSR_CTS, align 4
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %13, %8
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @MCR_DTR, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @MSR_DSR, align 4
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %17
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @MCR_OUT1, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @MSR_RI, align 4
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %26
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @MCR_OUT2, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @MSR_DCD, align 4
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %35
  br label %49

45:                                               ; preds = %1
  %46 = load i32, i32* @MSR_DCD, align 4
  %47 = load i32, i32* @MSR_DSR, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %44
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @MSR_DELTA_MASK, align 4
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
