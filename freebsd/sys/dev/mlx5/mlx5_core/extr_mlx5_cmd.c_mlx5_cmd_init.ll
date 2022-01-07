; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_cmd.c_mlx5_cmd_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_cmd.c_mlx5_cmd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_3__*, %struct.mlx5_cmd }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.mlx5_cmd = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@CMD_IF_REV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Driver cmdif rev(%d) differs from firmware's(%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MLX5_MAX_COMMANDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"firmware reports too many outstanding commands %d\0A\00", align 1
@MLX5_ADAPTER_PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"command queue size overflow\0A\00", align 1
@.str.3 = private unnamed_addr constant [75 x i8] c"driver does not support command interface version. driver %d, firmware %d\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"invalid command queue address\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"descriptor at dma 0x%llx\0A\00", align 1
@MLX5_CMD_MODE_POLLING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"failed to create command cache\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_cmd_init(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %10, i32 0, i32 1
  store %struct.mlx5_cmd* %11, %struct.mlx5_cmd** %4, align 8
  %12 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %4, align 8
  %13 = call i32 @memset(%struct.mlx5_cmd* %12, i32 0, i32 64)
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %15 = call i32 @cmdif_rev_get(%struct.mlx5_core_dev* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @CMD_IF_REV, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %21 = load i32, i32* @CMD_IF_REV, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %20, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %207

26:                                               ; preds = %1
  %27 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %28 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %4, align 8
  %29 = call i32 @alloc_cmd_page(%struct.mlx5_core_dev* %27, %struct.mlx5_cmd* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %205

33:                                               ; preds = %26
  %34 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %35 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = call i32 @ioread32be(i32* %37)
  %39 = and i32 %38, 255
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = ashr i32 %40, 4
  %42 = and i32 %41, 15
  %43 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %4, align 8
  %44 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, 15
  %47 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %4, align 8
  %48 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %4, align 8
  %50 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = shl i32 1, %51
  %53 = load i32, i32* @MLX5_MAX_COMMANDS, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %33
  %56 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %57 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %4, align 8
  %58 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = shl i32 1, %59
  %61 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %56, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %8, align 4
  br label %201

64:                                               ; preds = %33
  %65 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %4, align 8
  %66 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %4, align 8
  %69 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %67, %70
  %72 = load i32, i32* @MLX5_ADAPTER_PAGE_SHIFT, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %64
  %75 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %76 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %8, align 4
  br label %201

79:                                               ; preds = %64
  %80 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %4, align 8
  %81 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %80, i32 0, i32 2
  store i32 1, i32* %81, align 8
  %82 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %4, align 8
  %83 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = shl i32 1, %84
  %86 = sub nsw i32 %85, 1
  %87 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %4, align 8
  %88 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  %89 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %4, align 8
  %90 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 1, %91
  %93 = sub nsw i32 %92, 1
  %94 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %4, align 8
  %95 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 8
  %96 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %97 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %96, i32 0, i32 0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = call i32 @ioread32be(i32* %99)
  %101 = ashr i32 %100, 16
  %102 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %4, align 8
  %103 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %102, i32 0, i32 5
  store i32 %101, i32* %103, align 4
  %104 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %4, align 8
  %105 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @CMD_IF_REV, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %79
  %110 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %111 = load i32, i32* @CMD_IF_REV, align 4
  %112 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %4, align 8
  %113 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %110, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0), i32 %111, i32 %114)
  %116 = load i32, i32* @ENOTSUPP, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %8, align 4
  br label %201

118:                                              ; preds = %79
  %119 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %4, align 8
  %120 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %119, i32 0, i32 12
  %121 = call i32 @spin_lock_init(i32* %120)
  %122 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %4, align 8
  %123 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %122, i32 0, i32 11
  %124 = call i32 @spin_lock_init(i32* %123)
  store i32 0, i32* %9, align 4
  br label %125

125:                                              ; preds = %141, %118
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %4, align 8
  %128 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %127, i32 0, i32 10
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %129)
  %131 = icmp slt i32 %126, %130
  br i1 %131, label %132, label %144

132:                                              ; preds = %125
  %133 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %4, align 8
  %134 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %133, i32 0, i32 10
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = call i32 @spin_lock_init(i32* %139)
  br label %141

141:                                              ; preds = %132
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %9, align 4
  br label %125

144:                                              ; preds = %125
  %145 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %4, align 8
  %146 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %145, i32 0, i32 9
  %147 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %4, align 8
  %148 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @sema_init(i32* %146, i32 %149)
  %151 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %4, align 8
  %152 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %151, i32 0, i32 8
  %153 = call i32 @sema_init(i32* %152, i32 1)
  %154 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %4, align 8
  %155 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %154, i32 0, i32 7
  %156 = load i64, i64* %155, align 8
  %157 = trunc i64 %156 to i32
  %158 = ashr i32 %157, 32
  store i32 %158, i32* %5, align 4
  %159 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %4, align 8
  %160 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %159, i32 0, i32 7
  %161 = load i64, i64* %160, align 8
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %6, align 4
  %164 = and i32 %163, 4095
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %144
  %167 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %168 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %167, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %169 = load i32, i32* @ENOMEM, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %8, align 4
  br label %201

171:                                              ; preds = %144
  %172 = load i32, i32* %5, align 4
  %173 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %174 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %173, i32 0, i32 0
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 1
  %177 = call i32 @iowrite32be(i32 %172, i32* %176)
  %178 = load i32, i32* %6, align 4
  %179 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %180 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %179, i32 0, i32 0
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 0
  %183 = call i32 @iowrite32be(i32 %178, i32* %182)
  %184 = call i32 (...) @wmb()
  %185 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %186 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %4, align 8
  %187 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %186, i32 0, i32 7
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @mlx5_core_dbg(%struct.mlx5_core_dev* %185, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %188)
  %190 = load i32, i32* @MLX5_CMD_MODE_POLLING, align 4
  %191 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %4, align 8
  %192 = getelementptr inbounds %struct.mlx5_cmd, %struct.mlx5_cmd* %191, i32 0, i32 6
  store i32 %190, i32* %192, align 8
  %193 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %194 = call i32 @create_msg_cache(%struct.mlx5_core_dev* %193)
  store i32 %194, i32* %8, align 4
  %195 = load i32, i32* %8, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %171
  %198 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %199 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @mlx5_core_err(%struct.mlx5_core_dev* %198, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %201

200:                                              ; preds = %171
  store i32 0, i32* %2, align 4
  br label %207

201:                                              ; preds = %197, %166, %109, %74, %55
  %202 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %203 = load %struct.mlx5_cmd*, %struct.mlx5_cmd** %4, align 8
  %204 = call i32 @free_cmd_page(%struct.mlx5_core_dev* %202, %struct.mlx5_cmd* %203)
  br label %205

205:                                              ; preds = %201, %32
  %206 = load i32, i32* %8, align 4
  store i32 %206, i32* %2, align 4
  br label %207

207:                                              ; preds = %205, %200, %19
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare dso_local i32 @memset(%struct.mlx5_cmd*, i32, i32) #1

declare dso_local i32 @cmdif_rev_get(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*, ...) #1

declare dso_local i32 @alloc_cmd_page(%struct.mlx5_core_dev*, %struct.mlx5_cmd*) #1

declare dso_local i32 @ioread32be(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @iowrite32be(i32, i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mlx5_core_dbg(%struct.mlx5_core_dev*, i8*, i64) #1

declare dso_local i32 @create_msg_cache(%struct.mlx5_core_dev*) #1

declare dso_local i32 @free_cmd_page(%struct.mlx5_core_dev*, %struct.mlx5_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
