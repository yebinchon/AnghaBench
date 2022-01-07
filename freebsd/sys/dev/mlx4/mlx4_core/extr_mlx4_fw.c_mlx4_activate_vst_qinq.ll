; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_fw.c_mlx4_activate_vst_qinq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_fw.c_mlx4_activate_vst_qinq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_priv = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.mlx4_vport_state* }
%struct.mlx4_vport_state = type { i64, i32, i32 }
%struct.TYPE_6__ = type { %struct.mlx4_vport_oper_state* }
%struct.mlx4_vport_oper_state = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64, i32, i32 }

@NO_INDX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"No vlan resources slave %d, port %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"alloc vlan %d idx  %d slave %d port %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_priv*, i32, i32)* @mlx4_activate_vst_qinq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_activate_vst_qinq(%struct.mlx4_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_vport_oper_state*, align 8
  %9 = alloca %struct.mlx4_vport_state*, align 8
  %10 = alloca i32, align 4
  store %struct.mlx4_priv* %0, %struct.mlx4_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %12 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %20, i64 %22
  store %struct.mlx4_vport_oper_state* %23, %struct.mlx4_vport_oper_state** %8, align 8
  %24 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %25 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %33, i64 %35
  store %struct.mlx4_vport_state* %36, %struct.mlx4_vport_state** %9, align 8
  %37 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %38 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %41 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %39, %43
  br i1 %44, label %45, label %81

45:                                               ; preds = %3
  %46 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %47 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %50 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %53 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %52, i32 0, i32 1
  %54 = call i32 @__mlx4_register_vlan(i32* %47, i32 %48, i64 %51, i32* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %45
  %58 = load i32, i32* @NO_INDX, align 4
  %59 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %60 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %62 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @mlx4_warn(i32* %62, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64)
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %4, align 4
  br label %100

67:                                               ; preds = %45
  %68 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %69 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %68, i32 0, i32 0
  %70 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %71 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %76 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @mlx4_dbg(i32* %69, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %67, %3
  %82 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %83 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %86 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  store i32 %84, i32* %87, align 4
  %88 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %89 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %92 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  store i64 %90, i64* %93, align 8
  %94 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %95 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %98 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  store i32 %96, i32* %99, align 8
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %81, %57
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @__mlx4_register_vlan(i32*, i32, i64, i32*) #1

declare dso_local i32 @mlx4_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @mlx4_dbg(i32*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
