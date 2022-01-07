; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_mlx4_ALLOC_RES_wrapper.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_mlx4_ALLOC_RES_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_vhcr = type { i32, i32, i32, i32 }
%struct.mlx4_cmd_mailbox = type { i32 }
%struct.mlx4_cmd_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ALLOC_RES_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
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
  %15 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %16 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 4
  %18 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %19 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 255
  switch i32 %21, label %149 [
    i32 131, label %22
    i32 132, label %35
    i32 133, label %48
    i32 135, label %61
    i32 130, label %74
    i32 134, label %87
    i32 129, label %105
    i32 136, label %123
    i32 128, label %136
  ]

22:                                               ; preds = %6
  %23 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %26 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %14, align 4
  %29 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %30 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %33 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %32, i32 0, i32 2
  %34 = call i32 @qp_alloc_res(%struct.mlx4_dev* %23, i32 %24, i32 %27, i32 %28, i32 %31, i32* %33)
  store i32 %34, i32* %13, align 4
  br label %152

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
  %47 = call i32 @mtt_alloc_res(%struct.mlx4_dev* %36, i32 %37, i32 %40, i32 %41, i32 %44, i32* %46)
  store i32 %47, i32* %13, align 4
  br label %152

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
  %58 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %59 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %58, i32 0, i32 2
  %60 = call i32 @mpt_alloc_res(%struct.mlx4_dev* %49, i32 %50, i32 %53, i32 %54, i32 %57, i32* %59)
  store i32 %60, i32* %13, align 4
  br label %152

61:                                               ; preds = %6
  %62 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %65 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %69 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %72 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %71, i32 0, i32 2
  %73 = call i32 @cq_alloc_res(%struct.mlx4_dev* %62, i32 %63, i32 %66, i32 %67, i32 %70, i32* %72)
  store i32 %73, i32* %13, align 4
  br label %152

74:                                               ; preds = %6
  %75 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %78 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %82 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %85 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %84, i32 0, i32 2
  %86 = call i32 @srq_alloc_res(%struct.mlx4_dev* %75, i32 %76, i32 %79, i32 %80, i32 %83, i32* %85)
  store i32 %86, i32* %13, align 4
  br label %152

87:                                               ; preds = %6
  %88 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %91 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %14, align 4
  %94 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %95 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %98 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %97, i32 0, i32 2
  %99 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %100 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = ashr i32 %101, 8
  %103 = and i32 %102, 255
  %104 = call i32 @mac_alloc_res(%struct.mlx4_dev* %88, i32 %89, i32 %92, i32 %93, i32 %96, i32* %98, i32 %103)
  store i32 %104, i32* %13, align 4
  br label %152

105:                                              ; preds = %6
  %106 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %109 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %14, align 4
  %112 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %113 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %116 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %115, i32 0, i32 2
  %117 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %118 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = ashr i32 %119, 8
  %121 = and i32 %120, 255
  %122 = call i32 @vlan_alloc_res(%struct.mlx4_dev* %106, i32 %107, i32 %110, i32 %111, i32 %114, i32* %116, i32 %121)
  store i32 %122, i32* %13, align 4
  br label %152

123:                                              ; preds = %6
  %124 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %127 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %14, align 4
  %130 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %131 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %134 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %133, i32 0, i32 2
  %135 = call i32 @counter_alloc_res(%struct.mlx4_dev* %124, i32 %125, i32 %128, i32 %129, i32 %132, i32* %134, i32 0)
  store i32 %135, i32* %13, align 4
  br label %152

136:                                              ; preds = %6
  %137 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %138 = load i32, i32* %8, align 4
  %139 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %140 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %14, align 4
  %143 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %144 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %9, align 8
  %147 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %146, i32 0, i32 2
  %148 = call i32 @xrcdn_alloc_res(%struct.mlx4_dev* %137, i32 %138, i32 %141, i32 %142, i32 %145, i32* %147)
  store i32 %148, i32* %13, align 4
  br label %152

149:                                              ; preds = %6
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %13, align 4
  br label %152

152:                                              ; preds = %149, %136, %123, %105, %87, %74, %61, %48, %35, %22
  %153 = load i32, i32* %13, align 4
  ret i32 %153
}

declare dso_local i32 @qp_alloc_res(%struct.mlx4_dev*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @mtt_alloc_res(%struct.mlx4_dev*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @mpt_alloc_res(%struct.mlx4_dev*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @cq_alloc_res(%struct.mlx4_dev*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @srq_alloc_res(%struct.mlx4_dev*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @mac_alloc_res(%struct.mlx4_dev*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @vlan_alloc_res(%struct.mlx4_dev*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @counter_alloc_res(%struct.mlx4_dev*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @xrcdn_alloc_res(%struct.mlx4_dev*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
