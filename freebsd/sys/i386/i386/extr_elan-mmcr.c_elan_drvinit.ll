; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_elan-mmcr.c_elan_drvinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_elan-mmcr.c_elan_drvinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mmcrptr = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"Elan-mmcr driver: MMCR at %p.%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@elan_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"elan-mmcr\00", align 1
@gpio_config = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"................................\00", align 1
@watchdog_list = common dso_local global i32 0, align 4
@elan_watchdog = common dso_local global i32 0, align 4
@BIOS_OEM_MAXLEN = common dso_local global i32 0, align 4
@bios_soekris = common dso_local global i32 0, align 4
@gpio_led = common dso_local global i32 0, align 4
@led_cookie = common dso_local global i32* null, align 8
@led_dev = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @elan_drvinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elan_drvinit() #0 {
  %1 = load i32*, i32** @mmcrptr, align 8
  %2 = icmp eq i32* %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %16

4:                                                ; preds = %0
  %5 = load i32*, i32** @mmcrptr, align 8
  %6 = bitcast i32* %5 to i8*
  %7 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32, i32* @UID_ROOT, align 4
  %9 = load i32, i32* @GID_WHEEL, align 4
  %10 = call i32 @make_dev(i32* @elan_cdevsw, i32 0, i32 %8, i32 %9, i32 384, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %11 = load i32, i32* @gpio_config, align 4
  %12 = call i32 @strcpy(i32 %11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %13 = load i32, i32* @watchdog_list, align 4
  %14 = load i32, i32* @elan_watchdog, align 4
  %15 = call i32 @EVENTHANDLER_REGISTER(i32 %13, i32 %14, i32* null, i32 0)
  br label %16

16:                                               ; preds = %4, %3
  ret void
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @make_dev(i32*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
