; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_main.c_nicvf_if_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_main.c_nicvf_if_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32, %struct.TYPE_2__, i32, %struct.ifnet*, %struct.queue_set* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.ifnet = type { i32 }
%struct.queue_set = type { i32, i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Could not reenable Mbox interrupt\0A\00", align 1
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@NIC_VF_INT = common dso_local global i32 0, align 4
@NICVF_INTR_QS_ERR = common dso_local global i32 0, align 4
@NICVF_INTR_CQ = common dso_local global i32 0, align 4
@NICVF_INTR_RBDR = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@nicvf_tick_stats = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicvf*)* @nicvf_if_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_if_init_locked(%struct.nicvf* %0) #0 {
  %2 = alloca %struct.nicvf*, align 8
  %3 = alloca %struct.queue_set*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nicvf* %0, %struct.nicvf** %2, align 8
  %8 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %9 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %8, i32 0, i32 4
  %10 = load %struct.queue_set*, %struct.queue_set** %9, align 8
  store %struct.queue_set* %10, %struct.queue_set** %3, align 8
  %11 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %12 = call i32 @NICVF_CORE_LOCK_ASSERT(%struct.nicvf* %11)
  %13 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %14 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %13, i32 0, i32 3
  %15 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  store %struct.ifnet* %15, %struct.ifnet** %4, align 8
  %16 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %17 = call i32 @if_getdrvflags(%struct.ifnet* %16)
  %18 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %23 = call i32 @nicvf_stop_locked(%struct.nicvf* %22)
  br label %24

24:                                               ; preds = %21, %1
  %25 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %26 = call i32 @nicvf_enable_misc_interrupt(%struct.nicvf* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %31 = call i32 @if_printf(%struct.ifnet* %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %117

32:                                               ; preds = %24
  %33 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %34 = call i32 @if_getlladdr(%struct.ifnet* %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %36 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %40 = call i64 @memcmp(i32 %37, i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %32
  %43 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %44 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %48 = call i32 @memcpy(i32 %45, i32 %46, i32 %47)
  %49 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @nicvf_hw_set_mac_addr(%struct.nicvf* %49, i32 %50)
  br label %52

52:                                               ; preds = %42, %32
  %53 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %54 = call i32 @nicvf_init_resources(%struct.nicvf* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %112

58:                                               ; preds = %52
  %59 = call i32 (...) @wmb()
  %60 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %61 = load i32, i32* @NIC_VF_INT, align 4
  %62 = call i32 @nicvf_reg_write(%struct.nicvf* %60, i32 %61, i64 -1)
  %63 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %64 = load i32, i32* @NICVF_INTR_QS_ERR, align 4
  %65 = call i32 @nicvf_enable_intr(%struct.nicvf* %63, i32 %64, i32 0)
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %77, %58
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.queue_set*, %struct.queue_set** %3, align 8
  %69 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %66
  %73 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %74 = load i32, i32* @NICVF_INTR_CQ, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @nicvf_enable_intr(%struct.nicvf* %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %66

80:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %92, %80
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.queue_set*, %struct.queue_set** %3, align 8
  %84 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %81
  %88 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %89 = load i32, i32* @NICVF_INTR_RBDR, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @nicvf_enable_intr(%struct.nicvf* %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %87
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %81

95:                                               ; preds = %81
  %96 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %97 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  store i64 0, i64* %98, align 8
  %99 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %100 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  store i64 0, i64* %101, align 8
  %102 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %103 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %104 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %105 = call i32 @if_setdrvflagbits(%struct.ifnet* %102, i32 %103, i32 %104)
  %106 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %107 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %106, i32 0, i32 0
  %108 = load i32, i32* @hz, align 4
  %109 = load i32, i32* @nicvf_tick_stats, align 4
  %110 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %111 = call i32 @callout_reset(i32* %107, i32 %108, i32 %109, %struct.nicvf* %110)
  br label %117

112:                                              ; preds = %57
  %113 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %114 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %115 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %116 = call i32 @if_setdrvflagbits(%struct.ifnet* %113, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %112, %95, %29
  ret void
}

declare dso_local i32 @NICVF_CORE_LOCK_ASSERT(%struct.nicvf*) #1

declare dso_local i32 @if_getdrvflags(%struct.ifnet*) #1

declare dso_local i32 @nicvf_stop_locked(%struct.nicvf*) #1

declare dso_local i32 @nicvf_enable_misc_interrupt(%struct.nicvf*) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*) #1

declare dso_local i32 @if_getlladdr(%struct.ifnet*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @nicvf_hw_set_mac_addr(%struct.nicvf*, i32) #1

declare dso_local i32 @nicvf_init_resources(%struct.nicvf*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @nicvf_reg_write(%struct.nicvf*, i32, i64) #1

declare dso_local i32 @nicvf_enable_intr(%struct.nicvf*, i32, i32) #1

declare dso_local i32 @if_setdrvflagbits(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.nicvf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
