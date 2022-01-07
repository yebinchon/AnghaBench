; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_ver_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_ver_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mge_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MV_DEV_88F6281 = common dso_local global i32 0, align 4
@MV_DEV_88F6781 = common dso_local global i32 0, align 4
@MV_DEV_88F6282 = common dso_local global i32 0, align 4
@MV_DEV_MV78100 = common dso_local global i32 0, align 4
@MV_DEV_MV78100_Z0 = common dso_local global i32 0, align 4
@MV_DEV_FAMILY_MASK = common dso_local global i32 0, align 4
@MV_DEV_DISCOVERY = common dso_local global i32 0, align 4
@MV_DEV_88RC8180 = common dso_local global i32 0, align 4
@MV_DEV_MV78160 = common dso_local global i32 0, align 4
@MV_DEV_MV78260 = common dso_local global i32 0, align 4
@MV_DEV_MV78460 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mge_softc*)* @mge_ver_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mge_ver_params(%struct.mge_softc* %0) #0 {
  %2 = alloca %struct.mge_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mge_softc* %0, %struct.mge_softc** %2, align 8
  %5 = call i32 @soc_id(i32* %3, i32* %4)
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @MV_DEV_88F6281, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %31, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @MV_DEV_88F6781, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %31, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @MV_DEV_88F6282, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %31, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @MV_DEV_MV78100, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %31, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @MV_DEV_MV78100_Z0, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @MV_DEV_FAMILY_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @MV_DEV_DISCOVERY, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %25, %21, %17, %13, %9, %1
  %32 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %33 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %32, i32 0, i32 0
  store i32 2, i32* %33, align 4
  %34 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %35 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %34, i32 0, i32 1
  store i32 1256, i32* %35, align 4
  %36 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %37 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %36, i32 0, i32 2
  store i32 65535, i32* %37, align 4
  %38 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %39 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %38, i32 0, i32 3
  store i32 65535, i32* %39, align 4
  %40 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %41 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %40, i32 0, i32 4
  store i32 -67108609, i32* %41, align 4
  %42 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %43 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %42, i32 0, i32 5
  store i32 -32769, i32* %43, align 4
  %44 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %45 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %44, i32 0, i32 6
  store i32 1073741823, i32* %45, align 4
  br label %61

46:                                               ; preds = %25
  %47 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %48 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  %49 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %50 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %49, i32 0, i32 1
  store i32 1112, i32* %50, align 4
  %51 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %52 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %51, i32 0, i32 2
  store i32 16383, i32* %52, align 4
  %53 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %54 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %53, i32 0, i32 3
  store i32 16383, i32* %54, align 4
  %55 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %56 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %55, i32 0, i32 4
  store i32 255, i32* %56, align 4
  %57 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %58 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %57, i32 0, i32 5
  store i32 1073741823, i32* %58, align 4
  %59 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %60 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %59, i32 0, i32 6
  store i32 1073741823, i32* %60, align 4
  br label %61

61:                                               ; preds = %46, %31
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @MV_DEV_88RC8180, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %67 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %66, i32 0, i32 7
  store i32 1, i32* %67, align 4
  br label %71

68:                                               ; preds = %61
  %69 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %70 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %69, i32 0, i32 7
  store i32 2, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @MV_DEV_MV78160, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %83, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @MV_DEV_MV78260, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @MV_DEV_MV78460, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79, %75, %71
  %84 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %85 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %84, i32 0, i32 8
  store i32 0, i32* %85, align 4
  br label %89

86:                                               ; preds = %79
  %87 = load %struct.mge_softc*, %struct.mge_softc** %2, align 8
  %88 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %87, i32 0, i32 8
  store i32 1, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %83
  ret void
}

declare dso_local i32 @soc_id(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
