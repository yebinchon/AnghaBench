; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_fw.c_mlx4_handle_vst_qinq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_fw.c_mlx4_handle_vst_qinq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_priv = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.mlx4_slave_state*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.mlx4_slave_state = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.mlx4_vport_state* }
%struct.mlx4_vport_state = type { i64, i64, i64 }
%struct.TYPE_6__ = type { %struct.mlx4_vport_oper_state* }
%struct.mlx4_vport_oper_state = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, i64 }

@ETH_P_8021AD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Slave %d does not support VST QinQ mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_priv*, i32, i32)* @mlx4_handle_vst_qinq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_handle_vst_qinq(%struct.mlx4_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_vport_oper_state*, align 8
  %9 = alloca %struct.mlx4_slave_state*, align 8
  %10 = alloca %struct.mlx4_vport_state*, align 8
  %11 = alloca i32, align 4
  store %struct.mlx4_priv* %0, %struct.mlx4_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %13 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %21, i64 %23
  store %struct.mlx4_vport_oper_state* %24, %struct.mlx4_vport_oper_state** %8, align 8
  %25 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %26 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %34, i64 %36
  store %struct.mlx4_vport_state* %37, %struct.mlx4_vport_state** %10, align 8
  %38 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %39 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.mlx4_slave_state*, %struct.mlx4_slave_state** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.mlx4_slave_state, %struct.mlx4_slave_state* %42, i64 %44
  store %struct.mlx4_slave_state* %45, %struct.mlx4_slave_state** %9, align 8
  %46 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %10, align 8
  %47 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @ETH_P_8021AD, align 4
  %50 = call i64 @htons(i32 %49)
  %51 = icmp ne i64 %48, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %3
  %53 = load %struct.mlx4_slave_state*, %struct.mlx4_slave_state** %9, align 8
  %54 = getelementptr inbounds %struct.mlx4_slave_state, %struct.mlx4_slave_state* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52, %3
  store i32 0, i32* %4, align 4
  br label %120

58:                                               ; preds = %52
  %59 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %60 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %10, align 8
  %64 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %58
  %68 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %69 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %10, align 8
  %73 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %71, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %67
  %77 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %78 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %10, align 8
  %82 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %120

86:                                               ; preds = %76, %67, %58
  %87 = load %struct.mlx4_slave_state*, %struct.mlx4_slave_state** %9, align 8
  %88 = getelementptr inbounds %struct.mlx4_slave_state, %struct.mlx4_slave_state* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %114, label %91

91:                                               ; preds = %86
  %92 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %93 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %10, align 8
  %97 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %99 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %10, align 8
  %103 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %102, i32 0, i32 1
  store i64 %101, i64* %103, align 8
  %104 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %105 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %10, align 8
  %109 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %108, i32 0, i32 2
  store i64 %107, i64* %109, align 8
  %110 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %111 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %110, i32 0, i32 0
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @mlx4_warn(i32* %111, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %112)
  store i32 0, i32* %4, align 4
  br label %120

114:                                              ; preds = %86
  %115 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @mlx4_activate_vst_qinq(%struct.mlx4_priv* %115, i32 %116, i32 %117)
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %11, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %114, %91, %85, %57
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @mlx4_warn(i32*, i8*, i32) #1

declare dso_local i32 @mlx4_activate_vst_qinq(%struct.mlx4_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
