; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/concat/extr_g_concat.c_g_concat_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/concat/extr_g_concat.c_g_concat_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, i64, i64, i64, %struct.TYPE_4__*, %struct.bio* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.g_concat_softc* }
%struct.g_concat_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_concat_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_concat_done(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.g_concat_softc*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 5
  %7 = load %struct.bio*, %struct.bio** %6, align 8
  store %struct.bio* %7, %struct.bio** %4, align 8
  %8 = load %struct.bio*, %struct.bio** %4, align 8
  %9 = getelementptr inbounds %struct.bio, %struct.bio* %8, i32 0, i32 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.g_concat_softc*, %struct.g_concat_softc** %13, align 8
  store %struct.g_concat_softc* %14, %struct.g_concat_softc** %3, align 8
  %15 = load %struct.g_concat_softc*, %struct.g_concat_softc** %3, align 8
  %16 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %15, i32 0, i32 0
  %17 = call i32 @mtx_lock(i32* %16)
  %18 = load %struct.bio*, %struct.bio** %4, align 8
  %19 = getelementptr inbounds %struct.bio, %struct.bio* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.bio*, %struct.bio** %2, align 8
  %24 = getelementptr inbounds %struct.bio, %struct.bio* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.bio*, %struct.bio** %4, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %22, %1
  %29 = load %struct.bio*, %struct.bio** %2, align 8
  %30 = getelementptr inbounds %struct.bio, %struct.bio* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.bio*, %struct.bio** %4, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, %31
  store i64 %35, i64* %33, align 8
  %36 = load %struct.bio*, %struct.bio** %4, align 8
  %37 = getelementptr inbounds %struct.bio, %struct.bio* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %37, align 8
  %40 = load %struct.bio*, %struct.bio** %4, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.bio*, %struct.bio** %4, align 8
  %44 = getelementptr inbounds %struct.bio, %struct.bio* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %28
  %48 = load %struct.g_concat_softc*, %struct.g_concat_softc** %3, align 8
  %49 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %48, i32 0, i32 0
  %50 = call i32 @mtx_unlock(i32* %49)
  %51 = load %struct.bio*, %struct.bio** %4, align 8
  %52 = load %struct.bio*, %struct.bio** %4, align 8
  %53 = getelementptr inbounds %struct.bio, %struct.bio* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @g_io_deliver(%struct.bio* %51, i64 %54)
  br label %60

56:                                               ; preds = %28
  %57 = load %struct.g_concat_softc*, %struct.g_concat_softc** %3, align 8
  %58 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %57, i32 0, i32 0
  %59 = call i32 @mtx_unlock(i32* %58)
  br label %60

60:                                               ; preds = %56, %47
  %61 = load %struct.bio*, %struct.bio** %2, align 8
  %62 = call i32 @g_destroy_bio(%struct.bio* %61)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i64) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
