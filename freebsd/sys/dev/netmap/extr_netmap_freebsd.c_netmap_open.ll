; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_freebsd.c_netmap_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_freebsd.c_netmap_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.netmap_priv_d = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@netmap_dtor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @netmap_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netmap_open(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.netmap_priv_d*, align 8
  %10 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.thread* %3, %struct.thread** %8, align 8
  %11 = load %struct.cdev*, %struct.cdev** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.thread*, %struct.thread** %8, align 8
  %15 = call i32 (...) @NMG_LOCK()
  %16 = call %struct.netmap_priv_d* (...) @netmap_priv_new()
  store %struct.netmap_priv_d* %16, %struct.netmap_priv_d** %9, align 8
  %17 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %9, align 8
  %18 = icmp eq %struct.netmap_priv_d* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  store i32 %20, i32* %10, align 4
  br label %31

21:                                               ; preds = %4
  %22 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %9, align 8
  %23 = load i32, i32* @netmap_dtor, align 4
  %24 = call i32 @devfs_set_cdevpriv(%struct.netmap_priv_d* %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %9, align 8
  %29 = call i32 @netmap_priv_delete(%struct.netmap_priv_d* %28)
  br label %30

30:                                               ; preds = %27, %21
  br label %31

31:                                               ; preds = %30, %19
  %32 = call i32 (...) @NMG_UNLOCK()
  %33 = load i32, i32* %10, align 4
  ret i32 %33
}

declare dso_local i32 @NMG_LOCK(...) #1

declare dso_local %struct.netmap_priv_d* @netmap_priv_new(...) #1

declare dso_local i32 @devfs_set_cdevpriv(%struct.netmap_priv_d*, i32) #1

declare dso_local i32 @netmap_priv_delete(%struct.netmap_priv_d*) #1

declare dso_local i32 @NMG_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
