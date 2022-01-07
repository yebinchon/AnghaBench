; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_mlx4_FREE_RES_wrapper.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_mlx4_FREE_RES_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_vhcr = type { i32, i32, i32, i32 }
%struct.mlx4_cmd_mailbox = type { i32 }
%struct.mlx4_cmd_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_FREE_RES_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca %struct.mlx4_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_vhcr*, align 8
  %10 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %9, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %10, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %12, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %13, align 4
  %17 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %18 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %14, align 4
  %20 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %21 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 255
  switch i32 %23, label %147 [
    i32 131, label %24
    i32 132, label %35
    i32 133, label %48
    i32 135, label %59
    i32 130, label %72
    i32 134, label %85
    i32 129, label %103
    i32 136, label %121
    i32 128, label %134
  ]

24:                                               ; preds = %6
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %28 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %14, align 4
  %31 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %32 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @qp_free_res(%struct.mlx4_dev* %25, i32 %26, i32 %29, i32 %30, i32 %33)
  store i32 %34, i32* %13, align 4
  br label %148

35:                                               ; preds = %6
  %36 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %39 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %43 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %46 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %45, i32 0, i32 2
  %47 = call i32 @mtt_free_res(%struct.mlx4_dev* %36, i32 %37, i32 %40, i32 %41, i32 %44, i32* %46)
  store i32 %47, i32* %13, align 4
  br label %148

48:                                               ; preds = %6
  %49 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %52 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %56 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @mpt_free_res(%struct.mlx4_dev* %49, i32 %50, i32 %53, i32 %54, i32 %57)
  store i32 %58, i32* %13, align 4
  br label %148

59:                                               ; preds = %6
  %60 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %63 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %67 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %70 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %69, i32 0, i32 2
  %71 = call i32 @cq_free_res(%struct.mlx4_dev* %60, i32 %61, i32 %64, i32 %65, i32 %68, i32* %70)
  store i32 %71, i32* %13, align 4
  br label %148

72:                                               ; preds = %6
  %73 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %76 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %80 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %83 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %82, i32 0, i32 2
  %84 = call i32 @srq_free_res(%struct.mlx4_dev* %73, i32 %74, i32 %77, i32 %78, i32 %81, i32* %83)
  store i32 %84, i32* %13, align 4
  br label %148

85:                                               ; preds = %6
  %86 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %89 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %93 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %96 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %95, i32 0, i32 2
  %97 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %98 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = ashr i32 %99, 8
  %101 = and i32 %100, 255
  %102 = call i32 @mac_free_res(%struct.mlx4_dev* %86, i32 %87, i32 %90, i32 %91, i32 %94, i32* %96, i32 %101)
  store i32 %102, i32* %13, align 4
  br label %148

103:                                              ; preds = %6
  %104 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %107 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %14, align 4
  %110 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %111 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %114 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %113, i32 0, i32 2
  %115 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %116 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = ashr i32 %117, 8
  %119 = and i32 %118, 255
  %120 = call i32 @vlan_free_res(%struct.mlx4_dev* %104, i32 %105, i32 %108, i32 %109, i32 %112, i32* %114, i32 %119)
  store i32 %120, i32* %13, align 4
  br label %148

121:                                              ; preds = %6
  %122 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %125 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %14, align 4
  %128 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %129 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %132 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %131, i32 0, i32 2
  %133 = call i32 @counter_free_res(%struct.mlx4_dev* %122, i32 %123, i32 %126, i32 %127, i32 %130, i32* %132)
  store i32 %133, i32* %13, align 4
  br label %148

134:                                              ; preds = %6
  %135 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %136 = load i32, i32* %8, align 4
  %137 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %138 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %14, align 4
  %141 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %142 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %145 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %144, i32 0, i32 2
  %146 = call i32 @xrcdn_free_res(%struct.mlx4_dev* %135, i32 %136, i32 %139, i32 %140, i32 %143, i32* %145)
  store i32 %146, i32* %13, align 4
  br label %147

147:                                              ; preds = %6, %134
  br label %148

148:                                              ; preds = %147, %121, %103, %85, %72, %59, %48, %35, %24
  %149 = load i32, i32* %13, align 4
  ret i32 %149
}

declare dso_local i32 @qp_free_res(%struct.mlx4_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @mtt_free_res(%struct.mlx4_dev*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @mpt_free_res(%struct.mlx4_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @cq_free_res(%struct.mlx4_dev*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @srq_free_res(%struct.mlx4_dev*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @mac_free_res(%struct.mlx4_dev*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @vlan_free_res(%struct.mlx4_dev*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @counter_free_res(%struct.mlx4_dev*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @xrcdn_free_res(%struct.mlx4_dev*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
