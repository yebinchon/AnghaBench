; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_tty.c_ctty_drvinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_tty.c_ctty_drvinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dev_clone = common dso_local global i32 0, align 4
@ctty_clone = common dso_local global i32 0, align 4
@MAKEDEV_ETERNAL = common dso_local global i32 0, align 4
@ctty_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ctty\00", align 1
@ctty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ctty_drvinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctty_drvinit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @dev_clone, align 4
  %4 = load i32, i32* @ctty_clone, align 4
  %5 = call i32 @EVENTHANDLER_REGISTER(i32 %3, i32 %4, i32 0, i32 1000)
  %6 = load i32, i32* @MAKEDEV_ETERNAL, align 4
  %7 = load i32, i32* @UID_ROOT, align 4
  %8 = load i32, i32* @GID_WHEEL, align 4
  %9 = call i32 @make_dev_credf(i32 %6, i32* @ctty_cdevsw, i32 0, i32* null, i32 %7, i32 %8, i32 438, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %9, i32* @ctty, align 4
  ret void
}

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, i32, i32) #1

declare dso_local i32 @make_dev_credf(i32, i32*, i32, i32*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
