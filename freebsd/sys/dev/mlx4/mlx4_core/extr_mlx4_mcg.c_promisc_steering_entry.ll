; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_mcg.c_promisc_steering_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_mcg.c_promisc_steering_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx4_cmd_mailbox = type { %struct.mlx4_mgm* }
%struct.mlx4_mgm = type { i32*, i32 }

@MGM_QPN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, i32, i32, i32, i32*)* @promisc_steering_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @promisc_steering_entry(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %15 = alloca %struct.mlx4_mgm*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %17, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %29, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %25 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %23, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22, %6
  store i32 0, i32* %7, align 4
  br label %95

30:                                               ; preds = %22
  %31 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %32 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %31)
  store %struct.mlx4_cmd_mailbox* %32, %struct.mlx4_cmd_mailbox** %14, align 8
  %33 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %14, align 8
  %34 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %95

37:                                               ; preds = %30
  %38 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %14, align 8
  %39 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %38, i32 0, i32 0
  %40 = load %struct.mlx4_mgm*, %struct.mlx4_mgm** %39, align 8
  store %struct.mlx4_mgm* %40, %struct.mlx4_mgm** %15, align 8
  %41 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %14, align 8
  %44 = call i64 @mlx4_READ_ENTRY(%struct.mlx4_dev* %41, i32 %42, %struct.mlx4_cmd_mailbox* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %90

47:                                               ; preds = %37
  %48 = load %struct.mlx4_mgm*, %struct.mlx4_mgm** %15, align 8
  %49 = getelementptr inbounds %struct.mlx4_mgm, %struct.mlx4_mgm* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @be32_to_cpu(i32 %50)
  %52 = and i32 %51, 16777215
  store i32 %52, i32* %16, align 4
  %53 = load i32*, i32** %13, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i32, i32* %16, align 4
  %57 = load i32*, i32** %13, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %47
  store i32 0, i32* %18, align 4
  br label %59

59:                                               ; preds = %86, %58
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* %16, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %89

63:                                               ; preds = %59
  %64 = load %struct.mlx4_mgm*, %struct.mlx4_mgm** %15, align 8
  %65 = getelementptr inbounds %struct.mlx4_mgm, %struct.mlx4_mgm* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %18, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @be32_to_cpu(i32 %70)
  %72 = load i32, i32* @MGM_QPN_MASK, align 4
  %73 = and i32 %71, %72
  store i32 %73, i32* %19, align 4
  %74 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %19, align 4
  %78 = call i32 @get_promisc_qp(%struct.mlx4_dev* %74, i32 %75, i32 %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %63
  %81 = load i32, i32* %19, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %90

85:                                               ; preds = %80, %63
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %18, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %18, align 4
  br label %59

89:                                               ; preds = %59
  store i32 1, i32* %17, align 4
  br label %90

90:                                               ; preds = %89, %84, %46
  %91 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %92 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %14, align 8
  %93 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %91, %struct.mlx4_cmd_mailbox* %92)
  %94 = load i32, i32* %17, align 4
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %90, %36, %29
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i64 @mlx4_READ_ENTRY(%struct.mlx4_dev*, i32, %struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @get_promisc_qp(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
