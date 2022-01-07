; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sysctl.c_sysctl_register_disabled_oid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sysctl.c_sysctl_register_disabled_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_oid = type { i32 }

@CTLFLAG_DORMANT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"internal flag is set in oid_kind\00", align 1
@CTLTYPE = common dso_local global i32 0, align 4
@CTLTYPE_NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sysctl_register_disabled_oid(%struct.sysctl_oid* %0) #0 {
  %2 = alloca %struct.sysctl_oid*, align 8
  store %struct.sysctl_oid* %0, %struct.sysctl_oid** %2, align 8
  %3 = load %struct.sysctl_oid*, %struct.sysctl_oid** %2, align 8
  %4 = getelementptr inbounds %struct.sysctl_oid, %struct.sysctl_oid* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @CTLFLAG_DORMANT, align 4
  %7 = and i32 %5, %6
  %8 = icmp eq i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @KASSERT(i32 %9, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.sysctl_oid*, %struct.sysctl_oid** %2, align 8
  %12 = getelementptr inbounds %struct.sysctl_oid, %struct.sysctl_oid* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CTLTYPE, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @CTLTYPE_NODE, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load i32, i32* @CTLFLAG_DORMANT, align 4
  %20 = load %struct.sysctl_oid*, %struct.sysctl_oid** %2, align 8
  %21 = getelementptr inbounds %struct.sysctl_oid, %struct.sysctl_oid* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.sysctl_oid*, %struct.sysctl_oid** %2, align 8
  %26 = call i32 @sysctl_register_oid(%struct.sysctl_oid* %25)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @sysctl_register_oid(%struct.sysctl_oid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
