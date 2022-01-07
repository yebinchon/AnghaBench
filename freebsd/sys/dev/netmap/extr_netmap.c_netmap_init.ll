; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAKEDEV_ETERNAL_KLD = common dso_local global i32 0, align 4
@netmap_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"netmap\00", align 1
@netmap_dev = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"netmap: loaded module\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netmap_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @NMG_LOCK_INIT()
  %4 = call i32 (...) @netmap_mem_init()
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %28

8:                                                ; preds = %0
  %9 = load i32, i32* @MAKEDEV_ETERNAL_KLD, align 4
  %10 = load i32, i32* @UID_ROOT, align 4
  %11 = load i32, i32* @GID_WHEEL, align 4
  %12 = call i32 @make_dev_credf(i32 %9, i32* @netmap_cdevsw, i32 0, i32* null, i32 %10, i32 %11, i32 384, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* @netmap_dev, align 4
  %13 = load i32, i32* @netmap_dev, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  br label %28

16:                                               ; preds = %8
  %17 = call i32 (...) @netmap_init_bridges()
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %28

21:                                               ; preds = %16
  %22 = call i32 (...) @nm_os_ifnet_init()
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %28

26:                                               ; preds = %21
  %27 = call i32 @nm_prinf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %31

28:                                               ; preds = %25, %20, %15, %7
  %29 = call i32 (...) @netmap_fini()
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %1, align 4
  br label %31

31:                                               ; preds = %28, %26
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

declare dso_local i32 @NMG_LOCK_INIT(...) #1

declare dso_local i32 @netmap_mem_init(...) #1

declare dso_local i32 @make_dev_credf(i32, i32*, i32, i32*, i32, i32, i32, i8*) #1

declare dso_local i32 @netmap_init_bridges(...) #1

declare dso_local i32 @nm_os_ifnet_init(...) #1

declare dso_local i32 @nm_prinf(i8*) #1

declare dso_local i32 @netmap_fini(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
