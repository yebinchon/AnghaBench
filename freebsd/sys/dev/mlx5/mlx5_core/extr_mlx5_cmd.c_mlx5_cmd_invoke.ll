; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_cmd.c_mlx5_cmd_invoke.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_cmd.c_mlx5_cmd_invoke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_5__, %struct.mlx5_cmd }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_cmd = type { i64, %struct.mlx5_cmd_stats* }
%struct.mlx5_cmd_stats = type { i32, i32, i32 }
%struct.mlx5_cmd_msg = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.mlx5_cmd_work_ent = type { i32, i32, i64, i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MLX5_CMD_MODE_POLLING = common dso_local global i64 0, align 8
@cb_timeout_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"failed to queue work\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@mbox_in = common dso_local global i32 0, align 4
@opcode = common dso_local global i32 0, align 4
@MLX5_CMD_TIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"fw exec time for %s is %lld nsec\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5_cmd_msg*, i32, %struct.mlx5_cmd_msg*, i8*, i32, i32, i8*, i32, i32*, i32)* @mlx5_cmd_invoke to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_cmd_invoke(%struct.mlx5_core_dev* %0, %struct.mlx5_cmd_msg* %1, i32 %2, %struct.mlx5_cmd_msg* %3, i8* %4, i32 %5, i32 %6, i8* %7, i32 %8, i32* %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.mlx5_core_dev*, align 8
  %14 = alloca %struct.mlx5_cmd_msg*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.mlx5_cmd_msg*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.mlx5_cmd*, align 8
  %25 = alloca %struct.mlx5_cmd_work_ent*, align 8
  %26 = alloca %struct.mlx5_cmd_stats*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %13, align 8
  store %struct.mlx5_cmd_msg* %1, %struct.mlx5_cmd_msg** %14, align 8
  store i32 %2, i32* %15, align 4
  store %struct.mlx5_cmd_msg* %3, %struct.mlx5_cmd_msg** %16, align 8
  store i8* %4, i8** %17, align 8
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i8* %7, i8** %20, align 8
  store i32 %8, i32* %21, align 4
  store i32* %9, i32** %22, align 8
  store i32 %10, i32* %23, align 4
  %30 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %13, align 8
  %31 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %30, i32 0, i32 1
  store %struct.mlx5_cmd* %31, %struct.mlx5_cmd** %24, align 8
  store i32 0, i32* %27, align 4
  %32 = load i32, i32* %19, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %11
  %35 = load i32, i32* %21, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %12, align 4
  br label %184

40:                                               ; preds = %34, %11
  %41 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %24, align 8
  %42 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %14, align 8
  %43 = load i32, i32* %15, align 4
  %44 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %16, align 8
  %45 = load i8*, i8** %17, align 8
  %46 = load i32, i32* %18, align 4
  %47 = load i32, i32* %19, align 4
  %48 = load i8*, i8** %20, align 8
  %49 = load i32, i32* %21, align 4
  %50 = call %struct.mlx5_cmd_work_ent* @alloc_cmd(%struct.mlx5_cmd* %41, %struct.mlx5_cmd_msg* %42, i32 %43, %struct.mlx5_cmd_msg* %44, i8* %45, i32 %46, i32 %47, i8* %48, i32 %49)
  store %struct.mlx5_cmd_work_ent* %50, %struct.mlx5_cmd_work_ent** %25, align 8
  %51 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %25, align 8
  %52 = call i64 @IS_ERR(%struct.mlx5_cmd_work_ent* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %40
  %55 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %25, align 8
  %56 = call i32 @PTR_ERR(%struct.mlx5_cmd_work_ent* %55)
  store i32 %56, i32* %12, align 4
  br label %184

57:                                               ; preds = %40
  %58 = load i32, i32* %23, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %57
  %61 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %24, align 8
  %62 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MLX5_CMD_MODE_POLLING, align 8
  %65 = icmp eq i64 %63, %64
  br label %66

66:                                               ; preds = %60, %57
  %67 = phi i1 [ true, %57 ], [ %65, %60 ]
  %68 = zext i1 %67 to i32
  %69 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %25, align 8
  %70 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* %19, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %66
  %74 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %25, align 8
  %75 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %74, i32 0, i32 6
  %76 = call i32 @init_completion(i32* %75)
  br label %77

77:                                               ; preds = %73, %66
  %78 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %25, align 8
  %79 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %78, i32 0, i32 5
  %80 = load i32, i32* @cb_timeout_handler, align 4
  %81 = call i32 @INIT_DELAYED_WORK(i32* %79, i32 %80)
  %82 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %25, align 8
  %83 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %82, i32 0, i32 4
  %84 = call i32 @INIT_WORK(i32* %83, i32 (i32*)* @cmd_work_handler)
  %85 = load i32, i32* %21, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %77
  %88 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %25, align 8
  %89 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %88, i32 0, i32 4
  %90 = call i32 @cmd_work_handler(i32* %89)
  br label %107

91:                                               ; preds = %77
  %92 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %13, align 8
  %93 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %25, align 8
  %98 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %97, i32 0, i32 4
  %99 = call i32 @queue_work(i32 %96, i32* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %91
  %102 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %13, align 8
  %103 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %102, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %27, align 4
  br label %179

106:                                              ; preds = %91
  br label %107

107:                                              ; preds = %106, %87
  %108 = load i32, i32* %19, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  br label %182

111:                                              ; preds = %107
  %112 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %13, align 8
  %113 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %25, align 8
  %114 = call i32 @wait_func(%struct.mlx5_core_dev* %112, %struct.mlx5_cmd_work_ent* %113)
  store i32 %114, i32* %27, align 4
  %115 = load i32, i32* %27, align 4
  %116 = load i32, i32* @ETIMEDOUT, align 4
  %117 = sub nsw i32 0, %116
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %182

120:                                              ; preds = %111
  %121 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %25, align 8
  %122 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %25, align 8
  %125 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = sub nsw i64 %123, %126
  store i64 %127, i64* %28, align 8
  %128 = load i32, i32* @mbox_in, align 4
  %129 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %14, align 8
  %130 = getelementptr inbounds %struct.mlx5_cmd_msg, %struct.mlx5_cmd_msg* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @opcode, align 4
  %134 = call i64 @MLX5_GET(i32 %128, i32 %132, i32 %133)
  store i64 %134, i64* %29, align 8
  %135 = load i64, i64* %29, align 8
  %136 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %24, align 8
  %137 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %136, i32 0, i32 1
  %138 = load %struct.mlx5_cmd_stats*, %struct.mlx5_cmd_stats** %137, align 8
  %139 = call i64 @ARRAY_SIZE(%struct.mlx5_cmd_stats* %138)
  %140 = icmp ult i64 %135, %139
  br i1 %140, label %141, label %164

141:                                              ; preds = %120
  %142 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %24, align 8
  %143 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %142, i32 0, i32 1
  %144 = load %struct.mlx5_cmd_stats*, %struct.mlx5_cmd_stats** %143, align 8
  %145 = load i64, i64* %29, align 8
  %146 = getelementptr inbounds %struct.mlx5_cmd_stats, %struct.mlx5_cmd_stats* %144, i64 %145
  store %struct.mlx5_cmd_stats* %146, %struct.mlx5_cmd_stats** %26, align 8
  %147 = load %struct.mlx5_cmd_stats*, %struct.mlx5_cmd_stats** %26, align 8
  %148 = getelementptr inbounds %struct.mlx5_cmd_stats, %struct.mlx5_cmd_stats* %147, i32 0, i32 0
  %149 = call i32 @spin_lock_irq(i32* %148)
  %150 = load i64, i64* %28, align 8
  %151 = load %struct.mlx5_cmd_stats*, %struct.mlx5_cmd_stats** %26, align 8
  %152 = getelementptr inbounds %struct.mlx5_cmd_stats, %struct.mlx5_cmd_stats* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %154, %150
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %152, align 4
  %157 = load %struct.mlx5_cmd_stats*, %struct.mlx5_cmd_stats** %26, align 8
  %158 = getelementptr inbounds %struct.mlx5_cmd_stats, %struct.mlx5_cmd_stats* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 4
  %161 = load %struct.mlx5_cmd_stats*, %struct.mlx5_cmd_stats** %26, align 8
  %162 = getelementptr inbounds %struct.mlx5_cmd_stats, %struct.mlx5_cmd_stats* %161, i32 0, i32 0
  %163 = call i32 @spin_unlock_irq(i32* %162)
  br label %164

164:                                              ; preds = %141, %120
  %165 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %13, align 8
  %166 = load i32, i32* @MLX5_CMD_TIME, align 4
  %167 = shl i32 1, %166
  %168 = load i64, i64* %29, align 8
  %169 = call i32 @mlx5_command_str(i64 %168)
  %170 = load i64, i64* %28, align 8
  %171 = call i32 @mlx5_core_dbg_mask(%struct.mlx5_core_dev* %165, i32 %167, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %169, i64 %170)
  %172 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %25, align 8
  %173 = getelementptr inbounds %struct.mlx5_cmd_work_ent, %struct.mlx5_cmd_work_ent* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32*, i32** %22, align 8
  store i32 %174, i32* %175, align 4
  %176 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %25, align 8
  %177 = call i32 @free_cmd(%struct.mlx5_cmd_work_ent* %176)
  %178 = load i32, i32* %27, align 4
  store i32 %178, i32* %12, align 4
  br label %184

179:                                              ; preds = %101
  %180 = load %struct.mlx5_cmd_work_ent*, %struct.mlx5_cmd_work_ent** %25, align 8
  %181 = call i32 @free_cmd(%struct.mlx5_cmd_work_ent* %180)
  br label %182

182:                                              ; preds = %179, %119, %110
  %183 = load i32, i32* %27, align 4
  store i32 %183, i32* %12, align 4
  br label %184

184:                                              ; preds = %182, %164, %54, %37
  %185 = load i32, i32* %12, align 4
  ret i32 %185
}

declare dso_local %struct.mlx5_cmd_work_ent* @alloc_cmd(%struct.mlx5_cmd*, %struct.mlx5_cmd_msg*, i32, %struct.mlx5_cmd_msg*, i8*, i32, i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_cmd_work_ent*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_cmd_work_ent*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32 (i32*)*) #1

declare dso_local i32 @cmd_work_handler(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i32 @wait_func(%struct.mlx5_core_dev*, %struct.mlx5_cmd_work_ent*) #1

declare dso_local i64 @MLX5_GET(i32, i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.mlx5_cmd_stats*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mlx5_core_dbg_mask(%struct.mlx5_core_dev*, i32, i8*, i32, i64) #1

declare dso_local i32 @mlx5_command_str(i64) #1

declare dso_local i32 @free_cmd(%struct.mlx5_cmd_work_ent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
