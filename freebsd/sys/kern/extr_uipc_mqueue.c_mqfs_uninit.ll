; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqfs_uninit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqfs_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mqfs_info = type { i32, i32* }
%struct.vfsconf = type { i32 }

@unloadable = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@mqfs_osd_jail_slot = common dso_local global i32 0, align 4
@process_exit = common dso_local global i32 0, align 4
@exit_tag = common dso_local global i32 0, align 4
@mqfs_data = common dso_local global %struct.mqfs_info zeroinitializer, align 8
@mqnode_zone = common dso_local global i32 0, align 4
@mqueue_zone = common dso_local global i32 0, align 4
@mvdata_zone = common dso_local global i32 0, align 4
@mqnoti_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfsconf*)* @mqfs_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mqfs_uninit(%struct.vfsconf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vfsconf*, align 8
  %4 = alloca %struct.mqfs_info*, align 8
  store %struct.vfsconf* %0, %struct.vfsconf** %3, align 8
  %5 = load i32, i32* @unloadable, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %8, i32* %2, align 4
  br label %34

9:                                                ; preds = %1
  %10 = load i32, i32* @mqfs_osd_jail_slot, align 4
  %11 = call i32 @osd_jail_deregister(i32 %10)
  %12 = load i32, i32* @process_exit, align 4
  %13 = load i32, i32* @exit_tag, align 4
  %14 = call i32 @EVENTHANDLER_DEREGISTER(i32 %12, i32 %13)
  store %struct.mqfs_info* @mqfs_data, %struct.mqfs_info** %4, align 8
  %15 = load %struct.mqfs_info*, %struct.mqfs_info** %4, align 8
  %16 = getelementptr inbounds %struct.mqfs_info, %struct.mqfs_info* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @mqfs_destroy(i32* %17)
  %19 = load %struct.mqfs_info*, %struct.mqfs_info** %4, align 8
  %20 = getelementptr inbounds %struct.mqfs_info, %struct.mqfs_info* %19, i32 0, i32 1
  store i32* null, i32** %20, align 8
  %21 = load %struct.mqfs_info*, %struct.mqfs_info** %4, align 8
  %22 = call i32 @mqfs_fileno_uninit(%struct.mqfs_info* %21)
  %23 = load %struct.mqfs_info*, %struct.mqfs_info** %4, align 8
  %24 = getelementptr inbounds %struct.mqfs_info, %struct.mqfs_info* %23, i32 0, i32 0
  %25 = call i32 @sx_destroy(i32* %24)
  %26 = load i32, i32* @mqnode_zone, align 4
  %27 = call i32 @uma_zdestroy(i32 %26)
  %28 = load i32, i32* @mqueue_zone, align 4
  %29 = call i32 @uma_zdestroy(i32 %28)
  %30 = load i32, i32* @mvdata_zone, align 4
  %31 = call i32 @uma_zdestroy(i32 %30)
  %32 = load i32, i32* @mqnoti_zone, align 4
  %33 = call i32 @uma_zdestroy(i32 %32)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %9, %7
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @osd_jail_deregister(i32) #1

declare dso_local i32 @EVENTHANDLER_DEREGISTER(i32, i32) #1

declare dso_local i32 @mqfs_destroy(i32*) #1

declare dso_local i32 @mqfs_fileno_uninit(%struct.mqfs_info*) #1

declare dso_local i32 @sx_destroy(i32*) #1

declare dso_local i32 @uma_zdestroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
