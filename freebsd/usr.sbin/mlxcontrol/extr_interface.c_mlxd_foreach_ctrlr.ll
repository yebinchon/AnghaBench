; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mlxcontrol/extr_interface.c_mlxd_foreach_ctrlr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mlxcontrol/extr_interface.c_mlxd_foreach_ctrlr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxd_foreach_action = type { i32, i32 (i32, i32)* }

@MLX_NEXT_CHILD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxd_foreach_ctrlr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mlxd_foreach_action*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.mlxd_foreach_action*
  store %struct.mlxd_foreach_action* %10, %struct.mlxd_foreach_action** %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @ctrlrpath(i32 %11)
  %13 = call i32 @open(i32 %12, i32 0)
  store i32 %13, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %46

16:                                               ; preds = %2
  store i32 -1, i32* %6, align 4
  br label %17

17:                                               ; preds = %45, %16
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @MLX_NEXT_CHILD, align 4
  %20 = call i64 @ioctl(i32 %18, i32 %19, i32* %6)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @close(i32 %23)
  br label %46

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @drivepath(i32 %26)
  %28 = call i32 @open(i32 %27, i32 0)
  store i32 %28, i32* %7, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @close(i32 %31)
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i32, i32* %7, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load %struct.mlxd_foreach_action*, %struct.mlxd_foreach_action** %5, align 8
  %38 = getelementptr inbounds %struct.mlxd_foreach_action, %struct.mlxd_foreach_action* %37, i32 0, i32 1
  %39 = load i32 (i32, i32)*, i32 (i32, i32)** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.mlxd_foreach_action*, %struct.mlxd_foreach_action** %5, align 8
  %42 = getelementptr inbounds %struct.mlxd_foreach_action, %struct.mlxd_foreach_action* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 %39(i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %36, %33
  br label %17

46:                                               ; preds = %22, %15
  ret void
}

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @ctrlrpath(i32) #1

declare dso_local i64 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @drivepath(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
