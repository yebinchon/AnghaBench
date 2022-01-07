; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_create_dont_trap_rule.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_create_dont_trap_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_flow_handler = type { i32, i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_flow_prio = type { i32 }
%struct.ib_flow_attr = type { i32 }
%struct.mlx5_flow_destination = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_ib_flow_handler* (%struct.mlx5_ib_dev*, %struct.mlx5_ib_flow_prio*, %struct.ib_flow_attr*, %struct.mlx5_flow_destination*)* @create_dont_trap_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_ib_flow_handler* @create_dont_trap_rule(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_flow_prio* %1, %struct.ib_flow_attr* %2, %struct.mlx5_flow_destination* %3) #0 {
  %5 = alloca %struct.mlx5_ib_dev*, align 8
  %6 = alloca %struct.mlx5_ib_flow_prio*, align 8
  %7 = alloca %struct.ib_flow_attr*, align 8
  %8 = alloca %struct.mlx5_flow_destination*, align 8
  %9 = alloca %struct.mlx5_ib_flow_handler*, align 8
  %10 = alloca %struct.mlx5_ib_flow_handler*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %5, align 8
  store %struct.mlx5_ib_flow_prio* %1, %struct.mlx5_ib_flow_prio** %6, align 8
  store %struct.ib_flow_attr* %2, %struct.ib_flow_attr** %7, align 8
  store %struct.mlx5_flow_destination* %3, %struct.mlx5_flow_destination** %8, align 8
  store %struct.mlx5_ib_flow_handler* null, %struct.mlx5_ib_flow_handler** %9, align 8
  store %struct.mlx5_ib_flow_handler* null, %struct.mlx5_ib_flow_handler** %10, align 8
  %11 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %12 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %6, align 8
  %13 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %7, align 8
  %14 = call %struct.mlx5_ib_flow_handler* @create_flow_rule(%struct.mlx5_ib_dev* %11, %struct.mlx5_ib_flow_prio* %12, %struct.ib_flow_attr* %13, %struct.mlx5_flow_destination* null)
  store %struct.mlx5_ib_flow_handler* %14, %struct.mlx5_ib_flow_handler** %10, align 8
  %15 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %10, align 8
  %16 = call i64 @IS_ERR(%struct.mlx5_ib_flow_handler* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %46, label %18

18:                                               ; preds = %4
  %19 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %20 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %6, align 8
  %21 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %7, align 8
  %22 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %8, align 8
  %23 = call %struct.mlx5_ib_flow_handler* @create_flow_rule(%struct.mlx5_ib_dev* %19, %struct.mlx5_ib_flow_prio* %20, %struct.ib_flow_attr* %21, %struct.mlx5_flow_destination* %22)
  store %struct.mlx5_ib_flow_handler* %23, %struct.mlx5_ib_flow_handler** %9, align 8
  %24 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %9, align 8
  %25 = call i64 @IS_ERR(%struct.mlx5_ib_flow_handler* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %18
  %28 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %10, align 8
  %29 = getelementptr inbounds %struct.mlx5_ib_flow_handler, %struct.mlx5_ib_flow_handler* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mlx5_del_flow_rule(i32 %30)
  %32 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %6, align 8
  %33 = getelementptr inbounds %struct.mlx5_ib_flow_prio, %struct.mlx5_ib_flow_prio* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %10, align 8
  %37 = call i32 @kfree(%struct.mlx5_ib_flow_handler* %36)
  %38 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %9, align 8
  store %struct.mlx5_ib_flow_handler* %38, %struct.mlx5_ib_flow_handler** %10, align 8
  br label %45

39:                                               ; preds = %18
  %40 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %9, align 8
  %41 = getelementptr inbounds %struct.mlx5_ib_flow_handler, %struct.mlx5_ib_flow_handler* %40, i32 0, i32 0
  %42 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %10, align 8
  %43 = getelementptr inbounds %struct.mlx5_ib_flow_handler, %struct.mlx5_ib_flow_handler* %42, i32 0, i32 0
  %44 = call i32 @list_add(i32* %41, i32* %43)
  br label %45

45:                                               ; preds = %39, %27
  br label %46

46:                                               ; preds = %45, %4
  %47 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %10, align 8
  ret %struct.mlx5_ib_flow_handler* %47
}

declare dso_local %struct.mlx5_ib_flow_handler* @create_flow_rule(%struct.mlx5_ib_dev*, %struct.mlx5_ib_flow_prio*, %struct.ib_flow_attr*, %struct.mlx5_flow_destination*) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_ib_flow_handler*) #1

declare dso_local i32 @mlx5_del_flow_rule(i32) #1

declare dso_local i32 @kfree(%struct.mlx5_ib_flow_handler*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
