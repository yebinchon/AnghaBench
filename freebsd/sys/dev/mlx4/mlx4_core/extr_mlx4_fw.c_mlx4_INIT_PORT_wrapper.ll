; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_fw.c_mlx4_INIT_PORT_wrapper.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_fw.c_mlx4_INIT_PORT_wrapper.c"
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
%struct.TYPE_7__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MLX4_PORT_TYPE_IB = common dso_local global i64 0, align 8
@MLX4_CMD_INIT_PORT = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_INIT_PORT_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
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
  br label %178

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
  br i1 %44, label %45, label %46

45:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %178

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
  br i1 %56, label %57, label %94

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
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %57
  %69 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* @MLX4_CMD_INIT_PORT, align 4
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
  br label %178

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %79, %57
  %81 = load i32, i32* %15, align 4
  %82 = shl i32 1, %81
  %83 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %84 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %82
  store i32 %93, i32* %91, align 4
  br label %167

94:                                               ; preds = %46
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %97 = call i32 @mlx4_master_func_num(%struct.mlx4_dev* %96)
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %152

99:                                               ; preds = %94
  %100 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %15, align 4
  %103 = call i64 @check_qp0_state(%struct.mlx4_dev* %100, i32 %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %151

105:                                              ; preds = %99
  %106 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %107 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = load i32, i32* %15, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %151, label %117

117:                                              ; preds = %105
  %118 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* @MLX4_CMD_INIT_PORT, align 4
  %121 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %122 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %123 = call i32 @mlx4_cmd(%struct.mlx4_dev* %118, i32 0, i32 %119, i32 0, i32 %120, i32 %121, i32 %122)
  store i32 %123, i32* %16, align 4
  %124 = load i32, i32* %16, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %117
  %127 = load i32, i32* %16, align 4
  store i32 %127, i32* %7, align 4
  br label %178

128:                                              ; preds = %117
  %129 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %130 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = load i32, i32* %15, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  store i32 1, i32* %137, align 4
  %138 = load i32, i32* %15, align 4
  %139 = shl i32 1, %138
  %140 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %141 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %139
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %128, %105, %99
  br label %166

152:                                              ; preds = %94
  %153 = load i32, i32* %15, align 4
  %154 = shl i32 1, %153
  %155 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %156 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %154
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %152, %151
  br label %167

167:                                              ; preds = %166, %80
  %168 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %169 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %15, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 4
  store i32 0, i32* %7, align 4
  br label %178

178:                                              ; preds = %167, %126, %77, %45, %27
  %179 = load i32, i32* %7, align 4
  ret i32 %179
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_slave_convert_port(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_master_func_num(%struct.mlx4_dev*) #1

declare dso_local i64 @check_qp0_state(%struct.mlx4_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
