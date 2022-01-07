; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli_privacy.c_g_eli_crypto_write_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli_privacy.c_g_eli_crypto_write_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptop = type { i64, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.g_eli_softc = type { i32 }
%struct.g_geom = type { i32, %struct.g_eli_softc* }
%struct.g_consumer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.g_geom* }
%struct.bio = type { i32, i32, i64, %struct.TYPE_4__*, i32, i32*, i32*, %struct.bio* }

@EAGAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Crypto WRITE request done (%d/%d).\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Crypto WRITE request failed (%d/%d) error=%d.\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Crypto WRITE request failed (error=%d).\00", align 1
@M_ELI = common dso_local global i32 0, align 4
@g_eli_write_done = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Sending request.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cryptop*)* @g_eli_crypto_write_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_eli_crypto_write_done(%struct.cryptop* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cryptop*, align 8
  %4 = alloca %struct.g_eli_softc*, align 8
  %5 = alloca %struct.g_geom*, align 8
  %6 = alloca %struct.g_consumer*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.bio*, align 8
  store %struct.cryptop* %0, %struct.cryptop** %3, align 8
  %9 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %10 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @EAGAIN, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %16 = call i64 @g_eli_crypto_rerun(%struct.cryptop* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %146

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19, %1
  %21 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %22 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.bio*
  store %struct.bio* %24, %struct.bio** %7, align 8
  %25 = load %struct.bio*, %struct.bio** %7, align 8
  %26 = getelementptr inbounds %struct.bio, %struct.bio* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  %29 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %30 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %20
  %34 = load %struct.bio*, %struct.bio** %7, align 8
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.bio*, %struct.bio** %7, align 8
  %38 = getelementptr inbounds %struct.bio, %struct.bio* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i8*, i32, i32, ...) @G_ELI_DEBUG(i32 3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %39)
  br label %63

41:                                               ; preds = %20
  %42 = load %struct.bio*, %struct.bio** %7, align 8
  %43 = getelementptr inbounds %struct.bio, %struct.bio* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.bio*, %struct.bio** %7, align 8
  %46 = getelementptr inbounds %struct.bio, %struct.bio* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %49 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 (i32, i8*, i32, i32, ...) @G_ELI_DEBUG(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %47, i64 %50)
  %52 = load %struct.bio*, %struct.bio** %7, align 8
  %53 = getelementptr inbounds %struct.bio, %struct.bio* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %41
  %57 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %58 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.bio*, %struct.bio** %7, align 8
  %61 = getelementptr inbounds %struct.bio, %struct.bio* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %56, %41
  br label %63

63:                                               ; preds = %62, %33
  %64 = load %struct.bio*, %struct.bio** %7, align 8
  %65 = getelementptr inbounds %struct.bio, %struct.bio* %64, i32 0, i32 3
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.g_geom*, %struct.g_geom** %67, align 8
  store %struct.g_geom* %68, %struct.g_geom** %5, align 8
  %69 = load %struct.g_geom*, %struct.g_geom** %5, align 8
  %70 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %69, i32 0, i32 1
  %71 = load %struct.g_eli_softc*, %struct.g_eli_softc** %70, align 8
  store %struct.g_eli_softc* %71, %struct.g_eli_softc** %4, align 8
  %72 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %73 = load %struct.cryptop*, %struct.cryptop** %3, align 8
  %74 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @g_eli_key_drop(%struct.g_eli_softc* %72, i32 %77)
  %79 = load %struct.bio*, %struct.bio** %7, align 8
  %80 = getelementptr inbounds %struct.bio, %struct.bio* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.bio*, %struct.bio** %7, align 8
  %83 = getelementptr inbounds %struct.bio, %struct.bio* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %146

87:                                               ; preds = %63
  %88 = load %struct.bio*, %struct.bio** %7, align 8
  %89 = getelementptr inbounds %struct.bio, %struct.bio* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  %90 = load %struct.bio*, %struct.bio** %7, align 8
  %91 = getelementptr inbounds %struct.bio, %struct.bio* %90, i32 0, i32 1
  store i32 1, i32* %91, align 4
  %92 = load %struct.bio*, %struct.bio** %7, align 8
  %93 = getelementptr inbounds %struct.bio, %struct.bio* %92, i32 0, i32 7
  %94 = load %struct.bio*, %struct.bio** %93, align 8
  store %struct.bio* %94, %struct.bio** %8, align 8
  %95 = load %struct.bio*, %struct.bio** %7, align 8
  %96 = getelementptr inbounds %struct.bio, %struct.bio* %95, i32 0, i32 7
  store %struct.bio* null, %struct.bio** %96, align 8
  %97 = load %struct.bio*, %struct.bio** %7, align 8
  %98 = getelementptr inbounds %struct.bio, %struct.bio* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %124

101:                                              ; preds = %87
  %102 = load %struct.bio*, %struct.bio** %7, align 8
  %103 = load %struct.bio*, %struct.bio** %7, align 8
  %104 = getelementptr inbounds %struct.bio, %struct.bio* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = call i32 (i32, %struct.bio*, i8*, ...) @G_ELI_LOGREQ(i32 0, %struct.bio* %102, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %105)
  %107 = load %struct.bio*, %struct.bio** %7, align 8
  %108 = getelementptr inbounds %struct.bio, %struct.bio* %107, i32 0, i32 5
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* @M_ELI, align 4
  %111 = call i32 @free(i32* %109, i32 %110)
  %112 = load %struct.bio*, %struct.bio** %7, align 8
  %113 = getelementptr inbounds %struct.bio, %struct.bio* %112, i32 0, i32 5
  store i32* null, i32** %113, align 8
  %114 = load %struct.bio*, %struct.bio** %8, align 8
  %115 = call i32 @g_destroy_bio(%struct.bio* %114)
  %116 = load %struct.bio*, %struct.bio** %7, align 8
  %117 = load %struct.bio*, %struct.bio** %7, align 8
  %118 = getelementptr inbounds %struct.bio, %struct.bio* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @g_io_deliver(%struct.bio* %116, i64 %119)
  %121 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %122 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %121, i32 0, i32 0
  %123 = call i32 @atomic_subtract_int(i32* %122, i32 1)
  store i32 0, i32* %2, align 4
  br label %146

124:                                              ; preds = %87
  %125 = load %struct.bio*, %struct.bio** %7, align 8
  %126 = getelementptr inbounds %struct.bio, %struct.bio* %125, i32 0, i32 5
  %127 = load i32*, i32** %126, align 8
  %128 = load %struct.bio*, %struct.bio** %8, align 8
  %129 = getelementptr inbounds %struct.bio, %struct.bio* %128, i32 0, i32 6
  store i32* %127, i32** %129, align 8
  %130 = load i32, i32* @g_eli_write_done, align 4
  %131 = load %struct.bio*, %struct.bio** %8, align 8
  %132 = getelementptr inbounds %struct.bio, %struct.bio* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 8
  %133 = load %struct.g_geom*, %struct.g_geom** %5, align 8
  %134 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %133, i32 0, i32 0
  %135 = call %struct.g_consumer* @LIST_FIRST(i32* %134)
  store %struct.g_consumer* %135, %struct.g_consumer** %6, align 8
  %136 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %137 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %136, i32 0, i32 0
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = load %struct.bio*, %struct.bio** %8, align 8
  %140 = getelementptr inbounds %struct.bio, %struct.bio* %139, i32 0, i32 3
  store %struct.TYPE_4__* %138, %struct.TYPE_4__** %140, align 8
  %141 = load %struct.bio*, %struct.bio** %8, align 8
  %142 = call i32 (i32, %struct.bio*, i8*, ...) @G_ELI_LOGREQ(i32 2, %struct.bio* %141, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %143 = load %struct.bio*, %struct.bio** %8, align 8
  %144 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %145 = call i32 @g_io_request(%struct.bio* %143, %struct.g_consumer* %144)
  store i32 0, i32* %2, align 4
  br label %146

146:                                              ; preds = %124, %101, %86, %18
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i64 @g_eli_crypto_rerun(%struct.cryptop*) #1

declare dso_local i32 @G_ELI_DEBUG(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @g_eli_key_drop(%struct.g_eli_softc*, i32) #1

declare dso_local i32 @G_ELI_LOGREQ(i32, %struct.bio*, i8*, ...) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i64) #1

declare dso_local i32 @atomic_subtract_int(i32*, i32) #1

declare dso_local %struct.g_consumer* @LIST_FIRST(i32*) #1

declare dso_local i32 @g_io_request(%struct.bio*, %struct.g_consumer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
