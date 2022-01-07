; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mlxcontrol/extr_interface.c_mlxd_find_ctrlr_search.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mlxcontrol/extr_interface.c_mlxd_find_ctrlr_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@MLX_NEXT_CHILD = common dso_local global i32 0, align 4
@mlxd_find_ctrlr_param = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@MLX_GET_SYSDRIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @mlxd_find_ctrlr_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxd_find_ctrlr_search(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @ctrlrpath(i32 %7)
  %9 = call i32 @open(i32 %8, i32 0)
  store i32 %9, i32* %6, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %2
  store i32 -1, i32* %5, align 4
  br label %12

12:                                               ; preds = %31, %11
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @MLX_NEXT_CHILD, align 4
  %15 = call i64 @ioctl(i32 %13, i32 %14, i32* %5)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %32

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mlxd_find_ctrlr_param, i32 0, i32 0), align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mlxd_find_ctrlr_param, i32 0, i32 1), align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @MLX_GET_SYSDRIVE, align 4
  %26 = call i64 @ioctl(i32 %24, i32 %25, i32* %5)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mlxd_find_ctrlr_param, i32 0, i32 2), align 4
  br label %30

30:                                               ; preds = %28, %22
  br label %31

31:                                               ; preds = %30, %18
  br label %12

32:                                               ; preds = %17
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @close(i32 %33)
  br label %35

35:                                               ; preds = %32, %2
  ret void
}

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @ctrlrpath(i32) #1

declare dso_local i64 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
