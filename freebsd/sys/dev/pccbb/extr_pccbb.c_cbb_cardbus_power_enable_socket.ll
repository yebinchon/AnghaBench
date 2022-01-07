; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb.c_cbb_cardbus_power_enable_socket.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb.c_cbb_cardbus_power_enable_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbb_softc = type { i32 }

@CBB_SOCKET_STATE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Reset failed, trying again.\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"cbbErr1\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @cbb_cardbus_power_enable_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbb_cardbus_power_enable_socket(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cbb_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.cbb_softc* @device_get_softc(i32 %9)
  store %struct.cbb_softc* %10, %struct.cbb_softc** %6, align 8
  %11 = load %struct.cbb_softc*, %struct.cbb_softc** %6, align 8
  %12 = load i32, i32* @CBB_SOCKET_STATE, align 4
  %13 = call i32 @cbb_get(%struct.cbb_softc* %11, i32 %12)
  %14 = call i32 @CBB_CARD_PRESENT(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  store i32 %17, i32* %3, align 4
  br label %52

18:                                               ; preds = %2
  store i32 10, i32* %8, align 4
  br label %19

19:                                               ; preds = %49, %18
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @cbb_do_power(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %52

26:                                               ; preds = %19
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @cbb_cardbus_reset_power(i32 %27, i32 %28, i32 1)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @cbb_cardbus_power_disable_socket(i32 %35, i32 %36)
  %38 = load i32, i32* @hz, align 4
  %39 = sdiv i32 %38, 10
  %40 = call i32 @pause(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %32, %26
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %8, align 4
  %48 = icmp sgt i32 %46, 0
  br label %49

49:                                               ; preds = %45, %42
  %50 = phi i1 [ false, %42 ], [ %48, %45 ]
  br i1 %50, label %19, label %51

51:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %24, %16
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.cbb_softc* @device_get_softc(i32) #1

declare dso_local i32 @CBB_CARD_PRESENT(i32) #1

declare dso_local i32 @cbb_get(%struct.cbb_softc*, i32) #1

declare dso_local i32 @cbb_do_power(i32) #1

declare dso_local i32 @cbb_cardbus_reset_power(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @cbb_cardbus_power_disable_socket(i32, i32) #1

declare dso_local i32 @pause(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
