; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_srq.c_mlx4_srq_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_srq.c_mlx4_srq_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_srq = type { i32 }
%struct.mlx4_cmd_mailbox = type { %struct.mlx4_srq_context* }
%struct.mlx4_srq_context = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_srq_query(%struct.mlx4_dev* %0, %struct.mlx4_srq* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca %struct.mlx4_srq*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %9 = alloca %struct.mlx4_srq_context*, align 8
  %10 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store %struct.mlx4_srq* %1, %struct.mlx4_srq** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %12 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %11)
  store %struct.mlx4_cmd_mailbox* %12, %struct.mlx4_cmd_mailbox** %8, align 8
  %13 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %14 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %18 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %17)
  store i32 %18, i32* %4, align 4
  br label %43

19:                                               ; preds = %3
  %20 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %21 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %20, i32 0, i32 0
  %22 = load %struct.mlx4_srq_context*, %struct.mlx4_srq_context** %21, align 8
  store %struct.mlx4_srq_context* %22, %struct.mlx4_srq_context** %9, align 8
  %23 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %24 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %25 = load %struct.mlx4_srq*, %struct.mlx4_srq** %6, align 8
  %26 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @mlx4_QUERY_SRQ(%struct.mlx4_dev* %23, %struct.mlx4_cmd_mailbox* %24, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  br label %38

32:                                               ; preds = %19
  %33 = load %struct.mlx4_srq_context*, %struct.mlx4_srq_context** %9, align 8
  %34 = getelementptr inbounds %struct.mlx4_srq_context, %struct.mlx4_srq_context* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @be16_to_cpu(i32 %35)
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %32, %31
  %39 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %40 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %41 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %39, %struct.mlx4_cmd_mailbox* %40)
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %38, %16
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_QUERY_SRQ(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
