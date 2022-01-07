; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_mss_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_mss_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mss_info = type { i32, i32, i32, i64, i64, i64 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@DV_F_DUAL_DMA = common dso_local global i32 0, align 4
@SYS_RES_DRQ = common dso_local global i32 0, align 4
@DV_F_DRQ_MASK = common dso_local global i32 0, align 4
@DV_F_DEV_MASK = common dso_local global i32 0, align 4
@DV_F_DEV_SHIFT = common dso_local global i32 0, align 4
@MD_YM0020 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mss_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mss_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mss_info*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @device_get_flags(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @M_DEVBUF, align 4
  %9 = load i32, i32* @M_NOWAIT, align 4
  %10 = load i32, i32* @M_ZERO, align 4
  %11 = or i32 %9, %10
  %12 = call i64 @malloc(i32 40, i32 %8, i32 %11)
  %13 = inttoptr i64 %12 to %struct.mss_info*
  store %struct.mss_info* %13, %struct.mss_info** %4, align 8
  %14 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %15 = icmp ne %struct.mss_info* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %2, align 4
  br label %64

18:                                               ; preds = %1
  %19 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %20 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %19, i32 0, i32 5
  store i64 0, i64* %20, align 8
  %21 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %22 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %21, i32 0, i32 0
  store i32 -1, i32* %22, align 8
  %23 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %24 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %26 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %28 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %27, i32 0, i32 1
  store i32 -1, i32* %28, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @DV_F_DUAL_DMA, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %18
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @SYS_RES_DRQ, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @DV_F_DRQ_MASK, align 4
  %38 = and i32 %36, %37
  %39 = call i32 @bus_set_resource(i32 %34, i32 %35, i32 1, i32 %38, i32 1)
  %40 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %41 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %33, %18
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @device_get_flags(i32 %43)
  %45 = load i32, i32* @DV_F_DEV_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @DV_F_DEV_SHIFT, align 4
  %48 = ashr i32 %46, %47
  %49 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %50 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %52 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @MD_YM0020, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %42
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %59 = call i32 @ymf_test(i32 %57, %struct.mss_info* %58)
  br label %60

60:                                               ; preds = %56, %42
  %61 = load i32, i32* %3, align 4
  %62 = load %struct.mss_info*, %struct.mss_info** %4, align 8
  %63 = call i32 @mss_doattach(i32 %61, %struct.mss_info* %62)
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %60, %16
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @device_get_flags(i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @bus_set_resource(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ymf_test(i32, %struct.mss_info*) #1

declare dso_local i32 @mss_doattach(i32, %struct.mss_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
