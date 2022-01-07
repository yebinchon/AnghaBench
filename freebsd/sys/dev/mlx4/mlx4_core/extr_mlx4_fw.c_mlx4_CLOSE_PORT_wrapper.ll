; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_fw.c_mlx4_CLOSE_PORT_wrapper.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_fw.c_mlx4_CLOSE_PORT_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64* }
%struct.mlx4_vhcr = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32 }
%struct.mlx4_cmd_info = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MLX4_PORT_TYPE_IB = common dso_local global i64 0, align 8
@MLX4_CMD_CLOSE_PORT = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_CLOSE_PORT_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca %struct.mlx4_priv*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  %17 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %18 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %17)
  store %struct.mlx4_priv* %18, %struct.mlx4_priv** %14, align 8
  %19 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %22 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @mlx4_slave_convert_port(%struct.mlx4_dev* %19, i32 %20, i32 %23)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %6
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %187

30:                                               ; preds = %6
  %31 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %32 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %15, align 4
  %42 = shl i32 1, %41
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %187

46:                                               ; preds = %30
  %47 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %48 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @MLX4_PORT_TYPE_IB, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %95

57:                                               ; preds = %46
  %58 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %59 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %80

68:                                               ; preds = %57
  %69 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* @MLX4_CMD_CLOSE_PORT, align 4
  %72 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %73 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %74 = call i32 @mlx4_cmd(%struct.mlx4_dev* %69, i32 0, i32 %70, i32 0, i32 %71, i32 %72, i32 %73)
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %16, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = load i32, i32* %16, align 4
  store i32 %78, i32* %7, align 4
  br label %187

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %79, %57
  %81 = load i32, i32* %15, align 4
  %82 = shl i32 1, %81
  %83 = xor i32 %82, -1
  %84 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %85 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, %83
  store i32 %94, i32* %92, align 4
  br label %176

95:                                               ; preds = %46
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %98 = call i32 @mlx4_master_func_num(%struct.mlx4_dev* %97)
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %160

100:                                              ; preds = %95
  %101 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %102 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = load i32, i32* %15, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %159, label %112

112:                                              ; preds = %100
  %113 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %114 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = load i32, i32* %15, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %159

124:                                              ; preds = %112
  %125 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* @MLX4_CMD_CLOSE_PORT, align 4
  %128 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %129 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %130 = call i32 @mlx4_cmd(%struct.mlx4_dev* %125, i32 0, i32 %126, i32 0, i32 %127, i32 %128, i32 %129)
  store i32 %130, i32* %16, align 4
  %131 = load i32, i32* %16, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %124
  %134 = load i32, i32* %16, align 4
  store i32 %134, i32* %7, align 4
  br label %187

135:                                              ; preds = %124
  %136 = load i32, i32* %15, align 4
  %137 = shl i32 1, %136
  %138 = xor i32 %137, -1
  %139 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %140 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, %138
  store i32 %149, i32* %147, align 4
  %150 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %151 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %153, align 8
  %155 = load i32, i32* %15, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  store i64 0, i64* %158, align 8
  br label %159

159:                                              ; preds = %135, %112, %100
  br label %175

160:                                              ; preds = %95
  %161 = load i32, i32* %15, align 4
  %162 = shl i32 1, %161
  %163 = xor i32 %162, -1
  %164 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %165 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %167, align 8
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = and i32 %173, %163
  store i32 %174, i32* %172, align 4
  br label %175

175:                                              ; preds = %160, %159
  br label %176

176:                                              ; preds = %175, %80
  %177 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %178 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %15, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, -1
  store i32 %186, i32* %184, align 4
  store i32 0, i32* %7, align 4
  br label %187

187:                                              ; preds = %176, %133, %77, %45, %27
  %188 = load i32, i32* %7, align 4
  ret i32 %188
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_slave_convert_port(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_master_func_num(%struct.mlx4_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
