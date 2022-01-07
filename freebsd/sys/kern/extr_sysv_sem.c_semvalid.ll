; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_sem.c_semvalid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_sem.c_semvalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prison = type { i32 }
%struct.semid_kernel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@SEM_ALLOC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.prison*, %struct.semid_kernel*)* @semvalid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @semvalid(i32 %0, %struct.prison* %1, %struct.semid_kernel* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.prison*, align 8
  %6 = alloca %struct.semid_kernel*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.prison* %1, %struct.prison** %5, align 8
  store %struct.semid_kernel* %2, %struct.semid_kernel** %6, align 8
  %7 = load %struct.semid_kernel*, %struct.semid_kernel** %6, align 8
  %8 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @SEM_ALLOC, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %3
  %16 = load %struct.semid_kernel*, %struct.semid_kernel** %6, align 8
  %17 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @IPCID_TO_SEQ(i32 %21)
  %23 = icmp ne i64 %20, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %15
  %25 = load %struct.prison*, %struct.prison** %5, align 8
  %26 = load %struct.semid_kernel*, %struct.semid_kernel** %6, align 8
  %27 = call i64 @sem_prison_cansee(%struct.prison* %25, %struct.semid_kernel* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24, %15, %3
  %30 = load i32, i32* @EINVAL, align 4
  br label %32

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 0, %31 ]
  ret i32 %33
}

declare dso_local i64 @IPCID_TO_SEQ(i32) #1

declare dso_local i64 @sem_prison_cansee(%struct.prison*, %struct.semid_kernel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
