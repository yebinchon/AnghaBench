; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_if_media_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_if_media_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmediareq = type { i32, i32 }
%struct.adapter = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"ixv_media_status: begin\00", align 1
@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_10G_T = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ifmediareq*)* @ixv_if_media_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixv_if_media_status(i32 %0, %struct.ifmediareq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifmediareq*, align 8
  %5 = alloca %struct.adapter*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.ifmediareq* %1, %struct.ifmediareq** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.adapter* @iflib_get_softc(i32 %6)
  store %struct.adapter* %7, %struct.adapter** %5, align 8
  %8 = call i32 @INIT_DEBUGOUT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @iflib_admin_intr_deferred(i32 %9)
  %11 = load i32, i32* @IFM_AVALID, align 4
  %12 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %13 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @IFM_ETHER, align 4
  %15 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %16 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.adapter*, %struct.adapter** %5, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %63

22:                                               ; preds = %2
  %23 = load i32, i32* @IFM_ACTIVE, align 4
  %24 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %25 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.adapter*, %struct.adapter** %5, align 8
  %29 = getelementptr inbounds %struct.adapter, %struct.adapter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %63 [
    i32 128, label %31
    i32 130, label %39
    i32 131, label %47
    i32 129, label %55
  ]

31:                                               ; preds = %22
  %32 = load i32, i32* @IFM_1000_T, align 4
  %33 = load i32, i32* @IFM_FDX, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %36 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %63

39:                                               ; preds = %22
  %40 = load i32, i32* @IFM_10G_T, align 4
  %41 = load i32, i32* @IFM_FDX, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %44 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %63

47:                                               ; preds = %22
  %48 = load i32, i32* @IFM_100_TX, align 4
  %49 = load i32, i32* @IFM_FDX, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %52 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %63

55:                                               ; preds = %22
  %56 = load i32, i32* @IFM_10_T, align 4
  %57 = load i32, i32* @IFM_FDX, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %60 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %21, %22, %55, %47, %39, %31
  ret void
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @INIT_DEBUGOUT(i8*) #1

declare dso_local i32 @iflib_admin_intr_deferred(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
