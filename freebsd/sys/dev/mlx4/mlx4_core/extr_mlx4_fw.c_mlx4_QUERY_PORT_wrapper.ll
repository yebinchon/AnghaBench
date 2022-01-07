; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_fw.c_mlx4_QUERY_PORT_wrapper.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_fw.c_mlx4_QUERY_PORT_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32*, i32* }
%struct.mlx4_vhcr = type { i32, i64 }
%struct.mlx4_cmd_mailbox = type { i32, i32 }
%struct.mlx4_cmd_info = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MLX4_CMD_QUERY_PORT = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4
@QUERY_PORT_MAC_OFFSET = common dso_local global i32 0, align 4
@QUERY_PORT_SUPPORTED_TYPE_OFFSET = common dso_local global i32 0, align 4
@MLX4_PORT_TYPE_ETH = common dso_local global i32 0, align 4
@MLX4_PORT_LINK_UP_MASK = common dso_local global i32 0, align 4
@MLX4_VF_PORT_NO_LINK_SENSE_MASK = common dso_local global i32 0, align 4
@QUERY_PORT_CUR_MAX_GID_OFFSET = common dso_local global i32 0, align 4
@QUERY_PORT_CUR_MAX_PKEY_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_QUERY_PORT_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
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
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  %20 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %21 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %20)
  store %struct.mlx4_priv* %21, %struct.mlx4_priv** %14, align 8
  %22 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %25 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, 255
  %28 = call i32 @mlx4_slave_convert_port(%struct.mlx4_dev* %22, i32 %23, i32 %27)
  store i32 %28, i32* %19, align 4
  %29 = load i32, i32* %19, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %6
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %168

34:                                               ; preds = %6
  %35 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %36 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %41 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, -256
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39, %34
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %168

48:                                               ; preds = %39
  %49 = load i32, i32* %19, align 4
  %50 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %51 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %53 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %54 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %57 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MLX4_CMD_QUERY_PORT, align 4
  %60 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %61 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %62 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %52, i32 0, i32 %55, i32 %58, i32 0, i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %18, align 4
  %63 = load i32, i32* %18, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %165, label %65

65:                                               ; preds = %48
  %66 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %67 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %165

72:                                               ; preds = %65
  %73 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %74 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %84 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %15, align 4
  %91 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %92 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* @QUERY_PORT_MAC_OFFSET, align 4
  %96 = call i32 @MLX4_PUT(i32 %93, i32 %94, i32 %95)
  %97 = load i32, i32* %16, align 4
  %98 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %99 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @QUERY_PORT_SUPPORTED_TYPE_OFFSET, align 4
  %102 = call i32 @MLX4_GET(i32 %97, i32 %100, i32 %101)
  %103 = load i32, i32* %16, align 4
  %104 = and i32 %103, 224
  store i32 %104, i32* %16, align 4
  %105 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %106 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %110 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %108, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, 3
  %116 = load i32, i32* %16, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* %16, align 4
  %119 = and i32 %118, -129
  store i32 %119, i32* %16, align 4
  %120 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %121 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* @QUERY_PORT_SUPPORTED_TYPE_OFFSET, align 4
  %125 = call i32 @MLX4_PUT(i32 %122, i32 %123, i32 %124)
  %126 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %127 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %131 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %129, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @MLX4_PORT_TYPE_ETH, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %72
  %139 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %19, align 4
  %142 = call i32 @mlx4_get_slave_num_gids(%struct.mlx4_dev* %139, i32 %140, i32 %141)
  store i32 %142, i32* %17, align 4
  br label %144

143:                                              ; preds = %72
  store i32 1, i32* %17, align 4
  br label %144

144:                                              ; preds = %143, %138
  %145 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %146 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %17, align 4
  %149 = call i32 @MLX4_PUT(i32 %147, i32 %148, i32 14)
  %150 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %151 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %155 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %153, i64 %157
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %17, align 4
  %160 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %161 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %17, align 4
  %164 = call i32 @MLX4_PUT(i32 %162, i32 %163, i32 12)
  br label %165

165:                                              ; preds = %144, %65, %48
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %18, align 4
  store i32 %167, i32* %7, align 4
  br label %168

168:                                              ; preds = %166, %45, %31
  %169 = load i32, i32* %7, align 4
  ret i32 %169
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_slave_convert_port(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @mlx4_cmd_box(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MLX4_PUT(i32, i32, i32) #1

declare dso_local i32 @MLX4_GET(i32, i32, i32) #1

declare dso_local i32 @mlx4_get_slave_num_gids(%struct.mlx4_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
