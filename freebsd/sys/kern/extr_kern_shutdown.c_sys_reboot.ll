; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_shutdown.c_sys_reboot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_shutdown.c_sys_reboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.reboot_args = type { i32 }

@PRIV_REBOOT = common dso_local global i32 0, align 4
@RB_REROOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_reboot(%struct.thread* %0, %struct.reboot_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.reboot_args*, align 8
  %5 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.reboot_args* %1, %struct.reboot_args** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.thread*, %struct.thread** %3, align 8
  %10 = load i32, i32* @PRIV_REBOOT, align 4
  %11 = call i32 @priv_check(%struct.thread* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %8, %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = load %struct.reboot_args*, %struct.reboot_args** %4, align 8
  %17 = getelementptr inbounds %struct.reboot_args, %struct.reboot_args* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @RB_REROOT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = call i32 (...) @kern_reroot()
  store i32 %23, i32* %5, align 4
  br label %29

24:                                               ; preds = %15
  %25 = load %struct.reboot_args*, %struct.reboot_args** %4, align 8
  %26 = getelementptr inbounds %struct.reboot_args, %struct.reboot_args* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @kern_reboot(i32 %27)
  br label %29

29:                                               ; preds = %24, %22
  br label %30

30:                                               ; preds = %29, %12
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @kern_reroot(...) #1

declare dso_local i32 @kern_reboot(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
