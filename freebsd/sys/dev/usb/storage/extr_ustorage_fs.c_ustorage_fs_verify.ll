; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_ustorage_fs.c_ustorage_fs_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_ustorage_fs.c_ustorage_fs_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ustorage_fs_softc = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { %struct.ustorage_fs_lun* }
%struct.ustorage_fs_lun = type { i64, i32 }

@SS_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@SS_LOGICAL_BLOCK_ADDRESS_OUT_OF_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ustorage_fs_softc*)* @ustorage_fs_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ustorage_fs_verify(%struct.ustorage_fs_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ustorage_fs_softc*, align 8
  %4 = alloca %struct.ustorage_fs_lun*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ustorage_fs_softc* %0, %struct.ustorage_fs_softc** %3, align 8
  %9 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %11, align 8
  store %struct.ustorage_fs_lun* %12, %struct.ustorage_fs_lun** %4, align 8
  %13 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %3, align 8
  %14 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = call i64 @get_be32(i32* %18)
  store i64 %19, i64* %5, align 8
  %20 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %3, align 8
  %21 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, -17
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load i32, i32* @SS_INVALID_FIELD_IN_CDB, align 4
  %31 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %4, align 8
  %32 = getelementptr inbounds %struct.ustorage_fs_lun, %struct.ustorage_fs_lun* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  store i32 1, i32* %2, align 4
  br label %79

33:                                               ; preds = %1
  %34 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %3, align 8
  %35 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 7
  %40 = call i64 @get_be16(i32* %39)
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %76

44:                                               ; preds = %33
  %45 = load i64, i64* %6, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = shl i32 %47, 9
  store i32 %48, i32* %8, align 4
  %49 = load i64, i64* %5, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = shl i32 %51, 9
  store i32 %52, i32* %7, align 4
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = add nsw i64 %54, %53
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %5, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %71, label %59

59:                                               ; preds = %44
  %60 = load i64, i64* %6, align 8
  %61 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %4, align 8
  %62 = getelementptr inbounds %struct.ustorage_fs_lun, %struct.ustorage_fs_lun* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %60, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load i64, i64* %5, align 8
  %67 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %4, align 8
  %68 = getelementptr inbounds %struct.ustorage_fs_lun, %struct.ustorage_fs_lun* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp sge i64 %66, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65, %59, %44
  %72 = load i32, i32* @SS_LOGICAL_BLOCK_ADDRESS_OUT_OF_RANGE, align 4
  %73 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %4, align 8
  %74 = getelementptr inbounds %struct.ustorage_fs_lun, %struct.ustorage_fs_lun* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  store i32 1, i32* %2, align 4
  br label %79

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75, %43
  %77 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %3, align 8
  %78 = call i32 @ustorage_fs_min_len(%struct.ustorage_fs_softc* %77, i32 0, i32 -1)
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %76, %71, %29
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i64 @get_be32(i32*) #1

declare dso_local i64 @get_be16(i32*) #1

declare dso_local i32 @ustorage_fs_min_len(%struct.ustorage_fs_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
