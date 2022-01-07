; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_media_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_media_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.mlx5e_priv* }
%struct.mlx5e_priv = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.mlx5_core_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i64, i64 }
%struct.mlx5_core_dev = type { i32 }

@ptys_reg = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MLX5_PTYS_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Query port media capability failed\0A\00", align 1
@ptys_extended_ethernet = common dso_local global i32 0, align 4
@eth_proto_capability = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Port media capability is zero\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Not supported link mode requested\0A\00", align 1
@IFM_ETH_RXPAUSE = common dso_local global i32 0, align 4
@IFM_ETH_TXPAUSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"PFC must be disabled before enabling global pauseframes.\0A\00", align 1
@MLX5E_STATE_OPENED = common dso_local global i32 0, align 4
@MLX5_PORT_DOWN = common dso_local global i32 0, align 4
@MLX5_PORT_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @mlx5e_media_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_media_change(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %13 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 0
  %15 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %14, align 8
  store %struct.mlx5e_priv* %15, %struct.mlx5e_priv** %3, align 8
  %16 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %17 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %16, i32 0, i32 3
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %17, align 8
  store %struct.mlx5_core_dev* %18, %struct.mlx5_core_dev** %4, align 8
  %19 = load i32, i32* @ptys_reg, align 4
  %20 = call i32 @MLX5_ST_SZ_DW(i32 %19)
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %7, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %8, align 8
  %24 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %25 = call i32 @PRIV_LOCKED(%struct.mlx5e_priv* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %30 = call i32 @PRIV_LOCK(%struct.mlx5e_priv* %29)
  br label %31

31:                                               ; preds = %28, %1
  %32 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %33 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @IFM_TYPE(i32 %35)
  %37 = load i64, i64* @IFM_ETHER, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %11, align 4
  br label %168

41:                                               ; preds = %31
  %42 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %43 = mul nuw i64 4, %21
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* @MLX5_PTYS_EN, align 4
  %46 = call i32 @mlx5_query_port_ptys(%struct.mlx5_core_dev* %42, i32* %23, i32 %44, i32 %45, i32 1)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %51 = call i32 @mlx5_en_err(%struct.ifnet* %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %168

52:                                               ; preds = %41
  %53 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %54 = load i32, i32* @ptys_extended_ethernet, align 4
  %55 = call i32 @MLX5_CAP_PCAM_FEATURE(%struct.mlx5_core_dev* %53, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %57 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @IFM_SUBTYPE(i32 %59)
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @mlx5e_find_link_mode(i64 %60, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* @ptys_reg, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @eth_proto_capability, align 4
  %66 = call i32 @MLX5_GET_ETH_PROTO(i32 %63, i32* %23, i32 %64, i32 %65)
  store i32 %66, i32* %5, align 4
  %67 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %68 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @IFM_SUBTYPE(i32 %70)
  %72 = load i64, i64* @IFM_AUTO, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %52
  %75 = load i32, i32* %5, align 4
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %80 = call i32 @mlx5_en_err(%struct.ifnet* %79, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  store i32 %81, i32* %11, align 4
  br label %168

82:                                               ; preds = %74
  br label %94

83:                                               ; preds = %52
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %5, align 4
  %86 = and i32 %84, %85
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %91 = call i32 @mlx5_en_err(%struct.ifnet* %90, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %92 = load i32, i32* @EINVAL, align 4
  store i32 %92, i32* %11, align 4
  br label %168

93:                                               ; preds = %83
  br label %94

94:                                               ; preds = %93, %82
  %95 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %96 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @IFM_ETH_RXPAUSE, align 4
  %100 = load i32, i32* @IFM_ETH_TXPAUSE, align 4
  %101 = or i32 %99, %100
  %102 = and i32 %98, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %121

104:                                              ; preds = %94
  %105 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %106 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %104
  %111 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %112 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %110, %104
  %117 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %118 = call i32 @mlx5_en_err(%struct.ifnet* %117, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  %119 = load i32, i32* @EINVAL, align 4
  store i32 %119, i32* %11, align 4
  br label %168

120:                                              ; preds = %110
  br label %121

121:                                              ; preds = %120, %94
  %122 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %123 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @IFM_ETH_RXPAUSE, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i32 1, i32 0
  %131 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %132 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  store i32 %130, i32* %133, align 8
  %134 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %135 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @IFM_ETH_TXPAUSE, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i32 1, i32 0
  %143 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %144 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  store i32 %142, i32* %145, align 4
  %146 = load i32, i32* @MLX5E_STATE_OPENED, align 4
  %147 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %148 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %147, i32 0, i32 0
  %149 = call i32 @test_bit(i32 %146, i32* %148)
  store i32 %149, i32* %9, align 4
  %150 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %151 = load i32, i32* @MLX5_PORT_DOWN, align 4
  %152 = call i32 @mlx5_set_port_status(%struct.mlx5_core_dev* %150, i32 %151)
  %153 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* @MLX5_PTYS_EN, align 4
  %156 = load i32, i32* %12, align 4
  %157 = call i32 @mlx5_set_port_proto(%struct.mlx5_core_dev* %153, i32 %154, i32 %155, i32 %156)
  %158 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %159 = call i32 @mlx5e_set_port_pause_and_pfc(%struct.mlx5e_priv* %158)
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %9, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %121
  %164 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %165 = load i32, i32* @MLX5_PORT_UP, align 4
  %166 = call i32 @mlx5_set_port_status(%struct.mlx5_core_dev* %164, i32 %165)
  br label %167

167:                                              ; preds = %163, %121
  br label %168

168:                                              ; preds = %167, %116, %89, %78, %49, %39
  %169 = load i32, i32* %10, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %168
  %172 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %173 = call i32 @PRIV_UNLOCK(%struct.mlx5e_priv* %172)
  br label %174

174:                                              ; preds = %171, %168
  %175 = load i32, i32* %11, align 4
  %176 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %176)
  ret i32 %175
}

declare dso_local i32 @MLX5_ST_SZ_DW(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @PRIV_LOCKED(%struct.mlx5e_priv*) #1

declare dso_local i32 @PRIV_LOCK(%struct.mlx5e_priv*) #1

declare dso_local i64 @IFM_TYPE(i32) #1

declare dso_local i32 @mlx5_query_port_ptys(%struct.mlx5_core_dev*, i32*, i32, i32, i32) #1

declare dso_local i32 @mlx5_en_err(%struct.ifnet*, i8*) #1

declare dso_local i32 @MLX5_CAP_PCAM_FEATURE(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5e_find_link_mode(i64, i32) #1

declare dso_local i64 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @MLX5_GET_ETH_PROTO(i32, i32*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mlx5_set_port_status(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_set_port_proto(%struct.mlx5_core_dev*, i32, i32, i32) #1

declare dso_local i32 @mlx5e_set_port_pause_and_pfc(%struct.mlx5e_priv*) #1

declare dso_local i32 @PRIV_UNLOCK(%struct.mlx5e_priv*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
