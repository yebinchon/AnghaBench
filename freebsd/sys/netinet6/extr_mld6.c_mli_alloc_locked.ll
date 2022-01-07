; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_mld6.c_mli_alloc_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_mld6.c_mli_alloc_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mld_ifsoftc = type { i32, i32, i32, i32, i32, i64, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@M_MLD = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@MLD_VERSION_2 = common dso_local global i32 0, align 4
@MLD_RV_INIT = common dso_local global i32 0, align 4
@MLD_QI_INIT = common dso_local global i32 0, align 4
@MLD_QRI_INIT = common dso_local global i32 0, align 4
@MLD_URI_INIT = common dso_local global i32 0, align 4
@MLD_MAX_RESPONSE_PACKETS = common dso_local global i32 0, align 4
@V_mli_head = common dso_local global i32 0, align 4
@mli_link = common dso_local global i32 0, align 4
@KTR_MLD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"allocate mld_ifsoftc for ifp %p(%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mld_ifsoftc* (%struct.ifnet*)* @mli_alloc_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mld_ifsoftc* @mli_alloc_locked(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.mld_ifsoftc*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %4 = call i32 (...) @MLD_LOCK_ASSERT()
  %5 = load i32, i32* @M_MLD, align 4
  %6 = load i32, i32* @M_NOWAIT, align 4
  %7 = load i32, i32* @M_ZERO, align 4
  %8 = or i32 %6, %7
  %9 = call %struct.mld_ifsoftc* @malloc(i32 48, i32 %5, i32 %8)
  store %struct.mld_ifsoftc* %9, %struct.mld_ifsoftc** %3, align 8
  %10 = load %struct.mld_ifsoftc*, %struct.mld_ifsoftc** %3, align 8
  %11 = icmp eq %struct.mld_ifsoftc* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %46

13:                                               ; preds = %1
  %14 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %15 = load %struct.mld_ifsoftc*, %struct.mld_ifsoftc** %3, align 8
  %16 = getelementptr inbounds %struct.mld_ifsoftc, %struct.mld_ifsoftc* %15, i32 0, i32 7
  store %struct.ifnet* %14, %struct.ifnet** %16, align 8
  %17 = load i32, i32* @MLD_VERSION_2, align 4
  %18 = load %struct.mld_ifsoftc*, %struct.mld_ifsoftc** %3, align 8
  %19 = getelementptr inbounds %struct.mld_ifsoftc, %struct.mld_ifsoftc* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 8
  %20 = load %struct.mld_ifsoftc*, %struct.mld_ifsoftc** %3, align 8
  %21 = getelementptr inbounds %struct.mld_ifsoftc, %struct.mld_ifsoftc* %20, i32 0, i32 5
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @MLD_RV_INIT, align 4
  %23 = load %struct.mld_ifsoftc*, %struct.mld_ifsoftc** %3, align 8
  %24 = getelementptr inbounds %struct.mld_ifsoftc, %struct.mld_ifsoftc* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @MLD_QI_INIT, align 4
  %26 = load %struct.mld_ifsoftc*, %struct.mld_ifsoftc** %3, align 8
  %27 = getelementptr inbounds %struct.mld_ifsoftc, %struct.mld_ifsoftc* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @MLD_QRI_INIT, align 4
  %29 = load %struct.mld_ifsoftc*, %struct.mld_ifsoftc** %3, align 8
  %30 = getelementptr inbounds %struct.mld_ifsoftc, %struct.mld_ifsoftc* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @MLD_URI_INIT, align 4
  %32 = load %struct.mld_ifsoftc*, %struct.mld_ifsoftc** %3, align 8
  %33 = getelementptr inbounds %struct.mld_ifsoftc, %struct.mld_ifsoftc* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.mld_ifsoftc*, %struct.mld_ifsoftc** %3, align 8
  %35 = getelementptr inbounds %struct.mld_ifsoftc, %struct.mld_ifsoftc* %34, i32 0, i32 0
  %36 = load i32, i32* @MLD_MAX_RESPONSE_PACKETS, align 4
  %37 = call i32 @mbufq_init(i32* %35, i32 %36)
  %38 = load %struct.mld_ifsoftc*, %struct.mld_ifsoftc** %3, align 8
  %39 = load i32, i32* @mli_link, align 4
  %40 = call i32 @LIST_INSERT_HEAD(i32* @V_mli_head, %struct.mld_ifsoftc* %38, i32 %39)
  %41 = load i32, i32* @KTR_MLD, align 4
  %42 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %43 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %44 = call i32 @if_name(%struct.ifnet* %43)
  %45 = call i32 @CTR2(i32 %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.ifnet* %42, i32 %44)
  br label %46

46:                                               ; preds = %13, %12
  %47 = load %struct.mld_ifsoftc*, %struct.mld_ifsoftc** %3, align 8
  ret %struct.mld_ifsoftc* %47
}

declare dso_local i32 @MLD_LOCK_ASSERT(...) #1

declare dso_local %struct.mld_ifsoftc* @malloc(i32, i32, i32) #1

declare dso_local i32 @mbufq_init(i32*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.mld_ifsoftc*, i32) #1

declare dso_local i32 @CTR2(i32, i8*, %struct.ifnet*, i32) #1

declare dso_local i32 @if_name(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
