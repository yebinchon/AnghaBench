; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sysctl.c_sysctl_ctx_entry_del.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sysctl.c_sysctl_ctx_entry_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_ctx_entry = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@M_SYSCTLOID = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysctl_ctx_entry_del(%struct.sysctl_ctx_list* %0, %struct.sysctl_oid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sysctl_ctx_list*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  %6 = alloca %struct.sysctl_ctx_entry*, align 8
  store %struct.sysctl_ctx_list* %0, %struct.sysctl_ctx_list** %4, align 8
  store %struct.sysctl_oid* %1, %struct.sysctl_oid** %5, align 8
  %7 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %8 = icmp eq %struct.sysctl_ctx_list* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %11 = icmp eq %struct.sysctl_oid* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %33

14:                                               ; preds = %9
  %15 = call i32 (...) @SYSCTL_WLOCK()
  %16 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %17 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %18 = call %struct.sysctl_ctx_entry* @sysctl_ctx_entry_find(%struct.sysctl_ctx_list* %16, %struct.sysctl_oid* %17)
  store %struct.sysctl_ctx_entry* %18, %struct.sysctl_ctx_entry** %6, align 8
  %19 = load %struct.sysctl_ctx_entry*, %struct.sysctl_ctx_entry** %6, align 8
  %20 = icmp ne %struct.sysctl_ctx_entry* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %14
  %22 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %23 = load %struct.sysctl_ctx_entry*, %struct.sysctl_ctx_entry** %6, align 8
  %24 = load i32, i32* @link, align 4
  %25 = call i32 @TAILQ_REMOVE(%struct.sysctl_ctx_list* %22, %struct.sysctl_ctx_entry* %23, i32 %24)
  %26 = call i32 (...) @SYSCTL_WUNLOCK()
  %27 = load %struct.sysctl_ctx_entry*, %struct.sysctl_ctx_entry** %6, align 8
  %28 = load i32, i32* @M_SYSCTLOID, align 4
  %29 = call i32 @free(%struct.sysctl_ctx_entry* %27, i32 %28)
  store i32 0, i32* %3, align 4
  br label %33

30:                                               ; preds = %14
  %31 = call i32 (...) @SYSCTL_WUNLOCK()
  %32 = load i32, i32* @ENOENT, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %30, %21, %12
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @SYSCTL_WLOCK(...) #1

declare dso_local %struct.sysctl_ctx_entry* @sysctl_ctx_entry_find(%struct.sysctl_ctx_list*, %struct.sysctl_oid*) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.sysctl_ctx_list*, %struct.sysctl_ctx_entry*, i32) #1

declare dso_local i32 @SYSCTL_WUNLOCK(...) #1

declare dso_local i32 @free(%struct.sysctl_ctx_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
