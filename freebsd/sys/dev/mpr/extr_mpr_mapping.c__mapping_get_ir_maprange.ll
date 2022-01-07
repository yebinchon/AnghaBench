; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_mapping.c__mapping_get_ir_maprange.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_mapping.c__mapping_get_ir_maprange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_softc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MPI2_IOCPAGE8_IRFLAGS_MASK_VOLUME_MAPPING_MODE = common dso_local global i32 0, align 4
@MPI2_IOCPAGE8_IRFLAGS_LOW_VOLUME_MAPPING = common dso_local global i32 0, align 4
@MPI2_IOCPAGE8_FLAGS_RESERVED_TARGETID_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpr_softc*, i32*, i32*)* @_mapping_get_ir_maprange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_mapping_get_ir_maprange(%struct.mpr_softc* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.mpr_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mpr_softc* %0, %struct.mpr_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %10 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @le16toh(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %15 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le16toh(i32 %17)
  %19 = load i32, i32* @MPI2_IOCPAGE8_IRFLAGS_MASK_VOLUME_MAPPING_MODE, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @MPI2_IOCPAGE8_IRFLAGS_LOW_VOLUME_MAPPING, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %3
  %25 = load i32*, i32** %5, align 8
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @MPI2_IOCPAGE8_FLAGS_RESERVED_TARGETID_0, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32*, i32** %5, align 8
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %30, %24
  br label %42

33:                                               ; preds = %3
  %34 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %35 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %38 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %36, %39
  %41 = load i32*, i32** %5, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %33, %32
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %46 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %44, %47
  %49 = sub nsw i32 %48, 1
  %50 = load i32*, i32** %6, align 8
  store i32 %49, i32* %50, align 4
  ret void
}

declare dso_local i32 @le16toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
