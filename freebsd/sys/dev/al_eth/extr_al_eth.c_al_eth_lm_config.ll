; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_lm_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_lm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_eth_adapter = type { i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.al_eth_lm_init_params = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.al_eth_adapter*, i32, i8*, i32, i32, i32, i32*, i32*, i32 }

@SFP_I2C_ADDR = common dso_local global i32 0, align 4
@AL_ETH_LM_MODE_10G_DA = common dso_local global i8* null, align 8
@AL_ETH_LM_MODE_10G_OPTIC = common dso_local global i8* null, align 8
@AL_ETH_LM_MODE_1G = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_eth_adapter*)* @al_eth_lm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_eth_lm_config(%struct.al_eth_adapter* %0) #0 {
  %2 = alloca %struct.al_eth_adapter*, align 8
  %3 = alloca %struct.al_eth_lm_init_params, align 8
  store %struct.al_eth_adapter* %0, %struct.al_eth_adapter** %2, align 8
  %4 = bitcast %struct.al_eth_lm_init_params* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 96, i1 false)
  %5 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %5, i32 0, i32 10
  %7 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %3, i32 0, i32 15
  store i32* %6, i32** %7, align 8
  %8 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %8, i32 0, i32 9
  %10 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %3, i32 0, i32 14
  store i32* %9, i32** %10, align 8
  %11 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %3, i32 0, i32 13
  store i32 %13, i32* %14, align 8
  %15 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %3, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %3, i32 0, i32 12
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @SFP_I2C_ADDR, align 4
  %29 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %3, i32 0, i32 11
  store i32 %28, i32* %29, align 8
  br label %30

30:                                               ; preds = %23, %1
  %31 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %63

35:                                               ; preds = %30
  %36 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %59 [
    i32 129, label %39
    i32 128, label %56
  ]

39:                                               ; preds = %35
  %40 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %41 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i8*, i8** @AL_ETH_LM_MODE_10G_DA, align 8
  %51 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %3, i32 0, i32 10
  store i8* %50, i8** %51, align 8
  br label %55

52:                                               ; preds = %44, %39
  %53 = load i8*, i8** @AL_ETH_LM_MODE_10G_OPTIC, align 8
  %54 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %3, i32 0, i32 10
  store i8* %53, i8** %54, align 8
  br label %55

55:                                               ; preds = %52, %49
  br label %62

56:                                               ; preds = %35
  %57 = load i8*, i8** @AL_ETH_LM_MODE_1G, align 8
  %58 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %3, i32 0, i32 10
  store i8* %57, i8** %58, align 8
  br label %62

59:                                               ; preds = %35
  %60 = load i8*, i8** @AL_ETH_LM_MODE_10G_DA, align 8
  %61 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %3, i32 0, i32 10
  store i8* %60, i8** %61, align 8
  br label %62

62:                                               ; preds = %59, %56, %55
  br label %66

63:                                               ; preds = %30
  %64 = load i8*, i8** @AL_ETH_LM_MODE_10G_DA, align 8
  %65 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %3, i32 0, i32 10
  store i8* %64, i8** %65, align 8
  br label %66

66:                                               ; preds = %63, %62
  %67 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %68 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %3, i32 0, i32 9
  store i32 %69, i32* %70, align 8
  %71 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %3, i32 0, i32 1
  store i32 1, i32* %71, align 4
  %72 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %73 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %3, i32 0, i32 2
  store i32 %77, i32* %78, align 8
  %79 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %80 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %3, i32 0, i32 8
  store %struct.al_eth_adapter* %79, %struct.al_eth_adapter** %80, align 8
  %81 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %3, i32 0, i32 3
  store i32 0, i32* %81, align 4
  %82 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %83 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %3, i32 0, i32 7
  store i32 %85, i32* %86, align 4
  %87 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %88 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %3, i32 0, i32 6
  store i32 %90, i32* %91, align 8
  %92 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %93 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %3, i32 0, i32 5
  store i32 %95, i32* %96, align 4
  %97 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %98 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.al_eth_lm_init_params, %struct.al_eth_lm_init_params* %3, i32 0, i32 4
  store i32 %100, i32* %101, align 8
  %102 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %103 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %102, i32 0, i32 2
  %104 = call i32 @al_eth_lm_init(i32* %103, %struct.al_eth_lm_init_params* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @al_eth_lm_init(i32*, %struct.al_eth_lm_init_params*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
