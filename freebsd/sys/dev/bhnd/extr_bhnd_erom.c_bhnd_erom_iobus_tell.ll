; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_erom.c_bhnd_erom_iobus_tell.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_erom.c_bhnd_erom_iobus_tell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_erom_io = type { i32 }
%struct.bhnd_erom_iobus = type { i32, i64, i64, i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_erom_io*, i64*, i32*)* @bhnd_erom_iobus_tell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_erom_iobus_tell(%struct.bhnd_erom_io* %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bhnd_erom_io*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.bhnd_erom_iobus*, align 8
  store %struct.bhnd_erom_io* %0, %struct.bhnd_erom_io** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.bhnd_erom_io*, %struct.bhnd_erom_io** %5, align 8
  %10 = bitcast %struct.bhnd_erom_io* %9 to %struct.bhnd_erom_iobus*
  store %struct.bhnd_erom_iobus* %10, %struct.bhnd_erom_iobus** %8, align 8
  %11 = load %struct.bhnd_erom_iobus*, %struct.bhnd_erom_iobus** %8, align 8
  %12 = getelementptr inbounds %struct.bhnd_erom_iobus, %struct.bhnd_erom_iobus* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %4, align 4
  br label %30

17:                                               ; preds = %3
  %18 = load %struct.bhnd_erom_iobus*, %struct.bhnd_erom_iobus** %8, align 8
  %19 = getelementptr inbounds %struct.bhnd_erom_iobus, %struct.bhnd_erom_iobus* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.bhnd_erom_iobus*, %struct.bhnd_erom_iobus** %8, align 8
  %22 = getelementptr inbounds %struct.bhnd_erom_iobus, %struct.bhnd_erom_iobus* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = load i64*, i64** %6, align 8
  store i64 %24, i64* %25, align 8
  %26 = load %struct.bhnd_erom_iobus*, %struct.bhnd_erom_iobus** %8, align 8
  %27 = getelementptr inbounds %struct.bhnd_erom_iobus, %struct.bhnd_erom_iobus* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %7, align 8
  store i32 %28, i32* %29, align 4
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %17, %15
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
