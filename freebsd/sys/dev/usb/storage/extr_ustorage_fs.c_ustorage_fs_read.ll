; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_ustorage_fs.c_ustorage_fs_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_ustorage_fs.c_ustorage_fs_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ustorage_fs_softc = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64, %struct.ustorage_fs_lun* }
%struct.ustorage_fs_lun = type { i32, i64, i32 }
%struct.TYPE_3__ = type { i32* }

@SC_READ_6 = common dso_local global i32 0, align 4
@SS_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@SS_LOGICAL_BLOCK_ADDRESS_OUT_OF_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ustorage_fs_softc*)* @ustorage_fs_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ustorage_fs_read(%struct.ustorage_fs_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ustorage_fs_softc*, align 8
  %4 = alloca %struct.ustorage_fs_lun*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ustorage_fs_softc* %0, %struct.ustorage_fs_softc** %3, align 8
  %8 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %10, align 8
  store %struct.ustorage_fs_lun* %11, %struct.ustorage_fs_lun** %4, align 8
  %12 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SC_READ_6, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %1
  %22 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %3, align 8
  %23 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 16
  %30 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %3, align 8
  %31 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = call i32 @get_be16(i32* %35)
  %37 = or i32 %29, %36
  store i32 %37, i32* %6, align 4
  br label %60

38:                                               ; preds = %1
  %39 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %3, align 8
  %40 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = call i32 @get_be32(i32* %44)
  store i32 %45, i32* %6, align 4
  %46 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %3, align 8
  %47 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, -25
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %38
  %56 = load i32, i32* @SS_INVALID_FIELD_IN_CDB, align 4
  %57 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %4, align 8
  %58 = getelementptr inbounds %struct.ustorage_fs_lun, %struct.ustorage_fs_lun* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  store i32 1, i32* %2, align 4
  br label %101

59:                                               ; preds = %38
  br label %60

60:                                               ; preds = %59, %21
  %61 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %3, align 8
  %62 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = ashr i32 %64, 9
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %84, label %72

72:                                               ; preds = %60
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %4, align 8
  %75 = getelementptr inbounds %struct.ustorage_fs_lun, %struct.ustorage_fs_lun* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp sgt i32 %73, %76
  br i1 %77, label %84, label %78

78:                                               ; preds = %72
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %4, align 8
  %81 = getelementptr inbounds %struct.ustorage_fs_lun, %struct.ustorage_fs_lun* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp sge i32 %79, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %78, %72, %60
  %85 = load i32, i32* @SS_LOGICAL_BLOCK_ADDRESS_OUT_OF_RANGE, align 4
  %86 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %4, align 8
  %87 = getelementptr inbounds %struct.ustorage_fs_lun, %struct.ustorage_fs_lun* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  store i32 1, i32* %2, align 4
  br label %101

88:                                               ; preds = %78
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = shl i32 %90, 9
  store i32 %91, i32* %5, align 4
  %92 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %4, align 8
  %93 = getelementptr inbounds %struct.ustorage_fs_lun, %struct.ustorage_fs_lun* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %94, %96
  %98 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %3, align 8
  %99 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  store i64 %97, i64* %100, align 8
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %88, %84, %55
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @get_be16(i32*) #1

declare dso_local i32 @get_be32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
