; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_setup_pauseframes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_setup_pauseframes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_8__, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32, i64, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"dev.mce.%d.tx_pauseframe_control\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"dev.mce.%d.rx_pauseframe_control\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"tx_pauseframe_control\00", align 1
@CTLFLAG_RDTUN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Set to enable TX pause frames. Clear to disable.\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"rx_pauseframe_control\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"Set to enable RX pause frames. Clear to disable.\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"tx_priority_flow_control\00", align 1
@CTLTYPE_U8 = common dso_local global i32 0, align 4
@CTLFLAG_RWTUN = common dso_local global i32 0, align 4
@CTLFLAG_MPSAFE = common dso_local global i32 0, align 4
@mlx5e_sysctl_tx_priority_flow_control = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"CU\00", align 1
@.str.8 = private unnamed_addr constant [82 x i8] c"Set to enable TX ports flow control frames for priorities 0..7. Clear to disable.\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"rx_priority_flow_control\00", align 1
@mlx5e_sysctl_rx_priority_flow_control = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [82 x i8] c"Set to enable RX ports flow control frames for priorities 0..7. Clear to disable.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [58 x i8] c"Global pauseframes must be disabled before enabling PFC.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*)* @mlx5e_setup_pauseframes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_setup_pauseframes(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca %struct.mlx5e_priv*, align 8
  %3 = alloca [96 x i8], align 16
  %4 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %2, align 8
  %5 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %6 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %9 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i32 1, i32* %10, align 4
  %11 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %12 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %15 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds [96 x i8], [96 x i8]* %3, i64 0, i64 0
  %18 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %19 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %18, i32 0, i32 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @device_get_unit(i32 %25)
  %27 = call i32 @snprintf(i8* %17, i32 96, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = getelementptr inbounds [96 x i8], [96 x i8]* %3, i64 0, i64 0
  %29 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %30 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = call i32 @TUNABLE_INT_FETCH(i8* %28, i32* %31)
  %33 = getelementptr inbounds [96 x i8], [96 x i8]* %3, i64 0, i64 0
  %34 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %35 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %34, i32 0, i32 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @device_get_unit(i32 %41)
  %43 = call i32 @snprintf(i8* %33, i32 96, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = getelementptr inbounds [96 x i8], [96 x i8]* %3, i64 0, i64 0
  %45 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %46 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = call i32 @TUNABLE_INT_FETCH(i8* %44, i32* %47)
  %49 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %50 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %49, i32 0, i32 3
  %51 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %52 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @SYSCTL_CHILDREN(i32 %53)
  %55 = load i32, i32* @OID_AUTO, align 4
  %56 = load i32, i32* @CTLFLAG_RDTUN, align 4
  %57 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %58 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = call i32 @SYSCTL_ADD_INT(i32* %50, i32 %54, i32 %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32* %59, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %61 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %62 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %61, i32 0, i32 3
  %63 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %64 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @SYSCTL_CHILDREN(i32 %65)
  %67 = load i32, i32* @OID_AUTO, align 4
  %68 = load i32, i32* @CTLFLAG_RDTUN, align 4
  %69 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %70 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = call i32 @SYSCTL_ADD_INT(i32* %62, i32 %66, i32 %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %68, i32* %71, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  %73 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %74 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %73, i32 0, i32 3
  %75 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %76 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @SYSCTL_CHILDREN(i32 %77)
  %79 = load i32, i32* @OID_AUTO, align 4
  %80 = load i32, i32* @CTLTYPE_U8, align 4
  %81 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %86 = call i32 @SYSCTL_ADD_PROC(i32* %74, i32 %78, i32 %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %84, %struct.mlx5e_priv* %85, i32 0, i32* @mlx5e_sysctl_tx_priority_flow_control, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.8, i64 0, i64 0))
  %87 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %88 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %87, i32 0, i32 3
  %89 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %90 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @SYSCTL_CHILDREN(i32 %91)
  %93 = load i32, i32* @OID_AUTO, align 4
  %94 = load i32, i32* @CTLTYPE_U8, align 4
  %95 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %98 = or i32 %96, %97
  %99 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %100 = call i32 @SYSCTL_ADD_PROC(i32* %88, i32 %92, i32 %93, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %98, %struct.mlx5e_priv* %99, i32 0, i32* @mlx5e_sysctl_rx_priority_flow_control, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.10, i64 0, i64 0))
  %101 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %102 = call i32 @PRIV_LOCK(%struct.mlx5e_priv* %101)
  %103 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %104 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i32 1, i32 0
  %110 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %111 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 8
  %113 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %114 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 1, i32 0
  %120 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %121 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  store i32 %119, i32* %122, align 4
  %123 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %124 = call i32 @mlx5e_set_port_pause_and_pfc(%struct.mlx5e_priv* %123)
  store i32 %124, i32* %4, align 4
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  %128 = icmp eq i32 %125, %127
  br i1 %128, label %129, label %142

129:                                              ; preds = %1
  %130 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %131 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @mlx5_en_err(i32 %132, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.11, i64 0, i64 0))
  %134 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %135 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 3
  store i64 0, i64* %136, align 8
  %137 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %138 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 2
  store i64 0, i64* %139, align 8
  %140 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %141 = call i32 @mlx5e_set_port_pause_and_pfc(%struct.mlx5e_priv* %140)
  br label %142

142:                                              ; preds = %129, %1
  %143 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %144 = call i32 @PRIV_UNLOCK(%struct.mlx5e_priv* %143)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @SYSCTL_ADD_INT(i32*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32*, i32, i32, i8*, i32, %struct.mlx5e_priv*, i32, i32*, i8*, i8*) #1

declare dso_local i32 @PRIV_LOCK(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_set_port_pause_and_pfc(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5_en_err(i32, i8*) #1

declare dso_local i32 @PRIV_UNLOCK(%struct.mlx5e_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
