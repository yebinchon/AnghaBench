; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sysctl.c_sysctl_ctx_entry_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sysctl.c_sysctl_ctx_entry_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_ctx_entry = type { %struct.sysctl_oid* }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@M_SYSCTLOID = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sysctl_ctx_entry* @sysctl_ctx_entry_add(%struct.sysctl_ctx_list* %0, %struct.sysctl_oid* %1) #0 {
  %3 = alloca %struct.sysctl_ctx_entry*, align 8
  %4 = alloca %struct.sysctl_ctx_list*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  %6 = alloca %struct.sysctl_ctx_entry*, align 8
  store %struct.sysctl_ctx_list* %0, %struct.sysctl_ctx_list** %4, align 8
  store %struct.sysctl_oid* %1, %struct.sysctl_oid** %5, align 8
  %7 = call i32 (...) @SYSCTL_ASSERT_WLOCKED()
  %8 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %9 = icmp eq %struct.sysctl_ctx_list* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %12 = icmp eq %struct.sysctl_oid* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  store %struct.sysctl_ctx_entry* null, %struct.sysctl_ctx_entry** %3, align 8
  br label %26

14:                                               ; preds = %10
  %15 = load i32, i32* @M_SYSCTLOID, align 4
  %16 = load i32, i32* @M_WAITOK, align 4
  %17 = call %struct.sysctl_ctx_entry* @malloc(i32 8, i32 %15, i32 %16)
  store %struct.sysctl_ctx_entry* %17, %struct.sysctl_ctx_entry** %6, align 8
  %18 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %19 = load %struct.sysctl_ctx_entry*, %struct.sysctl_ctx_entry** %6, align 8
  %20 = getelementptr inbounds %struct.sysctl_ctx_entry, %struct.sysctl_ctx_entry* %19, i32 0, i32 0
  store %struct.sysctl_oid* %18, %struct.sysctl_oid** %20, align 8
  %21 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %22 = load %struct.sysctl_ctx_entry*, %struct.sysctl_ctx_entry** %6, align 8
  %23 = load i32, i32* @link, align 4
  %24 = call i32 @TAILQ_INSERT_HEAD(%struct.sysctl_ctx_list* %21, %struct.sysctl_ctx_entry* %22, i32 %23)
  %25 = load %struct.sysctl_ctx_entry*, %struct.sysctl_ctx_entry** %6, align 8
  store %struct.sysctl_ctx_entry* %25, %struct.sysctl_ctx_entry** %3, align 8
  br label %26

26:                                               ; preds = %14, %13
  %27 = load %struct.sysctl_ctx_entry*, %struct.sysctl_ctx_entry** %3, align 8
  ret %struct.sysctl_ctx_entry* %27
}

declare dso_local i32 @SYSCTL_ASSERT_WLOCKED(...) #1

declare dso_local %struct.sysctl_ctx_entry* @malloc(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(%struct.sysctl_ctx_list*, %struct.sysctl_ctx_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
