; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_cmd.c_mlx5_cmd_comp_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_cmd.c_mlx5_cmd_comp_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.mlx5_cmd }
%struct.mlx5_cmd = type { i32*, i32, %struct.mlx5_cmd_work_ent**, %struct.TYPE_6__* }
%struct.mlx5_cmd_work_ent = type { i32, i32, i64, %struct.TYPE_5__*, %struct.TYPE_6__*, i32, i32, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MLX5_TRIGGERED_CMD_COMP = common dso_local global i32 0, align 4
@MLX5_DRIVER_STATUS_ABORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"FW command ret 0x%x, status %s(0x%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_cmd_comp_handler(%struct.mlx5_core_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_cmd*, align 8
  %8 = alloca %struct.mlx5_cmd_work_ent*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %12, i32 0, i32 0
  store %struct.mlx5_cmd* %13, %struct.mlx5_cmd** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MLX5_TRIGGERED_CMD_COMP, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 0
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %7, align 8
  %22 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %21, i32 0, i32 3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = call i32 @mlx5_fwp_invalidate(%struct.TYPE_6__* %23)
  br label %25

25:                                               ; preds = %136, %57, %46, %3
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %144

28:                                               ; preds = %25
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @ffs(i32 %29)
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = shl i32 1, %32
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %10, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %10, align 4
  %37 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %7, align 8
  %38 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %28
  br label %25

47:                                               ; preds = %28
  %48 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %7, align 8
  %49 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %48, i32 0, i32 2
  %50 = load %struct.mlx5_cmd_work_ent**, %struct.mlx5_cmd_work_ent*** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %50, i64 %52
  %54 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %53, align 8
  store %struct.mlx5_cmd_work_ent* %54, %struct.mlx5_cmd_work_ent** %8, align 8
  %55 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %56 = icmp eq %struct.mlx5_cmd_work_ent* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %25

58:                                               ; preds = %47
  %59 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %60 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %59, i32 0, i32 7
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %65 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %64, i32 0, i32 6
  %66 = call i32 @cancel_delayed_work(i32* %65)
  br label %67

67:                                               ; preds = %63, %58
  %68 = call i32 (...) @ktime_get_ns()
  %69 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %70 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 8
  %71 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %72 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %71, i32 0, i32 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %78 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %77, i32 0, i32 3
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @memcpy(i32 %76, i32 %81, i32 4)
  %83 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %84 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %83, i32 0, i32 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = call i32 @mlx5_fwp_invalidate(%struct.TYPE_6__* %85)
  %87 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %88 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %89 = call i32 @dump_command(%struct.mlx5_core_dev* %87, %struct.mlx5_cmd_work_ent* %88, i32 0)
  %90 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %91 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %136, label %94

94:                                               ; preds = %67
  %95 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %7, align 8
  %96 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %94
  %100 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %101 = call i64 @verify_signature(%struct.mlx5_cmd_work_ent* %100)
  %102 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %103 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %102, i32 0, i32 2
  store i64 %101, i64* %103, align 8
  br label %107

104:                                              ; preds = %94
  %105 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %106 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %105, i32 0, i32 2
  store i64 0, i64* %106, align 8
  br label %107

107:                                              ; preds = %104, %99
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i32, i32* @MLX5_DRIVER_STATUS_ABORTED, align 4
  %112 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %113 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  br label %123

114:                                              ; preds = %107
  %115 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %116 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %115, i32 0, i32 3
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = ashr i32 %119, 1
  %121 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %122 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  br label %123

123:                                              ; preds = %114, %110
  %124 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %125 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %126 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %129 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @deliv_status_to_str(i32 %130)
  %132 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %133 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @mlx5_core_dbg(%struct.mlx5_core_dev* %124, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %127, i32 %131, i32 %134)
  br label %136

136:                                              ; preds = %123, %67
  %137 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %7, align 8
  %138 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %139 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @free_ent(%struct.mlx5_cmd* %137, i32 %140)
  %142 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %8, align 8
  %143 = call i32 @complete_command(%struct.mlx5_cmd_work_ent* %142)
  br label %25

144:                                              ; preds = %25
  ret void
}

declare dso_local i32 @mlx5_fwp_invalidate(%struct.TYPE_6__*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @dump_command(%struct.mlx5_core_dev*, %struct.mlx5_cmd_work_ent*, i32) #1

declare dso_local i64 @verify_signature(%struct.mlx5_cmd_work_ent*) #1

declare dso_local i32 @mlx5_core_dbg(%struct.mlx5_core_dev*, i8*, i64, i32, i32) #1

declare dso_local i32 @deliv_status_to_str(i32) #1

declare dso_local i32 @free_ent(%struct.mlx5_cmd*, i32) #1

declare dso_local i32 @complete_command(%struct.mlx5_cmd_work_ent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
