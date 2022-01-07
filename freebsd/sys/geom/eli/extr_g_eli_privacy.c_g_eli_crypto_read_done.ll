; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli_privacy.c_g_eli_crypto_read_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli_privacy.c_g_eli_crypto_read_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptop = type { i64, %struct.TYPE_6__*, i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.g_eli_softc = type { i32 }
%struct.bio = type { i64, i64, i64, i64, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.g_eli_softc* }

@EAGAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Crypto READ request done (%d/%d).\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Crypto READ request failed (%d/%d) error=%d.\00", align 1
@M_ELI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Crypto READ request failed (error=%d).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cryptop*)* @g_eli_crypto_read_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_eli_crypto_read_done(%struct.cryptop* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cryptop*, align 8
  %4 = alloca %struct.g_eli_softc*, align 8
  %5 = alloca %struct.bio*, align 8
  store %struct.cryptop* %0, %struct.cryptop** %3, align 8
  %6 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %7 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @EAGAIN, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %13 = call i64 @g_eli_crypto_rerun(%struct.cryptop* %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %127

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %16, %1
  %18 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %19 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.bio*
  store %struct.bio* %21, %struct.bio** %5, align 8
  %22 = load %struct.bio*, %struct.bio** %5, align 8
  %23 = getelementptr inbounds %struct.bio, %struct.bio* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %23, align 8
  %26 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %27 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %17
  %31 = load %struct.bio*, %struct.bio** %5, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.bio*, %struct.bio** %5, align 8
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 (i32, i8*, i64, i64, ...) @G_ELI_DEBUG(i32 3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %33, i64 %36)
  %38 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %39 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.bio*, %struct.bio** %5, align 8
  %42 = getelementptr inbounds %struct.bio, %struct.bio* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, %40
  store i64 %44, i64* %42, align 8
  br label %67

45:                                               ; preds = %17
  %46 = load %struct.bio*, %struct.bio** %5, align 8
  %47 = getelementptr inbounds %struct.bio, %struct.bio* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.bio*, %struct.bio** %5, align 8
  %50 = getelementptr inbounds %struct.bio, %struct.bio* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %53 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 (i32, i8*, i64, i64, ...) @G_ELI_DEBUG(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %48, i64 %51, i64 %54)
  %56 = load %struct.bio*, %struct.bio** %5, align 8
  %57 = getelementptr inbounds %struct.bio, %struct.bio* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %45
  %61 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %62 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.bio*, %struct.bio** %5, align 8
  %65 = getelementptr inbounds %struct.bio, %struct.bio* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %60, %45
  br label %67

67:                                               ; preds = %66, %30
  %68 = load %struct.bio*, %struct.bio** %5, align 8
  %69 = getelementptr inbounds %struct.bio, %struct.bio* %68, i32 0, i32 5
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load %struct.g_eli_softc*, %struct.g_eli_softc** %73, align 8
  store %struct.g_eli_softc* %74, %struct.g_eli_softc** %4, align 8
  %75 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %76 = icmp ne %struct.g_eli_softc* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %67
  %78 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %79 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %80 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @g_eli_key_drop(%struct.g_eli_softc* %78, i32 %83)
  br label %85

85:                                               ; preds = %77, %67
  %86 = load %struct.bio*, %struct.bio** %5, align 8
  %87 = getelementptr inbounds %struct.bio, %struct.bio* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.bio*, %struct.bio** %5, align 8
  %90 = getelementptr inbounds %struct.bio, %struct.bio* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp slt i64 %88, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  store i32 0, i32* %2, align 4
  br label %127

94:                                               ; preds = %85
  %95 = load %struct.bio*, %struct.bio** %5, align 8
  %96 = getelementptr inbounds %struct.bio, %struct.bio* %95, i32 0, i32 4
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* @M_ELI, align 4
  %99 = call i32 @free(i32* %97, i32 %98)
  %100 = load %struct.bio*, %struct.bio** %5, align 8
  %101 = getelementptr inbounds %struct.bio, %struct.bio* %100, i32 0, i32 4
  store i32* null, i32** %101, align 8
  %102 = load %struct.bio*, %struct.bio** %5, align 8
  %103 = getelementptr inbounds %struct.bio, %struct.bio* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %94
  %107 = load %struct.bio*, %struct.bio** %5, align 8
  %108 = load %struct.bio*, %struct.bio** %5, align 8
  %109 = getelementptr inbounds %struct.bio, %struct.bio* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @G_ELI_LOGREQ(i32 0, %struct.bio* %107, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %110)
  %112 = load %struct.bio*, %struct.bio** %5, align 8
  %113 = getelementptr inbounds %struct.bio, %struct.bio* %112, i32 0, i32 3
  store i64 0, i64* %113, align 8
  br label %114

114:                                              ; preds = %106, %94
  %115 = load %struct.bio*, %struct.bio** %5, align 8
  %116 = load %struct.bio*, %struct.bio** %5, align 8
  %117 = getelementptr inbounds %struct.bio, %struct.bio* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @g_io_deliver(%struct.bio* %115, i64 %118)
  %120 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %121 = icmp ne %struct.g_eli_softc* %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %114
  %123 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %124 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %123, i32 0, i32 0
  %125 = call i32 @atomic_subtract_int(i32* %124, i32 1)
  br label %126

126:                                              ; preds = %122, %114
  store i32 0, i32* %2, align 4
  br label %127

127:                                              ; preds = %126, %93, %15
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i64 @g_eli_crypto_rerun(%struct.cryptop*) #1

declare dso_local i32 @G_ELI_DEBUG(i32, i8*, i64, i64, ...) #1

declare dso_local i32 @g_eli_key_drop(%struct.g_eli_softc*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @G_ELI_LOGREQ(i32, %struct.bio*, i8*, i64) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i64) #1

declare dso_local i32 @atomic_subtract_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
