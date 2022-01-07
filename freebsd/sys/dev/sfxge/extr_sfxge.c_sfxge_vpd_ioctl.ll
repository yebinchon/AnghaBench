; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge.c_sfxge_vpd_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge.c_sfxge_vpd_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfxge_softc*, %struct.TYPE_10__*)* @sfxge_vpd_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_vpd_ioctl(%struct.sfxge_softc* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sfxge_softc*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__, align 4
  %7 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %154 [
    i32 129, label %13
    i32 128, label %73
  ]

13:                                               ; preds = %2
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 3
  store i32 %18, i32* %19, align 4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  %26 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %27 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %30 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %33 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @efx_vpd_get(i32 %28, i32 %31, i32 %34, %struct.TYPE_11__* %6)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %13
  br label %156

39:                                               ; preds = %13
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @MIN(i32 %44, i32 %46)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  store i32 %47, i32* %51, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %39
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @copyout(i32 %60, i32 %65, i32 %70)
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %58, %39
  br label %156

73:                                               ; preds = %2
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp ugt i64 %79, 4
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i32, i32* @EINVAL, align 4
  store i32 %82, i32* %3, align 4
  br label %158

83:                                               ; preds = %73
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 3
  store i32 %88, i32* %89, align 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  store i32 %94, i32* %95, align 4
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  store i32 %100, i32* %101, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @copyin(i32 %106, i32 %108, i32 %110)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %83
  br label %156

115:                                              ; preds = %83
  %116 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %117 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %120 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %123 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @efx_vpd_set(i32 %118, i32 %121, i32 %124, %struct.TYPE_11__* %6)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %115
  br label %156

129:                                              ; preds = %115
  %130 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %131 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %134 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %137 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @efx_vpd_verify(i32 %132, i32 %135, i32 %138)
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %129
  br label %156

143:                                              ; preds = %129
  %144 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %145 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %148 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %151 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @efx_vpd_write(i32 %146, i32 %149, i32 %152)
  store i32 %153, i32* %7, align 4
  br label %156

154:                                              ; preds = %2
  %155 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %155, i32* %7, align 4
  br label %156

156:                                              ; preds = %154, %143, %142, %128, %114, %72, %38
  %157 = load i32, i32* %7, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %156, %81
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @efx_vpd_get(i32, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @copyout(i32, i32, i32) #1

declare dso_local i32 @copyin(i32, i32, i32) #1

declare dso_local i32 @efx_vpd_set(i32, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @efx_vpd_verify(i32, i32, i32) #1

declare dso_local i32 @efx_vpd_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
