; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_srq.c_mlx4_srq_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_srq.c_mlx4_srq_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_mtt = type { i64 }
%struct.mlx4_srq = type { i32, i32, i32, i64, i32 }
%struct.mlx4_srq_table = type { i32, i32 }
%struct.mlx4_cmd_mailbox = type { %struct.mlx4_srq_context* }
%struct.mlx4_srq_context = type { i32, i32, i8*, i8*, i64, i8*, i32, i64, i8* }
%struct.TYPE_2__ = type { %struct.mlx4_srq_table }

@MLX4_ICM_PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_srq_alloc(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3, %struct.mlx4_mtt* %4, i32 %5, %struct.mlx4_srq* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mlx4_mtt*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.mlx4_srq*, align 8
  %16 = alloca %struct.mlx4_srq_table*, align 8
  %17 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %18 = alloca %struct.mlx4_srq_context*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.mlx4_mtt* %4, %struct.mlx4_mtt** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.mlx4_srq* %6, %struct.mlx4_srq** %15, align 8
  %21 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %22 = call %struct.TYPE_2__* @mlx4_priv(%struct.mlx4_dev* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.mlx4_srq_table* %23, %struct.mlx4_srq_table** %16, align 8
  %24 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %25 = load %struct.mlx4_srq*, %struct.mlx4_srq** %15, align 8
  %26 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %25, i32 0, i32 0
  %27 = call i32 @mlx4_srq_alloc_icm(%struct.mlx4_dev* %24, i32* %26)
  store i32 %27, i32* %20, align 4
  %28 = load i32, i32* %20, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %7
  %31 = load i32, i32* %20, align 4
  store i32 %31, i32* %8, align 4
  br label %154

32:                                               ; preds = %7
  %33 = load %struct.mlx4_srq_table*, %struct.mlx4_srq_table** %16, align 8
  %34 = getelementptr inbounds %struct.mlx4_srq_table, %struct.mlx4_srq_table* %33, i32 0, i32 0
  %35 = call i32 @spin_lock_irq(i32* %34)
  %36 = load %struct.mlx4_srq_table*, %struct.mlx4_srq_table** %16, align 8
  %37 = getelementptr inbounds %struct.mlx4_srq_table, %struct.mlx4_srq_table* %36, i32 0, i32 1
  %38 = load %struct.mlx4_srq*, %struct.mlx4_srq** %15, align 8
  %39 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.mlx4_srq*, %struct.mlx4_srq** %15, align 8
  %42 = call i32 @radix_tree_insert(i32* %37, i32 %40, %struct.mlx4_srq* %41)
  store i32 %42, i32* %20, align 4
  %43 = load %struct.mlx4_srq_table*, %struct.mlx4_srq_table** %16, align 8
  %44 = getelementptr inbounds %struct.mlx4_srq_table, %struct.mlx4_srq_table* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock_irq(i32* %44)
  %46 = load i32, i32* %20, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %32
  br label %147

49:                                               ; preds = %32
  %50 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %51 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %50)
  store %struct.mlx4_cmd_mailbox* %51, %struct.mlx4_cmd_mailbox** %17, align 8
  %52 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %17, align 8
  %53 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %17, align 8
  %57 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %56)
  store i32 %57, i32* %20, align 4
  br label %134

58:                                               ; preds = %49
  %59 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %17, align 8
  %60 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %59, i32 0, i32 0
  %61 = load %struct.mlx4_srq_context*, %struct.mlx4_srq_context** %60, align 8
  store %struct.mlx4_srq_context* %61, %struct.mlx4_srq_context** %18, align 8
  %62 = load %struct.mlx4_srq*, %struct.mlx4_srq** %15, align 8
  %63 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @ilog2(i32 %64)
  %66 = shl i32 %65, 24
  %67 = load %struct.mlx4_srq*, %struct.mlx4_srq** %15, align 8
  %68 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %66, %69
  %71 = call i8* @cpu_to_be32(i32 %70)
  %72 = load %struct.mlx4_srq_context*, %struct.mlx4_srq_context** %18, align 8
  %73 = getelementptr inbounds %struct.mlx4_srq_context, %struct.mlx4_srq_context* %72, i32 0, i32 8
  store i8* %71, i8** %73, align 8
  %74 = load %struct.mlx4_srq*, %struct.mlx4_srq** %15, align 8
  %75 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %76, 4
  %78 = load %struct.mlx4_srq_context*, %struct.mlx4_srq_context** %18, align 8
  %79 = getelementptr inbounds %struct.mlx4_srq_context, %struct.mlx4_srq_context* %78, i32 0, i32 7
  store i64 %77, i64* %79, align 8
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @cpu_to_be16(i32 %80)
  %82 = load %struct.mlx4_srq_context*, %struct.mlx4_srq_context** %18, align 8
  %83 = getelementptr inbounds %struct.mlx4_srq_context, %struct.mlx4_srq_context* %82, i32 0, i32 6
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %11, align 4
  %85 = and i32 %84, 16777215
  %86 = call i8* @cpu_to_be32(i32 %85)
  %87 = load %struct.mlx4_srq_context*, %struct.mlx4_srq_context** %18, align 8
  %88 = getelementptr inbounds %struct.mlx4_srq_context, %struct.mlx4_srq_context* %87, i32 0, i32 5
  store i8* %86, i8** %88, align 8
  %89 = load %struct.mlx4_mtt*, %struct.mlx4_mtt** %13, align 8
  %90 = getelementptr inbounds %struct.mlx4_mtt, %struct.mlx4_mtt* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @MLX4_ICM_PAGE_SHIFT, align 8
  %93 = sub nsw i64 %91, %92
  %94 = load %struct.mlx4_srq_context*, %struct.mlx4_srq_context** %18, align 8
  %95 = getelementptr inbounds %struct.mlx4_srq_context, %struct.mlx4_srq_context* %94, i32 0, i32 4
  store i64 %93, i64* %95, align 8
  %96 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %97 = load %struct.mlx4_mtt*, %struct.mlx4_mtt** %13, align 8
  %98 = call i32 @mlx4_mtt_addr(%struct.mlx4_dev* %96, %struct.mlx4_mtt* %97)
  store i32 %98, i32* %19, align 4
  %99 = load i32, i32* %19, align 4
  %100 = ashr i32 %99, 32
  %101 = load %struct.mlx4_srq_context*, %struct.mlx4_srq_context** %18, align 8
  %102 = getelementptr inbounds %struct.mlx4_srq_context, %struct.mlx4_srq_context* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* %19, align 4
  %104 = call i8* @cpu_to_be32(i32 %103)
  %105 = load %struct.mlx4_srq_context*, %struct.mlx4_srq_context** %18, align 8
  %106 = getelementptr inbounds %struct.mlx4_srq_context, %struct.mlx4_srq_context* %105, i32 0, i32 3
  store i8* %104, i8** %106, align 8
  %107 = load i32, i32* %10, align 4
  %108 = call i8* @cpu_to_be32(i32 %107)
  %109 = load %struct.mlx4_srq_context*, %struct.mlx4_srq_context** %18, align 8
  %110 = getelementptr inbounds %struct.mlx4_srq_context, %struct.mlx4_srq_context* %109, i32 0, i32 2
  store i8* %108, i8** %110, align 8
  %111 = load i32, i32* %14, align 4
  %112 = call i32 @cpu_to_be64(i32 %111)
  %113 = load %struct.mlx4_srq_context*, %struct.mlx4_srq_context** %18, align 8
  %114 = getelementptr inbounds %struct.mlx4_srq_context, %struct.mlx4_srq_context* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %116 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %17, align 8
  %117 = load %struct.mlx4_srq*, %struct.mlx4_srq** %15, align 8
  %118 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @mlx4_SW2HW_SRQ(%struct.mlx4_dev* %115, %struct.mlx4_cmd_mailbox* %116, i32 %119)
  store i32 %120, i32* %20, align 4
  %121 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %122 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %17, align 8
  %123 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %121, %struct.mlx4_cmd_mailbox* %122)
  %124 = load i32, i32* %20, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %58
  br label %134

127:                                              ; preds = %58
  %128 = load %struct.mlx4_srq*, %struct.mlx4_srq** %15, align 8
  %129 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %128, i32 0, i32 2
  %130 = call i32 @atomic_set(i32* %129, i32 1)
  %131 = load %struct.mlx4_srq*, %struct.mlx4_srq** %15, align 8
  %132 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %131, i32 0, i32 1
  %133 = call i32 @init_completion(i32* %132)
  store i32 0, i32* %8, align 4
  br label %154

134:                                              ; preds = %126, %55
  %135 = load %struct.mlx4_srq_table*, %struct.mlx4_srq_table** %16, align 8
  %136 = getelementptr inbounds %struct.mlx4_srq_table, %struct.mlx4_srq_table* %135, i32 0, i32 0
  %137 = call i32 @spin_lock_irq(i32* %136)
  %138 = load %struct.mlx4_srq_table*, %struct.mlx4_srq_table** %16, align 8
  %139 = getelementptr inbounds %struct.mlx4_srq_table, %struct.mlx4_srq_table* %138, i32 0, i32 1
  %140 = load %struct.mlx4_srq*, %struct.mlx4_srq** %15, align 8
  %141 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @radix_tree_delete(i32* %139, i32 %142)
  %144 = load %struct.mlx4_srq_table*, %struct.mlx4_srq_table** %16, align 8
  %145 = getelementptr inbounds %struct.mlx4_srq_table, %struct.mlx4_srq_table* %144, i32 0, i32 0
  %146 = call i32 @spin_unlock_irq(i32* %145)
  br label %147

147:                                              ; preds = %134, %48
  %148 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %149 = load %struct.mlx4_srq*, %struct.mlx4_srq** %15, align 8
  %150 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @mlx4_srq_free_icm(%struct.mlx4_dev* %148, i32 %151)
  %153 = load i32, i32* %20, align 4
  store i32 %153, i32* %8, align 4
  br label %154

154:                                              ; preds = %147, %127, %30
  %155 = load i32, i32* %8, align 4
  ret i32 %155
}

declare dso_local %struct.TYPE_2__* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_srq_alloc_icm(%struct.mlx4_dev*, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @radix_tree_insert(i32*, i32, %struct.mlx4_srq*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @mlx4_mtt_addr(%struct.mlx4_dev*, %struct.mlx4_mtt*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @mlx4_SW2HW_SRQ(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @radix_tree_delete(i32*, i32) #1

declare dso_local i32 @mlx4_srq_free_icm(%struct.mlx4_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
