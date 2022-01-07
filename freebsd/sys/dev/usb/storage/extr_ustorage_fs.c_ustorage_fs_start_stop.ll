; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_ustorage_fs.c_ustorage_fs_start_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_ustorage_fs.c_ustorage_fs_start_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ustorage_fs_softc = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { %struct.ustorage_fs_lun* }
%struct.ustorage_fs_lun = type { i32, i32 }

@SS_INVALID_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ustorage_fs_softc*)* @ustorage_fs_start_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ustorage_fs_start_stop(%struct.ustorage_fs_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ustorage_fs_softc*, align 8
  %4 = alloca %struct.ustorage_fs_lun*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ustorage_fs_softc* %0, %struct.ustorage_fs_softc** %3, align 8
  %8 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %10, align 8
  store %struct.ustorage_fs_lun* %11, %struct.ustorage_fs_lun** %4, align 8
  %12 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %4, align 8
  %13 = getelementptr inbounds %struct.ustorage_fs_lun, %struct.ustorage_fs_lun* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @SS_INVALID_COMMAND, align 4
  %18 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %4, align 8
  %19 = getelementptr inbounds %struct.ustorage_fs_lun, %struct.ustorage_fs_lun* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  store i32 1, i32* %2, align 4
  br label %55

20:                                               ; preds = %1
  %21 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 1
  store i32 %28, i32* %7, align 4
  %29 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %3, align 8
  %30 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 2
  store i32 %36, i32* %5, align 4
  %37 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %3, align 8
  %38 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 1
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %20
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50, %47, %20
  br label %54

54:                                               ; preds = %53, %50
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %16
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
