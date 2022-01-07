; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_apply_fixup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_apply_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { %struct.dc_mediainfo* }
%struct.dc_mediainfo = type { i32, i32*, i32, i32*, i32, %struct.dc_mediainfo* }

@DC_WATCHDOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_softc*, i32)* @dc_apply_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_apply_fixup(%struct.dc_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.dc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dc_mediainfo*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dc_softc* %0, %struct.dc_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %10 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %9, i32 0, i32 0
  %11 = load %struct.dc_mediainfo*, %struct.dc_mediainfo** %10, align 8
  store %struct.dc_mediainfo* %11, %struct.dc_mediainfo** %5, align 8
  br label %12

12:                                               ; preds = %22, %2
  %13 = load %struct.dc_mediainfo*, %struct.dc_mediainfo** %5, align 8
  %14 = icmp ne %struct.dc_mediainfo* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = load %struct.dc_mediainfo*, %struct.dc_mediainfo** %5, align 8
  %17 = getelementptr inbounds %struct.dc_mediainfo, %struct.dc_mediainfo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %26

22:                                               ; preds = %15
  %23 = load %struct.dc_mediainfo*, %struct.dc_mediainfo** %5, align 8
  %24 = getelementptr inbounds %struct.dc_mediainfo, %struct.dc_mediainfo* %23, i32 0, i32 5
  %25 = load %struct.dc_mediainfo*, %struct.dc_mediainfo** %24, align 8
  store %struct.dc_mediainfo* %25, %struct.dc_mediainfo** %5, align 8
  br label %12

26:                                               ; preds = %21, %12
  %27 = load %struct.dc_mediainfo*, %struct.dc_mediainfo** %5, align 8
  %28 = icmp eq %struct.dc_mediainfo* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %88

30:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  %31 = load %struct.dc_mediainfo*, %struct.dc_mediainfo** %5, align 8
  %32 = getelementptr inbounds %struct.dc_mediainfo, %struct.dc_mediainfo* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %6, align 8
  br label %34

34:                                               ; preds = %54, %30
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.dc_mediainfo*, %struct.dc_mediainfo** %5, align 8
  %37 = getelementptr inbounds %struct.dc_mediainfo, %struct.dc_mediainfo* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %34
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 8
  %48 = or i32 %43, %47
  %49 = shl i32 %48, 16
  store i32 %49, i32* %8, align 4
  %50 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %51 = load i32, i32* @DC_WATCHDOG, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @CSR_WRITE_4(%struct.dc_softc* %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %40
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  store i32* %58, i32** %6, align 8
  br label %34

59:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  %60 = load %struct.dc_mediainfo*, %struct.dc_mediainfo** %5, align 8
  %61 = getelementptr inbounds %struct.dc_mediainfo, %struct.dc_mediainfo* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %6, align 8
  br label %63

63:                                               ; preds = %83, %59
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.dc_mediainfo*, %struct.dc_mediainfo** %5, align 8
  %66 = getelementptr inbounds %struct.dc_mediainfo, %struct.dc_mediainfo* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %63
  %70 = load i32*, i32** %6, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %6, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 8
  %77 = or i32 %72, %76
  %78 = shl i32 %77, 16
  store i32 %78, i32* %8, align 4
  %79 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %80 = load i32, i32* @DC_WATCHDOG, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @CSR_WRITE_4(%struct.dc_softc* %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %69
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  %86 = load i32*, i32** %6, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  store i32* %87, i32** %6, align 8
  br label %63

88:                                               ; preds = %29, %63
  ret void
}

declare dso_local i32 @CSR_WRITE_4(%struct.dc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
