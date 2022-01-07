; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vkbd/extr_vkbd.c_vkbd_modevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vkbd/extr_vkbd.c_vkbd_modevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vkbd_modevent.tag = internal global i32* null, align 8
@vkbd_dev_clones = common dso_local global i32 0, align 4
@dev_clone = common dso_local global i32 0, align 4
@vkbd_dev_clone = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vkbd_kbd_driver = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @vkbd_modevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vkbd_modevent(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %27 [
    i32 129, label %9
    i32 128, label %21
  ]

9:                                                ; preds = %3
  %10 = call i32 @clone_setup(i32* @vkbd_dev_clones)
  %11 = load i32, i32* @dev_clone, align 4
  %12 = load i32, i32* @vkbd_dev_clone, align 4
  %13 = call i32* @EVENTHANDLER_REGISTER(i32 %11, i32 %12, i32 0, i32 1000)
  store i32* %13, i32** @vkbd_modevent.tag, align 8
  %14 = load i32*, i32** @vkbd_modevent.tag, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = call i32 @clone_cleanup(i32* @vkbd_dev_clones)
  %18 = load i32, i32* @ENOMEM, align 4
  store i32 %18, i32* %4, align 4
  br label %30

19:                                               ; preds = %9
  %20 = call i32 @kbd_add_driver(i32* @vkbd_kbd_driver)
  br label %29

21:                                               ; preds = %3
  %22 = call i32 @kbd_delete_driver(i32* @vkbd_kbd_driver)
  %23 = load i32, i32* @dev_clone, align 4
  %24 = load i32*, i32** @vkbd_modevent.tag, align 8
  %25 = call i32 @EVENTHANDLER_DEREGISTER(i32 %23, i32* %24)
  %26 = call i32 @clone_cleanup(i32* @vkbd_dev_clones)
  br label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %28, i32* %4, align 4
  br label %30

29:                                               ; preds = %21, %19
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %27, %16
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @clone_setup(i32*) #1

declare dso_local i32* @EVENTHANDLER_REGISTER(i32, i32, i32, i32) #1

declare dso_local i32 @clone_cleanup(i32*) #1

declare dso_local i32 @kbd_add_driver(i32*) #1

declare dso_local i32 @kbd_delete_driver(i32*) #1

declare dso_local i32 @EVENTHANDLER_DEREGISTER(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
