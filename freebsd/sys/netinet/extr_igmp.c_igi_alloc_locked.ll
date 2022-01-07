; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_igmp.c_igi_alloc_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_igmp.c_igi_alloc_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igmp_ifsoftc = type { i32, i32, i32, i32, i32, i64, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@M_IGMP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@V_igmp_default_version = common dso_local global i32 0, align 4
@IGMP_RV_INIT = common dso_local global i32 0, align 4
@IGMP_QI_INIT = common dso_local global i32 0, align 4
@IGMP_QRI_INIT = common dso_local global i32 0, align 4
@IGMP_URI_INIT = common dso_local global i32 0, align 4
@IGMP_MAX_RESPONSE_PACKETS = common dso_local global i32 0, align 4
@V_igi_head = common dso_local global i32 0, align 4
@igi_link = common dso_local global i32 0, align 4
@KTR_IGMPV3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"allocate igmp_ifsoftc for ifp %p(%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.igmp_ifsoftc* (%struct.ifnet*)* @igi_alloc_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.igmp_ifsoftc* @igi_alloc_locked(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.igmp_ifsoftc*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %4 = call i32 (...) @IGMP_LOCK_ASSERT()
  %5 = load i32, i32* @M_IGMP, align 4
  %6 = load i32, i32* @M_NOWAIT, align 4
  %7 = load i32, i32* @M_ZERO, align 4
  %8 = or i32 %6, %7
  %9 = call %struct.igmp_ifsoftc* @malloc(i32 48, i32 %5, i32 %8)
  store %struct.igmp_ifsoftc* %9, %struct.igmp_ifsoftc** %3, align 8
  %10 = load %struct.igmp_ifsoftc*, %struct.igmp_ifsoftc** %3, align 8
  %11 = icmp eq %struct.igmp_ifsoftc* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %47

13:                                               ; preds = %1
  %14 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %15 = load %struct.igmp_ifsoftc*, %struct.igmp_ifsoftc** %3, align 8
  %16 = getelementptr inbounds %struct.igmp_ifsoftc, %struct.igmp_ifsoftc* %15, i32 0, i32 7
  store %struct.ifnet* %14, %struct.ifnet** %16, align 8
  %17 = load i32, i32* @V_igmp_default_version, align 4
  %18 = load %struct.igmp_ifsoftc*, %struct.igmp_ifsoftc** %3, align 8
  %19 = getelementptr inbounds %struct.igmp_ifsoftc, %struct.igmp_ifsoftc* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 8
  %20 = load %struct.igmp_ifsoftc*, %struct.igmp_ifsoftc** %3, align 8
  %21 = getelementptr inbounds %struct.igmp_ifsoftc, %struct.igmp_ifsoftc* %20, i32 0, i32 5
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @IGMP_RV_INIT, align 4
  %23 = load %struct.igmp_ifsoftc*, %struct.igmp_ifsoftc** %3, align 8
  %24 = getelementptr inbounds %struct.igmp_ifsoftc, %struct.igmp_ifsoftc* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @IGMP_QI_INIT, align 4
  %26 = load %struct.igmp_ifsoftc*, %struct.igmp_ifsoftc** %3, align 8
  %27 = getelementptr inbounds %struct.igmp_ifsoftc, %struct.igmp_ifsoftc* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @IGMP_QRI_INIT, align 4
  %29 = load %struct.igmp_ifsoftc*, %struct.igmp_ifsoftc** %3, align 8
  %30 = getelementptr inbounds %struct.igmp_ifsoftc, %struct.igmp_ifsoftc* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @IGMP_URI_INIT, align 4
  %32 = load %struct.igmp_ifsoftc*, %struct.igmp_ifsoftc** %3, align 8
  %33 = getelementptr inbounds %struct.igmp_ifsoftc, %struct.igmp_ifsoftc* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.igmp_ifsoftc*, %struct.igmp_ifsoftc** %3, align 8
  %35 = getelementptr inbounds %struct.igmp_ifsoftc, %struct.igmp_ifsoftc* %34, i32 0, i32 0
  %36 = load i32, i32* @IGMP_MAX_RESPONSE_PACKETS, align 4
  %37 = call i32 @mbufq_init(i32* %35, i32 %36)
  %38 = load %struct.igmp_ifsoftc*, %struct.igmp_ifsoftc** %3, align 8
  %39 = load i32, i32* @igi_link, align 4
  %40 = call i32 @LIST_INSERT_HEAD(i32* @V_igi_head, %struct.igmp_ifsoftc* %38, i32 %39)
  %41 = load i32, i32* @KTR_IGMPV3, align 4
  %42 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %43 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %44 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @CTR2(i32 %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.ifnet* %42, i32 %45)
  br label %47

47:                                               ; preds = %13, %12
  %48 = load %struct.igmp_ifsoftc*, %struct.igmp_ifsoftc** %3, align 8
  ret %struct.igmp_ifsoftc* %48
}

declare dso_local i32 @IGMP_LOCK_ASSERT(...) #1

declare dso_local %struct.igmp_ifsoftc* @malloc(i32, i32, i32) #1

declare dso_local i32 @mbufq_init(i32*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.igmp_ifsoftc*, i32) #1

declare dso_local i32 @CTR2(i32, i8*, %struct.ifnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
