; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sysctl.c_sysctl_enable_oid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sysctl.c_sysctl_enable_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_oid = type { i32 }

@CTLTYPE = common dso_local global i32 0, align 4
@CTLTYPE_NODE = common dso_local global i32 0, align 4
@CTLFLAG_DORMANT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"sysctl node is marked as dormant\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"enabling already enabled sysctl oid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sysctl_enable_oid(%struct.sysctl_oid* %0) #0 {
  %2 = alloca %struct.sysctl_oid*, align 8
  store %struct.sysctl_oid* %0, %struct.sysctl_oid** %2, align 8
  %3 = call i32 (...) @SYSCTL_ASSERT_WLOCKED()
  %4 = load %struct.sysctl_oid*, %struct.sysctl_oid** %2, align 8
  %5 = getelementptr inbounds %struct.sysctl_oid, %struct.sysctl_oid* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @CTLTYPE, align 4
  %8 = and i32 %6, %7
  %9 = load i32, i32* @CTLTYPE_NODE, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.sysctl_oid*, %struct.sysctl_oid** %2, align 8
  %13 = getelementptr inbounds %struct.sysctl_oid, %struct.sysctl_oid* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CTLFLAG_DORMANT, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %35

20:                                               ; preds = %1
  %21 = load %struct.sysctl_oid*, %struct.sysctl_oid** %2, align 8
  %22 = getelementptr inbounds %struct.sysctl_oid, %struct.sysctl_oid* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CTLFLAG_DORMANT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @KASSERT(i32 %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @CTLFLAG_DORMANT, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.sysctl_oid*, %struct.sysctl_oid** %2, align 8
  %32 = getelementptr inbounds %struct.sysctl_oid, %struct.sysctl_oid* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %20, %11
  ret void
}

declare dso_local i32 @SYSCTL_ASSERT_WLOCKED(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
