; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_was_deleted.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_was_deleted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.patch = type { i32 }

@PATH_WAS_DELETED = common dso_local global %struct.patch* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.patch*)* @was_deleted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @was_deleted(%struct.patch* %0) #0 {
  %2 = alloca %struct.patch*, align 8
  store %struct.patch* %0, %struct.patch** %2, align 8
  %3 = load %struct.patch*, %struct.patch** %2, align 8
  %4 = load %struct.patch*, %struct.patch** @PATH_WAS_DELETED, align 8
  %5 = icmp eq %struct.patch* %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
