; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sysctl.c_sysctl_move_oid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sysctl.c_sysctl_move_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_oid = type { i32, %struct.sysctl_oid_list*, i32 }
%struct.sysctl_oid_list = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysctl_move_oid(%struct.sysctl_oid* %0, %struct.sysctl_oid_list* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sysctl_oid*, align 8
  %5 = alloca %struct.sysctl_oid_list*, align 8
  %6 = alloca %struct.sysctl_oid*, align 8
  store %struct.sysctl_oid* %0, %struct.sysctl_oid** %4, align 8
  store %struct.sysctl_oid_list* %1, %struct.sysctl_oid_list** %5, align 8
  %7 = call i32 (...) @SYSCTL_WLOCK()
  %8 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %9 = getelementptr inbounds %struct.sysctl_oid, %struct.sysctl_oid* %8, i32 0, i32 1
  %10 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %9, align 8
  %11 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %12 = icmp eq %struct.sysctl_oid_list* %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 (...) @SYSCTL_WUNLOCK()
  store i32 0, i32* %3, align 4
  br label %38

15:                                               ; preds = %2
  %16 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %17 = getelementptr inbounds %struct.sysctl_oid, %struct.sysctl_oid* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %20 = call %struct.sysctl_oid* @sysctl_find_oidname(i32 %18, %struct.sysctl_oid_list* %19)
  store %struct.sysctl_oid* %20, %struct.sysctl_oid** %6, align 8
  %21 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %22 = icmp ne %struct.sysctl_oid* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = call i32 (...) @SYSCTL_WUNLOCK()
  %25 = load i32, i32* @EEXIST, align 4
  store i32 %25, i32* %3, align 4
  br label %38

26:                                               ; preds = %15
  %27 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %28 = call i32 @sysctl_unregister_oid(%struct.sysctl_oid* %27)
  %29 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %30 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %31 = getelementptr inbounds %struct.sysctl_oid, %struct.sysctl_oid* %30, i32 0, i32 1
  store %struct.sysctl_oid_list* %29, %struct.sysctl_oid_list** %31, align 8
  %32 = load i32, i32* @OID_AUTO, align 4
  %33 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %34 = getelementptr inbounds %struct.sysctl_oid, %struct.sysctl_oid* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %36 = call i32 @sysctl_register_oid(%struct.sysctl_oid* %35)
  %37 = call i32 (...) @SYSCTL_WUNLOCK()
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %26, %23, %13
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @SYSCTL_WLOCK(...) #1

declare dso_local i32 @SYSCTL_WUNLOCK(...) #1

declare dso_local %struct.sysctl_oid* @sysctl_find_oidname(i32, %struct.sysctl_oid_list*) #1

declare dso_local i32 @sysctl_unregister_oid(%struct.sysctl_oid*) #1

declare dso_local i32 @sysctl_register_oid(%struct.sysctl_oid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
