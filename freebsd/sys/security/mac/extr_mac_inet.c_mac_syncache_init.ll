; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_inet.c_mac_syncache_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_inet.c_mac_syncache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.label = type { i32 }

@mac_labeled = common dso_local global i32 0, align 4
@MPC_OBJECT_SYNCACHE = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@syncache_init_label = common dso_local global i32 0, align 4
@syncache_destroy_label = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_syncache_init(%struct.label** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.label**, align 8
  %4 = alloca i32, align 4
  store %struct.label** %0, %struct.label*** %3, align 8
  %5 = load i32, i32* @mac_labeled, align 4
  %6 = load i32, i32* @MPC_OBJECT_SYNCACHE, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %1
  %10 = load i32, i32* @M_NOWAIT, align 4
  %11 = call %struct.label* @mac_labelzone_alloc(i32 %10)
  %12 = load %struct.label**, %struct.label*** %3, align 8
  store %struct.label* %11, %struct.label** %12, align 8
  %13 = load %struct.label**, %struct.label*** %3, align 8
  %14 = load %struct.label*, %struct.label** %13, align 8
  %15 = icmp eq %struct.label* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load i32, i32* @ENOMEM, align 4
  store i32 %17, i32* %2, align 4
  br label %39

18:                                               ; preds = %9
  %19 = load i32, i32* @syncache_init_label, align 4
  %20 = load %struct.label**, %struct.label*** %3, align 8
  %21 = load %struct.label*, %struct.label** %20, align 8
  %22 = load i32, i32* @M_NOWAIT, align 4
  %23 = call i32 @MAC_POLICY_CHECK_NOSLEEP(i32 %19, %struct.label* %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %18
  %27 = load i32, i32* @syncache_destroy_label, align 4
  %28 = load %struct.label**, %struct.label*** %3, align 8
  %29 = load %struct.label*, %struct.label** %28, align 8
  %30 = call i32 @MAC_POLICY_PERFORM_NOSLEEP(i32 %27, %struct.label* %29)
  %31 = load %struct.label**, %struct.label*** %3, align 8
  %32 = load %struct.label*, %struct.label** %31, align 8
  %33 = call i32 @mac_labelzone_free(%struct.label* %32)
  br label %34

34:                                               ; preds = %26, %18
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %39

36:                                               ; preds = %1
  %37 = load %struct.label**, %struct.label*** %3, align 8
  store %struct.label* null, %struct.label** %37, align 8
  br label %38

38:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %34, %16
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.label* @mac_labelzone_alloc(i32) #1

declare dso_local i32 @MAC_POLICY_CHECK_NOSLEEP(i32, %struct.label*, i32) #1

declare dso_local i32 @MAC_POLICY_PERFORM_NOSLEEP(i32, %struct.label*) #1

declare dso_local i32 @mac_labelzone_free(%struct.label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
