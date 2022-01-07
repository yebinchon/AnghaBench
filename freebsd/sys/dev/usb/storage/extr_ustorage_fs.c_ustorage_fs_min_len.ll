; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_ustorage_fs.c_ustorage_fs_min_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_ustorage_fs.c_ustorage_fs_min_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ustorage_fs_softc = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i64, i32 }
%struct.TYPE_4__ = type { i32 }

@DIR_READ = common dso_local global i64 0, align 8
@CSWSTATUS_PHASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ustorage_fs_softc*, i32, i32)* @ustorage_fs_min_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ustorage_fs_min_len(%struct.ustorage_fs_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ustorage_fs_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ustorage_fs_softc* %0, %struct.ustorage_fs_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %10 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %8, %12
  br i1 %13, label %14, label %62

14:                                               ; preds = %3
  %15 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %16 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DIR_READ, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = load i32, i32* @CSWSTATUS_PHASE, align 4
  %23 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %24 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 4
  store i32 1, i32* %4, align 4
  br label %63

27:                                               ; preds = %14
  %28 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %29 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %37 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %40 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  store i32 1, i32* %41, align 8
  br label %42

42:                                               ; preds = %34, %27
  %43 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %44 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %42
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %54 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, %52
  store i32 %57, i32* %55, align 8
  %58 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %5, align 8
  %59 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  store i32 1, i32* %60, align 8
  br label %61

61:                                               ; preds = %51, %42
  br label %62

62:                                               ; preds = %61, %3
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %21
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
