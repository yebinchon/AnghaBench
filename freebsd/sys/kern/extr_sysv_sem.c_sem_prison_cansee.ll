; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_sem.c_sem_prison_cansee.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_sem.c_sem_prison_cansee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prison = type { i32 }
%struct.semid_kernel = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.prison* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.prison*, %struct.semid_kernel*)* @sem_prison_cansee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sem_prison_cansee(%struct.prison* %0, %struct.semid_kernel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.prison*, align 8
  %5 = alloca %struct.semid_kernel*, align 8
  store %struct.prison* %0, %struct.prison** %4, align 8
  store %struct.semid_kernel* %1, %struct.semid_kernel** %5, align 8
  %6 = load %struct.semid_kernel*, %struct.semid_kernel** %5, align 8
  %7 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp eq %struct.TYPE_2__* %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %2
  %11 = load %struct.prison*, %struct.prison** %4, align 8
  %12 = load %struct.semid_kernel*, %struct.semid_kernel** %5, align 8
  %13 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.prison*, %struct.prison** %15, align 8
  %17 = icmp eq %struct.prison* %11, %16
  br i1 %17, label %29, label %18

18:                                               ; preds = %10
  %19 = load %struct.prison*, %struct.prison** %4, align 8
  %20 = load %struct.semid_kernel*, %struct.semid_kernel** %5, align 8
  %21 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.prison*, %struct.prison** %23, align 8
  %25 = call i64 @prison_ischild(%struct.prison* %19, %struct.prison* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %18, %2
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %3, align 4
  br label %30

29:                                               ; preds = %18, %10
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %27
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i64 @prison_ischild(%struct.prison*, %struct.prison*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
