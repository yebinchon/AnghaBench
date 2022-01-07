; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_netdev.c_mlx4_en_media_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_netdev.c_mlx4_en_media_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.mlx4_en_priv* }
%struct.mlx4_en_priv = type { %struct.TYPE_4__*, i64, i32, %struct.TYPE_3__*, %struct.ifmedia }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ifmedia = type { i32 }

@IFM_ETHER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s: Only auto media type\0A\00", align 1
@IFM_ETH_RXPAUSE = common dso_local global i32 0, align 4
@IFM_ETH_TXPAUSE = common dso_local global i32 0, align 4
@ETHER_CRC_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @mlx4_en_media_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_media_change(%struct.ifnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.mlx4_en_priv*, align 8
  %5 = alloca %struct.ifmedia*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  %9 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %10 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %9, i32 0, i32 0
  %11 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %10, align 8
  store %struct.mlx4_en_priv* %11, %struct.mlx4_en_priv** %4, align 8
  %12 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %13 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %12, i32 0, i32 4
  store %struct.ifmedia* %13, %struct.ifmedia** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.ifmedia*, %struct.ifmedia** %5, align 8
  %15 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @IFM_TYPE(i32 %16)
  %18 = load i64, i64* @IFM_ETHER, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %2, align 4
  br label %133

22:                                               ; preds = %1
  %23 = load %struct.ifmedia*, %struct.ifmedia** %5, align 8
  %24 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @IFM_SUBTYPE(i32 %25)
  switch i32 %26, label %46 [
    i32 128, label %27
    i32 130, label %28
    i32 131, label %28
    i32 132, label %28
    i32 129, label %28
  ]

27:                                               ; preds = %22
  br label %51

28:                                               ; preds = %22, %22, %22, %22
  %29 = load %struct.ifmedia*, %struct.ifmedia** %5, align 8
  %30 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @IFM_SUBTYPE(i32 %31)
  %33 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %34 = call i32 @mlx4_en_calc_media(%struct.mlx4_en_priv* %33)
  %35 = call i32 @IFM_SUBTYPE(i32 %34)
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %28
  %38 = load %struct.ifmedia*, %struct.ifmedia** %5, align 8
  %39 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IFM_FDX, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %51

45:                                               ; preds = %37, %28
  br label %46

46:                                               ; preds = %22, %45
  %47 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %48 = call i8* @if_name(%struct.ifnet* %47)
  %49 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %48)
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %2, align 4
  br label %133

51:                                               ; preds = %44, %27
  %52 = load %struct.ifmedia*, %struct.ifmedia** %5, align 8
  %53 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @IFM_OPTIONS(i32 %54)
  %56 = load i32, i32* @IFM_ETH_RXPAUSE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32 1, i32* %6, align 4
  br label %60

60:                                               ; preds = %59, %51
  %61 = load %struct.ifmedia*, %struct.ifmedia** %5, align 8
  %62 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @IFM_OPTIONS(i32 %63)
  %65 = load i32, i32* @IFM_ETH_TXPAUSE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store i32 1, i32* %7, align 4
  br label %69

69:                                               ; preds = %68, %60
  %70 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %71 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %85, label %77

77:                                               ; preds = %69
  %78 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %79 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %131

85:                                               ; preds = %77, %69
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %88 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i32 %86, i32* %90, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %93 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  store i32 %91, i32* %95, align 4
  %96 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %97 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %96, i32 0, i32 3
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %102 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %105 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @ETHER_CRC_LEN, align 8
  %108 = add nsw i64 %106, %107
  %109 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %110 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %115 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %114, i32 0, i32 0
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %120 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %119, i32 0, i32 0
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %125 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %124, i32 0, i32 0
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @mlx4_SET_PORT_general(i32 %100, i32 %103, i64 %108, i32 %113, i32 %118, i32 %123, i32 %128)
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %8, align 4
  br label %131

131:                                              ; preds = %85, %77
  %132 = load i32, i32* %8, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %131, %46, %20
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i64 @IFM_TYPE(i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @mlx4_en_calc_media(%struct.mlx4_en_priv*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @if_name(%struct.ifnet*) #1

declare dso_local i32 @IFM_OPTIONS(i32) #1

declare dso_local i32 @mlx4_SET_PORT_general(i32, i32, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
