; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_disk.c_g_disk_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_disk.c_g_disk_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_provider = type { %struct.g_disk_softc* }
%struct.g_disk_softc = type { %struct.disk* }
%struct.disk = type { i32 (%struct.disk*, i32, i8*, i32, %struct.thread*)* }
%struct.thread = type { i32 }

@ENOIOCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_provider*, i32, i8*, i32, %struct.thread*)* @g_disk_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_disk_ioctl(%struct.g_provider* %0, i32 %1, i8* %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.g_provider*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.disk*, align 8
  %13 = alloca %struct.g_disk_softc*, align 8
  %14 = alloca i32, align 4
  store %struct.g_provider* %0, %struct.g_provider** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %15 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %16 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %15, i32 0, i32 0
  %17 = load %struct.g_disk_softc*, %struct.g_disk_softc** %16, align 8
  store %struct.g_disk_softc* %17, %struct.g_disk_softc** %13, align 8
  %18 = load %struct.g_disk_softc*, %struct.g_disk_softc** %13, align 8
  %19 = getelementptr inbounds %struct.g_disk_softc, %struct.g_disk_softc* %18, i32 0, i32 0
  %20 = load %struct.disk*, %struct.disk** %19, align 8
  store %struct.disk* %20, %struct.disk** %12, align 8
  %21 = load %struct.disk*, %struct.disk** %12, align 8
  %22 = getelementptr inbounds %struct.disk, %struct.disk* %21, i32 0, i32 0
  %23 = load i32 (%struct.disk*, i32, i8*, i32, %struct.thread*)*, i32 (%struct.disk*, i32, i8*, i32, %struct.thread*)** %22, align 8
  %24 = icmp eq i32 (%struct.disk*, i32, i8*, i32, %struct.thread*)* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @ENOIOCTL, align 4
  store i32 %26, i32* %6, align 4
  br label %38

27:                                               ; preds = %5
  %28 = load %struct.disk*, %struct.disk** %12, align 8
  %29 = getelementptr inbounds %struct.disk, %struct.disk* %28, i32 0, i32 0
  %30 = load i32 (%struct.disk*, i32, i8*, i32, %struct.thread*)*, i32 (%struct.disk*, i32, i8*, i32, %struct.thread*)** %29, align 8
  %31 = load %struct.disk*, %struct.disk** %12, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.thread*, %struct.thread** %11, align 8
  %36 = call i32 %30(%struct.disk* %31, i32 %32, i8* %33, i32 %34, %struct.thread* %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %27, %25
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
