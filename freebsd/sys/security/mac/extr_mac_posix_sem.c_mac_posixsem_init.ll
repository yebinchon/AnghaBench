; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_posix_sem.c_mac_posixsem_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_posix_sem.c_mac_posixsem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksem = type { i32* }

@mac_labeled = common dso_local global i32 0, align 4
@MPC_OBJECT_POSIXSEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac_posixsem_init(%struct.ksem* %0) #0 {
  %2 = alloca %struct.ksem*, align 8
  store %struct.ksem* %0, %struct.ksem** %2, align 8
  %3 = load i32, i32* @mac_labeled, align 4
  %4 = load i32, i32* @MPC_OBJECT_POSIXSEM, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = call i32* (...) @mac_posixsem_label_alloc()
  %9 = load %struct.ksem*, %struct.ksem** %2, align 8
  %10 = getelementptr inbounds %struct.ksem, %struct.ksem* %9, i32 0, i32 0
  store i32* %8, i32** %10, align 8
  br label %14

11:                                               ; preds = %1
  %12 = load %struct.ksem*, %struct.ksem** %2, align 8
  %13 = getelementptr inbounds %struct.ksem, %struct.ksem* %12, i32 0, i32 0
  store i32* null, i32** %13, align 8
  br label %14

14:                                               ; preds = %11, %7
  ret void
}

declare dso_local i32* @mac_posixsem_label_alloc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
