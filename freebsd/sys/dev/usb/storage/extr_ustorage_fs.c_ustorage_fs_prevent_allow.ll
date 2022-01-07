; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_ustorage_fs.c_ustorage_fs_prevent_allow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_ustorage_fs.c_ustorage_fs_prevent_allow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ustorage_fs_softc = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { %struct.ustorage_fs_lun* }
%struct.ustorage_fs_lun = type { i32, i32, i32 }

@SS_INVALID_COMMAND = common dso_local global i32 0, align 4
@SS_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ustorage_fs_softc*)* @ustorage_fs_prevent_allow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ustorage_fs_prevent_allow(%struct.ustorage_fs_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ustorage_fs_softc*, align 8
  %4 = alloca %struct.ustorage_fs_lun*, align 8
  %5 = alloca i32, align 4
  store %struct.ustorage_fs_softc* %0, %struct.ustorage_fs_softc** %3, align 8
  %6 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %8, align 8
  store %struct.ustorage_fs_lun* %9, %struct.ustorage_fs_lun** %4, align 8
  %10 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %4, align 8
  %11 = getelementptr inbounds %struct.ustorage_fs_lun, %struct.ustorage_fs_lun* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @SS_INVALID_COMMAND, align 4
  %16 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %4, align 8
  %17 = getelementptr inbounds %struct.ustorage_fs_lun, %struct.ustorage_fs_lun* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  store i32 1, i32* %2, align 4
  br label %53

18:                                               ; preds = %1
  %19 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %3, align 8
  %20 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 4
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 1
  store i32 %26, i32* %5, align 4
  %27 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %3, align 8
  %28 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 4
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, -2
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %18
  %37 = load i32, i32* @SS_INVALID_FIELD_IN_CDB, align 4
  %38 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %4, align 8
  %39 = getelementptr inbounds %struct.ustorage_fs_lun, %struct.ustorage_fs_lun* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  store i32 1, i32* %2, align 4
  br label %53

40:                                               ; preds = %18
  %41 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %4, align 8
  %42 = getelementptr inbounds %struct.ustorage_fs_lun, %struct.ustorage_fs_lun* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  br label %49

49:                                               ; preds = %48, %45, %40
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.ustorage_fs_lun*, %struct.ustorage_fs_lun** %4, align 8
  %52 = getelementptr inbounds %struct.ustorage_fs_lun, %struct.ustorage_fs_lun* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %49, %36, %14
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
