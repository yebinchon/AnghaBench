; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_sem.c_sem_find_prison.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_sem.c_sem_find_prison.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prison = type { i32 }
%struct.ucred = type { %struct.prison* }

@sem_prison_slot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.prison* (%struct.ucred*)* @sem_find_prison to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.prison* @sem_find_prison(%struct.ucred* %0) #0 {
  %2 = alloca %struct.ucred*, align 8
  %3 = alloca %struct.prison*, align 8
  %4 = alloca %struct.prison*, align 8
  store %struct.ucred* %0, %struct.ucred** %2, align 8
  %5 = load %struct.ucred*, %struct.ucred** %2, align 8
  %6 = getelementptr inbounds %struct.ucred, %struct.ucred* %5, i32 0, i32 0
  %7 = load %struct.prison*, %struct.prison** %6, align 8
  store %struct.prison* %7, %struct.prison** %3, align 8
  %8 = load %struct.prison*, %struct.prison** %3, align 8
  %9 = call i32 @prison_lock(%struct.prison* %8)
  %10 = load %struct.prison*, %struct.prison** %3, align 8
  %11 = load i32, i32* @sem_prison_slot, align 4
  %12 = call %struct.prison* @osd_jail_get(%struct.prison* %10, i32 %11)
  store %struct.prison* %12, %struct.prison** %4, align 8
  %13 = load %struct.prison*, %struct.prison** %3, align 8
  %14 = call i32 @prison_unlock(%struct.prison* %13)
  %15 = load %struct.prison*, %struct.prison** %4, align 8
  ret %struct.prison* %15
}

declare dso_local i32 @prison_lock(%struct.prison*) #1

declare dso_local %struct.prison* @osd_jail_get(%struct.prison*, i32) #1

declare dso_local i32 @prison_unlock(%struct.prison*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
