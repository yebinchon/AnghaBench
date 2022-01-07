; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlxgb/extr_qla_os.c_qla_add_sysctls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlxgb/extr_qla_os.c_qla_add_sysctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@qla_sysctl_get_stats = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Statistics\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"fw_version\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"firmware version\00", align 1
@dbg_level = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"Debug Level\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"std_replenish\00", align 1
@std_replenish = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [43 x i8] c"Threshold for Replenishing Standard Frames\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"jumbo_replenish\00", align 1
@jumbo_replenish = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [40 x i8] c"Threshold for Replenishing Jumbo Frames\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"rcv_pkt_thres\00", align 1
@rcv_pkt_thres = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [54 x i8] c"Threshold for # of rcv pkts to trigger indication isr\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"rcv_pkt_thres_d\00", align 1
@rcv_pkt_thres_d = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [58 x i8] c"Threshold for # of rcv pkts to trigger indication defered\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"snd_pkt_thres\00", align 1
@snd_pkt_thres = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [31 x i8] c"Threshold for # of snd packets\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"free_pkt_thres\00", align 1
@free_pkt_thres = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [45 x i8] c"Threshold for # of packets to free at a time\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @qla_add_sysctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla_add_sysctls(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @device_get_sysctl_ctx(i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @device_get_sysctl_tree(i32 %9)
  %11 = call i32 @SYSCTL_CHILDREN(i32 %10)
  %12 = load i32, i32* @OID_AUTO, align 4
  %13 = load i32, i32* @CTLTYPE_INT, align 4
  %14 = load i32, i32* @CTLFLAG_RD, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = bitcast %struct.TYPE_3__* %16 to i8*
  %18 = load i32, i32* @qla_sysctl_get_stats, align 4
  %19 = call i32 @SYSCTL_ADD_PROC(i32 %8, i32 %11, i32 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %15, i8* %17, i32 0, i32 %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @device_get_sysctl_ctx(i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @device_get_sysctl_tree(i32 %22)
  %24 = call i32 @SYSCTL_CHILDREN(i32 %23)
  %25 = load i32, i32* @OID_AUTO, align 4
  %26 = load i32, i32* @CTLFLAG_RD, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @SYSCTL_ADD_STRING(i32 %21, i32 %24, i32 %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %26, i32 %29, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i64 0, i64* @dbg_level, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @device_get_sysctl_ctx(i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @device_get_sysctl_tree(i32 %33)
  %35 = call i32 @SYSCTL_CHILDREN(i32 %34)
  %36 = load i32, i32* @OID_AUTO, align 4
  %37 = load i32, i32* @CTLFLAG_RW, align 4
  %38 = load i64, i64* @dbg_level, align 8
  %39 = call i32 @SYSCTL_ADD_UINT(i32 %32, i32 %35, i32 %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %37, i64* @dbg_level, i64 %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @device_get_sysctl_ctx(i32 %40)
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @device_get_sysctl_tree(i32 %42)
  %44 = call i32 @SYSCTL_CHILDREN(i32 %43)
  %45 = load i32, i32* @OID_AUTO, align 4
  %46 = load i32, i32* @CTLFLAG_RW, align 4
  %47 = load i64, i64* @std_replenish, align 8
  %48 = call i32 @SYSCTL_ADD_UINT(i32 %41, i32 %44, i32 %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %46, i64* @std_replenish, i64 %47, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @device_get_sysctl_ctx(i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @device_get_sysctl_tree(i32 %51)
  %53 = call i32 @SYSCTL_CHILDREN(i32 %52)
  %54 = load i32, i32* @OID_AUTO, align 4
  %55 = load i32, i32* @CTLFLAG_RW, align 4
  %56 = load i64, i64* @jumbo_replenish, align 8
  %57 = call i32 @SYSCTL_ADD_UINT(i32 %50, i32 %53, i32 %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %55, i64* @jumbo_replenish, i64 %56, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @device_get_sysctl_ctx(i32 %58)
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @device_get_sysctl_tree(i32 %60)
  %62 = call i32 @SYSCTL_CHILDREN(i32 %61)
  %63 = load i32, i32* @OID_AUTO, align 4
  %64 = load i32, i32* @CTLFLAG_RW, align 4
  %65 = load i64, i64* @rcv_pkt_thres, align 8
  %66 = call i32 @SYSCTL_ADD_UINT(i32 %59, i32 %62, i32 %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %64, i64* @rcv_pkt_thres, i64 %65, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i64 0, i64 0))
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @device_get_sysctl_ctx(i32 %67)
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @device_get_sysctl_tree(i32 %69)
  %71 = call i32 @SYSCTL_CHILDREN(i32 %70)
  %72 = load i32, i32* @OID_AUTO, align 4
  %73 = load i32, i32* @CTLFLAG_RW, align 4
  %74 = load i64, i64* @rcv_pkt_thres_d, align 8
  %75 = call i32 @SYSCTL_ADD_UINT(i32 %68, i32 %71, i32 %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 %73, i64* @rcv_pkt_thres_d, i64 %74, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.14, i64 0, i64 0))
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @device_get_sysctl_ctx(i32 %76)
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @device_get_sysctl_tree(i32 %78)
  %80 = call i32 @SYSCTL_CHILDREN(i32 %79)
  %81 = load i32, i32* @OID_AUTO, align 4
  %82 = load i32, i32* @CTLFLAG_RW, align 4
  %83 = load i64, i64* @snd_pkt_thres, align 8
  %84 = call i32 @SYSCTL_ADD_UINT(i32 %77, i32 %80, i32 %81, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 %82, i64* @snd_pkt_thres, i64 %83, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0))
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @device_get_sysctl_ctx(i32 %85)
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @device_get_sysctl_tree(i32 %87)
  %89 = call i32 @SYSCTL_CHILDREN(i32 %88)
  %90 = load i32, i32* @OID_AUTO, align 4
  %91 = load i32, i32* @CTLFLAG_RW, align 4
  %92 = load i64, i64* @free_pkt_thres, align 8
  %93 = call i32 @SYSCTL_ADD_UINT(i32 %86, i32 %89, i32 %90, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i32 %91, i64* @free_pkt_thres, i64 %92, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i64 0, i64 0))
  ret void
}

declare dso_local i32 @SYSCTL_ADD_PROC(i32, i32, i32, i8*, i32, i8*, i32, i32, i8*, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_STRING(i32, i32, i32, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_UINT(i32, i32, i32, i8*, i32, i64*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
