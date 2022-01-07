; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_main.c_nicvf_media_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_main.c_nicvf_media_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.ifmediareq = type { i32, i32 }
%struct.nicvf = type { i32, i64, i64 }

@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i32 0, align 4
@IFM_10G_SR = common dso_local global i32 0, align 4
@IFM_40G_CR4 = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_HDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.ifmediareq*)* @nicvf_media_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_media_status(%struct.ifnet* %0, %struct.ifmediareq* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifmediareq*, align 8
  %5 = alloca %struct.nicvf*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.ifmediareq* %1, %struct.ifmediareq** %4, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %7 = call %struct.nicvf* @if_getsoftc(%struct.ifnet* %6)
  store %struct.nicvf* %7, %struct.nicvf** %5, align 8
  %8 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %9 = call i32 @NICVF_CORE_LOCK(%struct.nicvf* %8)
  %10 = load i32, i32* @IFM_AVALID, align 4
  %11 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %12 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @IFM_ETHER, align 4
  %14 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %15 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %17 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i32, i32* @IFM_ACTIVE, align 4
  %22 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %23 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %20, %2
  %27 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %28 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %60 [
    i32 132, label %30
    i32 131, label %36
    i32 130, label %42
    i32 129, label %48
    i32 128, label %54
  ]

30:                                               ; preds = %26
  %31 = load i32, i32* @IFM_10_T, align 4
  %32 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %33 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %66

36:                                               ; preds = %26
  %37 = load i32, i32* @IFM_100_TX, align 4
  %38 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %39 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %66

42:                                               ; preds = %26
  %43 = load i32, i32* @IFM_1000_T, align 4
  %44 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %45 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %66

48:                                               ; preds = %26
  %49 = load i32, i32* @IFM_10G_SR, align 4
  %50 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %51 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %66

54:                                               ; preds = %26
  %55 = load i32, i32* @IFM_40G_CR4, align 4
  %56 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %57 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %66

60:                                               ; preds = %26
  %61 = load i32, i32* @IFM_AUTO, align 4
  %62 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %63 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %60, %54, %48, %42, %36, %30
  %67 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %68 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load i32, i32* @IFM_FDX, align 4
  %73 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %74 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %83

77:                                               ; preds = %66
  %78 = load i32, i32* @IFM_HDX, align 4
  %79 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %80 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %77, %71
  %84 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %85 = call i32 @NICVF_CORE_UNLOCK(%struct.nicvf* %84)
  ret void
}

declare dso_local %struct.nicvf* @if_getsoftc(%struct.ifnet*) #1

declare dso_local i32 @NICVF_CORE_LOCK(%struct.nicvf*) #1

declare dso_local i32 @NICVF_CORE_UNLOCK(%struct.nicvf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
