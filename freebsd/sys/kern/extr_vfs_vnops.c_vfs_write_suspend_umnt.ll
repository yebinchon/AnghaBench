; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vfs_write_suspend_umnt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vfs_write_suspend_umnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mount = type { i32, i32 }

@curthread = common dso_local global %struct.TYPE_2__* null, align 8
@TDP_IGNSUSP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"vfs_write_suspend_umnt: recursed\00", align 1
@V_WAIT = common dso_local global i32 0, align 4
@MNTK_SUSPENDED = common dso_local global i32 0, align 4
@MNTK_SUSPEND2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_write_suspend_umnt(%struct.mount* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mount*, align 8
  %4 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %3, align 8
  %5 = load %struct.mount*, %struct.mount** %3, align 8
  %6 = call i32 @vn_suspendable(%struct.mount* %5)
  %7 = call i32 @MPASS(i32 %6)
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @TDP_IGNSUSP, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %37, %1
  %17 = load %struct.mount*, %struct.mount** %3, align 8
  %18 = call i32 @vn_finished_write(%struct.mount* %17)
  %19 = load %struct.mount*, %struct.mount** %3, align 8
  %20 = call i32 @vfs_write_suspend(%struct.mount* %19, i32 0)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load i32, i32* @V_WAIT, align 4
  %25 = call i32 @vn_start_write(i32* null, %struct.mount** %3, i32 %24)
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %61

27:                                               ; preds = %16
  %28 = load %struct.mount*, %struct.mount** %3, align 8
  %29 = call i32 @MNT_ILOCK(%struct.mount* %28)
  %30 = load %struct.mount*, %struct.mount** %3, align 8
  %31 = getelementptr inbounds %struct.mount, %struct.mount* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MNTK_SUSPENDED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %42

37:                                               ; preds = %27
  %38 = load %struct.mount*, %struct.mount** %3, align 8
  %39 = call i32 @MNT_IUNLOCK(%struct.mount* %38)
  %40 = load i32, i32* @V_WAIT, align 4
  %41 = call i32 @vn_start_write(i32* null, %struct.mount** %3, i32 %40)
  br label %16

42:                                               ; preds = %36
  %43 = load i32, i32* @MNTK_SUSPENDED, align 4
  %44 = load i32, i32* @MNTK_SUSPEND2, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = load %struct.mount*, %struct.mount** %3, align 8
  %48 = getelementptr inbounds %struct.mount, %struct.mount* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.mount*, %struct.mount** %3, align 8
  %52 = getelementptr inbounds %struct.mount, %struct.mount* %51, i32 0, i32 1
  %53 = call i32 @wakeup(i32* %52)
  %54 = load %struct.mount*, %struct.mount** %3, align 8
  %55 = call i32 @MNT_IUNLOCK(%struct.mount* %54)
  %56 = load i32, i32* @TDP_IGNSUSP, align 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %42, %23
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @vn_suspendable(%struct.mount*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

declare dso_local i32 @vfs_write_suspend(%struct.mount*, i32) #1

declare dso_local i32 @vn_start_write(i32*, %struct.mount**, i32) #1

declare dso_local i32 @MNT_ILOCK(%struct.mount*) #1

declare dso_local i32 @MNT_IUNLOCK(%struct.mount*) #1

declare dso_local i32 @wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
