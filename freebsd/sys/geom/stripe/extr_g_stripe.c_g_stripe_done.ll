; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/stripe/extr_g_stripe.c_g_stripe_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/stripe/extr_g_stripe.c_g_stripe_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, i64, i64, i64, i32*, i64, i32*, i32*, i32, i32, %struct.TYPE_4__*, %struct.bio* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.g_stripe_softc* }
%struct.g_stripe_softc = type { i32 }

@BIO_READ = common dso_local global i64 0, align 8
@g_stripe_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_stripe_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_stripe_done(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.g_stripe_softc*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 11
  %7 = load %struct.bio*, %struct.bio** %6, align 8
  store %struct.bio* %7, %struct.bio** %4, align 8
  %8 = load %struct.bio*, %struct.bio** %4, align 8
  %9 = getelementptr inbounds %struct.bio, %struct.bio* %8, i32 0, i32 10
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %13, align 8
  store %struct.g_stripe_softc* %14, %struct.g_stripe_softc** %3, align 8
  %15 = load %struct.bio*, %struct.bio** %2, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BIO_READ, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %1
  %21 = load %struct.bio*, %struct.bio** %2, align 8
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %21, i32 0, i32 6
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %47

25:                                               ; preds = %20
  %26 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %3, align 8
  %27 = load %struct.bio*, %struct.bio** %2, align 8
  %28 = getelementptr inbounds %struct.bio, %struct.bio* %27, i32 0, i32 7
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.bio*, %struct.bio** %2, align 8
  %31 = getelementptr inbounds %struct.bio, %struct.bio* %30, i32 0, i32 6
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.bio*, %struct.bio** %2, align 8
  %34 = getelementptr inbounds %struct.bio, %struct.bio* %33, i32 0, i32 9
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.bio*, %struct.bio** %2, align 8
  %37 = getelementptr inbounds %struct.bio, %struct.bio* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @g_stripe_copy(%struct.g_stripe_softc* %26, i32* %29, i32* %32, i32 %35, i32 %38, i32 1)
  %40 = load %struct.bio*, %struct.bio** %2, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 6
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.bio*, %struct.bio** %2, align 8
  %44 = getelementptr inbounds %struct.bio, %struct.bio* %43, i32 0, i32 7
  store i32* %42, i32** %44, align 8
  %45 = load %struct.bio*, %struct.bio** %2, align 8
  %46 = getelementptr inbounds %struct.bio, %struct.bio* %45, i32 0, i32 6
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %25, %20, %1
  %48 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %3, align 8
  %49 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %48, i32 0, i32 0
  %50 = call i32 @mtx_lock(i32* %49)
  %51 = load %struct.bio*, %struct.bio** %4, align 8
  %52 = getelementptr inbounds %struct.bio, %struct.bio* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = load %struct.bio*, %struct.bio** %2, align 8
  %57 = getelementptr inbounds %struct.bio, %struct.bio* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.bio*, %struct.bio** %4, align 8
  %60 = getelementptr inbounds %struct.bio, %struct.bio* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %55, %47
  %62 = load %struct.bio*, %struct.bio** %2, align 8
  %63 = getelementptr inbounds %struct.bio, %struct.bio* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.bio*, %struct.bio** %4, align 8
  %66 = getelementptr inbounds %struct.bio, %struct.bio* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, %64
  store i64 %68, i64* %66, align 8
  %69 = load %struct.bio*, %struct.bio** %4, align 8
  %70 = getelementptr inbounds %struct.bio, %struct.bio* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %70, align 8
  %73 = load %struct.bio*, %struct.bio** %4, align 8
  %74 = getelementptr inbounds %struct.bio, %struct.bio* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.bio*, %struct.bio** %4, align 8
  %77 = getelementptr inbounds %struct.bio, %struct.bio* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %75, %78
  br i1 %79, label %80, label %100

80:                                               ; preds = %61
  %81 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %3, align 8
  %82 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %81, i32 0, i32 0
  %83 = call i32 @mtx_unlock(i32* %82)
  %84 = load %struct.bio*, %struct.bio** %4, align 8
  %85 = getelementptr inbounds %struct.bio, %struct.bio* %84, i32 0, i32 4
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %80
  %89 = load i32, i32* @g_stripe_zone, align 4
  %90 = load %struct.bio*, %struct.bio** %4, align 8
  %91 = getelementptr inbounds %struct.bio, %struct.bio* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @uma_zfree(i32 %89, i32* %92)
  br label %94

94:                                               ; preds = %88, %80
  %95 = load %struct.bio*, %struct.bio** %4, align 8
  %96 = load %struct.bio*, %struct.bio** %4, align 8
  %97 = getelementptr inbounds %struct.bio, %struct.bio* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @g_io_deliver(%struct.bio* %95, i64 %98)
  br label %104

100:                                              ; preds = %61
  %101 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %3, align 8
  %102 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %101, i32 0, i32 0
  %103 = call i32 @mtx_unlock(i32* %102)
  br label %104

104:                                              ; preds = %100, %94
  %105 = load %struct.bio*, %struct.bio** %2, align 8
  %106 = call i32 @g_destroy_bio(%struct.bio* %105)
  ret void
}

declare dso_local i32 @g_stripe_copy(%struct.g_stripe_softc*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @uma_zfree(i32, i32*) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i64) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
