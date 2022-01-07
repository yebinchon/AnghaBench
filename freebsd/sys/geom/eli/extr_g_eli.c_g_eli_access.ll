; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli.c_g_eli_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli.c_g_eli_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_provider = type { i64, i64, i64, %struct.g_geom* }
%struct.g_geom = type { %struct.g_eli_softc* }
%struct.g_eli_softc = type { i32 }

@G_ELI_FLAG_RO = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@G_ELI_FLAG_WOPEN = common dso_local global i32 0, align 4
@G_ELI_FLAG_RW_DETACH = common dso_local global i32 0, align 4
@g_eli_last_close = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_eli_access(%struct.g_provider* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.g_eli_softc*, align 8
  %11 = alloca %struct.g_geom*, align 8
  store %struct.g_provider* %0, %struct.g_provider** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %13 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %12, i32 0, i32 3
  %14 = load %struct.g_geom*, %struct.g_geom** %13, align 8
  store %struct.g_geom* %14, %struct.g_geom** %11, align 8
  %15 = load %struct.g_geom*, %struct.g_geom** %11, align 8
  %16 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %15, i32 0, i32 0
  %17 = load %struct.g_eli_softc*, %struct.g_eli_softc** %16, align 8
  store %struct.g_eli_softc* %17, %struct.g_eli_softc** %10, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %4
  %21 = load %struct.g_eli_softc*, %struct.g_eli_softc** %10, align 8
  %22 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @G_ELI_FLAG_RO, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @EROFS, align 4
  store i32 %28, i32* %5, align 4
  br label %80

29:                                               ; preds = %20
  %30 = load i32, i32* @G_ELI_FLAG_WOPEN, align 4
  %31 = load %struct.g_eli_softc*, %struct.g_eli_softc** %10, align 8
  %32 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  store i32 0, i32* %5, align 4
  br label %80

35:                                               ; preds = %4
  %36 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %37 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %59, label %43

43:                                               ; preds = %35
  %44 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %45 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %43
  %52 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %53 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %54, %56
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51, %43, %35
  store i32 0, i32* %5, align 4
  br label %80

60:                                               ; preds = %51
  %61 = load %struct.g_eli_softc*, %struct.g_eli_softc** %10, align 8
  %62 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @G_ELI_FLAG_RW_DETACH, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %60
  %68 = load %struct.g_eli_softc*, %struct.g_eli_softc** %10, align 8
  %69 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @G_ELI_FLAG_WOPEN, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %67, %60
  %75 = load i32, i32* @g_eli_last_close, align 4
  %76 = load %struct.g_geom*, %struct.g_geom** %11, align 8
  %77 = load i32, i32* @M_WAITOK, align 4
  %78 = call i32 @g_post_event(i32 %75, %struct.g_geom* %76, i32 %77, i32* null)
  br label %79

79:                                               ; preds = %74, %67
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %79, %59, %29, %27
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @g_post_event(i32, %struct.g_geom*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
