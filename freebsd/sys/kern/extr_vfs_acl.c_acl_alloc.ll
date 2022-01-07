; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_acl.c_acl_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_acl.c_acl_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acl = type { i32 }

@M_ACL = common dso_local global i32 0, align 4
@ACL_MAX_ENTRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.acl* @acl_alloc(i32 %0) #0 {
  %2 = alloca %struct.acl*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.acl*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @M_ACL, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.acl* @malloc(i32 4, i32 %5, i32 %6)
  store %struct.acl* %7, %struct.acl** %4, align 8
  %8 = load %struct.acl*, %struct.acl** %4, align 8
  %9 = icmp eq %struct.acl* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.acl* null, %struct.acl** %2, align 8
  br label %16

11:                                               ; preds = %1
  %12 = load i32, i32* @ACL_MAX_ENTRIES, align 4
  %13 = load %struct.acl*, %struct.acl** %4, align 8
  %14 = getelementptr inbounds %struct.acl, %struct.acl* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.acl*, %struct.acl** %4, align 8
  store %struct.acl* %15, %struct.acl** %2, align 8
  br label %16

16:                                               ; preds = %11, %10
  %17 = load %struct.acl*, %struct.acl** %2, align 8
  ret %struct.acl* %17
}

declare dso_local %struct.acl* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
