; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_ustorage_fs.c_ustorage_fs_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_ustorage_fs.c_ustorage_fs_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ustorage_fs_softc = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64, %struct.ustorage_fs_lun* }
%struct.ustorage_fs_lun = type { i32, i64, i32, i64 }
%struct.TYPE_3__ = type { i32* }

@SS_WRITE_PROTECTED = common dso_local global i32 0, align 4
@SC_WRITE_6 = common dso_local global i32 0, align 4
@SS_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@SS_LOGICAL_BLOCK_ADDRESS_OUT_OF_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ustorage_fs_softc*)* @ustorage_fs_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ustorage_fs_write(%struct.ustorage_fs_softc* %0) #0 {
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
  %12 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %4, align 8
  %13 = getelementptr inbounds %struct.ustorage_fs_lun, %struct.ustorage_fs_lun* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @SS_WRITE_PROTECTED, align 4
  %18 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %4, align 8
  %19 = getelementptr inbounds %struct.ustorage_fs_lun, %struct.ustorage_fs_lun* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  store i32 1, i32* %2, align 4
  br label %121

20:                                               ; preds = %1
  %21 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SC_WRITE_6, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %20
  %31 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %3, align 8
  %32 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 16
  %39 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %3, align 8
  %40 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = call i32 @get_be16(i32* %44)
  %46 = or i32 %38, %45
  store i32 %46, i32* %6, align 4
  br label %80

47:                                               ; preds = %20
  %48 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %3, align 8
  %49 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = call i32 @get_be32(i32* %53)
  store i32 %54, i32* %6, align 4
  %55 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %3, align 8
  %56 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, -25
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %47
  %65 = load i32, i32* @SS_INVALID_FIELD_IN_CDB, align 4
  %66 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %4, align 8
  %67 = getelementptr inbounds %struct.ustorage_fs_lun, %struct.ustorage_fs_lun* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  store i32 1, i32* %2, align 4
  br label %121

68:                                               ; preds = %47
  %69 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %3, align 8
  %70 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78, %68
  br label %80

80:                                               ; preds = %79, %30
  %81 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %3, align 8
  %82 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = ashr i32 %84, 9
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %104, label %92

92:                                               ; preds = %80
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %4, align 8
  %95 = getelementptr inbounds %struct.ustorage_fs_lun, %struct.ustorage_fs_lun* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp sgt i32 %93, %96
  br i1 %97, label %104, label %98

98:                                               ; preds = %92
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %4, align 8
  %101 = getelementptr inbounds %struct.ustorage_fs_lun, %struct.ustorage_fs_lun* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp sge i32 %99, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %98, %92, %80
  %105 = load i32, i32* @SS_LOGICAL_BLOCK_ADDRESS_OUT_OF_RANGE, align 4
  %106 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %4, align 8
  %107 = getelementptr inbounds %struct.ustorage_fs_lun, %struct.ustorage_fs_lun* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  store i32 1, i32* %2, align 4
  br label %121

108:                                              ; preds = %98
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = shl i32 %110, 9
  store i32 %111, i32* %5, align 4
  %112 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %4, align 8
  %113 = getelementptr inbounds %struct.ustorage_fs_lun, %struct.ustorage_fs_lun* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %114, %116
  %118 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %3, align 8
  %119 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  store i64 %117, i64* %120, align 8
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %108, %104, %64, %16
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @get_be16(i32*) #1

declare dso_local i32 @get_be32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
