; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_modevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_modevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fw_modevent.fwdev_ehtag = internal global i32* null, align 8
@dev_clone = common dso_local global i32 0, align 4
@fwdev_clone = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @fw_modevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_modevent(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %23 [
    i32 130, label %10
    i32 128, label %14
    i32 129, label %22
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* @dev_clone, align 4
  %12 = load i32, i32* @fwdev_clone, align 4
  %13 = call i32* @EVENTHANDLER_REGISTER(i32 %11, i32 %12, i32 0, i32 1000)
  store i32* %13, i32** @fw_modevent.fwdev_ehtag, align 8
  br label %25

14:                                               ; preds = %3
  %15 = load i32*, i32** @fw_modevent.fwdev_ehtag, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* @dev_clone, align 4
  %19 = load i32*, i32** @fw_modevent.fwdev_ehtag, align 8
  %20 = call i32 @EVENTHANDLER_DEREGISTER(i32 %18, i32* %19)
  br label %21

21:                                               ; preds = %17, %14
  br label %25

22:                                               ; preds = %3
  br label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %24, i32* %4, align 4
  br label %27

25:                                               ; preds = %22, %21, %10
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32* @EVENTHANDLER_REGISTER(i32, i32, i32, i32) #1

declare dso_local i32 @EVENTHANDLER_DEREGISTER(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
