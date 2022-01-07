; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_create_flow_rule.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_create_flow_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_flow_handler = type { %struct.mlx5_ib_flow_prio*, i32, i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_flow_prio = type { %struct.mlx5_flow_table*, i32 }
%struct.mlx5_flow_table = type { i32 }
%struct.ib_flow_attr = type { i32 }
%struct.mlx5_flow_destination = type { i32 }
%struct.mlx5_flow_spec = type { i32, i32, i32 }
%union.ib_flow_spec = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_FWD_DEST = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_FWD_NEXT_PRIO = common dso_local global i32 0, align 4
@MLX5_FS_DEFAULT_FLOW_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_ib_flow_handler* (%struct.mlx5_ib_dev*, %struct.mlx5_ib_flow_prio*, %struct.ib_flow_attr*, %struct.mlx5_flow_destination*)* @create_flow_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_ib_flow_handler* @create_flow_rule(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_flow_prio* %1, %struct.ib_flow_attr* %2, %struct.mlx5_flow_destination* %3) #0 {
  %5 = alloca %struct.mlx5_ib_flow_handler*, align 8
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  %7 = alloca %struct.mlx5_ib_flow_prio*, align 8
  %8 = alloca %struct.ib_flow_attr*, align 8
  %9 = alloca %struct.mlx5_flow_destination*, align 8
  %10 = alloca %struct.mlx5_flow_table*, align 8
  %11 = alloca %struct.mlx5_ib_flow_handler*, align 8
  %12 = alloca %struct.mlx5_flow_spec*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %6, align 8
  store %struct.mlx5_ib_flow_prio* %1, %struct.mlx5_ib_flow_prio** %7, align 8
  store %struct.ib_flow_attr* %2, %struct.ib_flow_attr** %8, align 8
  store %struct.mlx5_flow_destination* %3, %struct.mlx5_flow_destination** %9, align 8
  %17 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %7, align 8
  %18 = getelementptr inbounds %struct.mlx5_ib_flow_prio, %struct.mlx5_ib_flow_prio* %17, i32 0, i32 0
  %19 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %18, align 8
  store %struct.mlx5_flow_table* %19, %struct.mlx5_flow_table** %10, align 8
  %20 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %8, align 8
  %21 = bitcast %struct.ib_flow_attr* %20 to i8*
  %22 = getelementptr i8, i8* %21, i64 4
  store i8* %22, i8** %13, align 8
  store i32 0, i32* %16, align 4
  %23 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %8, align 8
  %24 = call i32 @is_valid_attr(%struct.ib_flow_attr* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.mlx5_ib_flow_handler* @ERR_PTR(i32 %28)
  store %struct.mlx5_ib_flow_handler* %29, %struct.mlx5_ib_flow_handler** %5, align 8
  br label %145

30:                                               ; preds = %4
  %31 = call %struct.mlx5_flow_spec* @mlx5_vzalloc(i32 12)
  store %struct.mlx5_flow_spec* %31, %struct.mlx5_flow_spec** %12, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.mlx5_ib_flow_handler* @kzalloc(i32 16, i32 %32)
  store %struct.mlx5_ib_flow_handler* %33, %struct.mlx5_ib_flow_handler** %11, align 8
  %34 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %11, align 8
  %35 = icmp ne %struct.mlx5_ib_flow_handler* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %12, align 8
  %38 = icmp ne %struct.mlx5_flow_spec* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36, %30
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %16, align 4
  br label %127

42:                                               ; preds = %36
  %43 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %11, align 8
  %44 = getelementptr inbounds %struct.mlx5_ib_flow_handler, %struct.mlx5_ib_flow_handler* %43, i32 0, i32 2
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  store i32 0, i32* %14, align 4
  br label %46

46:                                               ; preds = %72, %42
  %47 = load i32, i32* %14, align 4
  %48 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %8, align 8
  %49 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ult i32 %47, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %46
  %53 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %12, align 8
  %54 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %12, align 8
  %57 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %13, align 8
  %60 = call i32 @parse_flow_attr(i32 %55, i32 %58, i8* %59)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %127

64:                                               ; preds = %52
  %65 = load i8*, i8** %13, align 8
  %66 = bitcast i8* %65 to %union.ib_flow_spec*
  %67 = bitcast %union.ib_flow_spec* %66 to i32*
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %13, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr i8, i8* %69, i64 %70
  store i8* %71, i8** %13, align 8
  br label %72

72:                                               ; preds = %64
  %73 = load i32, i32* %14, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %14, align 4
  br label %46

75:                                               ; preds = %46
  %76 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %12, align 8
  %77 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @get_match_criteria_enable(i32 %78)
  %80 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %12, align 8
  %81 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %9, align 8
  %83 = icmp ne %struct.mlx5_flow_destination* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_FWD_DEST, align 4
  br label %88

86:                                               ; preds = %75
  %87 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_FWD_NEXT_PRIO, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  store i32 %89, i32* %15, align 4
  %90 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %10, align 8
  %91 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %12, align 8
  %92 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %12, align 8
  %95 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %12, align 8
  %98 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* @MLX5_FS_DEFAULT_FLOW_TAG, align 4
  %102 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %9, align 8
  %103 = call i32 @mlx5_add_flow_rule(%struct.mlx5_flow_table* %90, i32 %93, i32 %96, i32 %99, i32 %100, i32 %101, %struct.mlx5_flow_destination* %102)
  %104 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %11, align 8
  %105 = getelementptr inbounds %struct.mlx5_ib_flow_handler, %struct.mlx5_ib_flow_handler* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 8
  %106 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %11, align 8
  %107 = getelementptr inbounds %struct.mlx5_ib_flow_handler, %struct.mlx5_ib_flow_handler* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i64 @IS_ERR(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %88
  %112 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %11, align 8
  %113 = getelementptr inbounds %struct.mlx5_ib_flow_handler, %struct.mlx5_ib_flow_handler* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @PTR_ERR(i32 %114)
  store i32 %115, i32* %16, align 4
  br label %127

116:                                              ; preds = %88
  %117 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %7, align 8
  %118 = getelementptr inbounds %struct.mlx5_ib_flow_prio, %struct.mlx5_ib_flow_prio* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 8
  %121 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %7, align 8
  %122 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %11, align 8
  %123 = getelementptr inbounds %struct.mlx5_ib_flow_handler, %struct.mlx5_ib_flow_handler* %122, i32 0, i32 0
  store %struct.mlx5_ib_flow_prio* %121, %struct.mlx5_ib_flow_prio** %123, align 8
  %124 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %10, align 8
  %125 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %7, align 8
  %126 = getelementptr inbounds %struct.mlx5_ib_flow_prio, %struct.mlx5_ib_flow_prio* %125, i32 0, i32 0
  store %struct.mlx5_flow_table* %124, %struct.mlx5_flow_table** %126, align 8
  br label %127

127:                                              ; preds = %116, %111, %63, %39
  %128 = load i32, i32* %16, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %11, align 8
  %132 = call i32 @kfree(%struct.mlx5_ib_flow_handler* %131)
  br label %133

133:                                              ; preds = %130, %127
  %134 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %12, align 8
  %135 = call i32 @kvfree(%struct.mlx5_flow_spec* %134)
  %136 = load i32, i32* %16, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load i32, i32* %16, align 4
  %140 = call %struct.mlx5_ib_flow_handler* @ERR_PTR(i32 %139)
  br label %143

141:                                              ; preds = %133
  %142 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %11, align 8
  br label %143

143:                                              ; preds = %141, %138
  %144 = phi %struct.mlx5_ib_flow_handler* [ %140, %138 ], [ %142, %141 ]
  store %struct.mlx5_ib_flow_handler* %144, %struct.mlx5_ib_flow_handler** %5, align 8
  br label %145

145:                                              ; preds = %143, %26
  %146 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %5, align 8
  ret %struct.mlx5_ib_flow_handler* %146
}

declare dso_local i32 @is_valid_attr(%struct.ib_flow_attr*) #1

declare dso_local %struct.mlx5_ib_flow_handler* @ERR_PTR(i32) #1

declare dso_local %struct.mlx5_flow_spec* @mlx5_vzalloc(i32) #1

declare dso_local %struct.mlx5_ib_flow_handler* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @parse_flow_attr(i32, i32, i8*) #1

declare dso_local i32 @get_match_criteria_enable(i32) #1

declare dso_local i32 @mlx5_add_flow_rule(%struct.mlx5_flow_table*, i32, i32, i32, i32, i32, %struct.mlx5_flow_destination*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @kfree(%struct.mlx5_ib_flow_handler*) #1

declare dso_local i32 @kvfree(%struct.mlx5_flow_spec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
