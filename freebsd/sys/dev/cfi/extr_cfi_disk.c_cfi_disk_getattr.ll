; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cfi/extr_cfi_disk.c_cfi_disk_getattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cfi/extr_cfi_disk.c_cfi_disk_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.cfi_disk_softc* }
%struct.cfi_disk_softc = type { %struct.cfi_softc* }
%struct.cfi_softc = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"CFI::device\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bio*)* @cfi_disk_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfi_disk_getattr(%struct.bio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.cfi_disk_softc*, align 8
  %5 = alloca %struct.cfi_softc*, align 8
  %6 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %3, align 8
  %7 = load %struct.bio*, %struct.bio** %3, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp eq %struct.TYPE_2__* %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = load %struct.bio*, %struct.bio** %3, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %15, align 8
  %17 = icmp eq %struct.cfi_disk_softc* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %11, %1
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %2, align 4
  br label %52

20:                                               ; preds = %11
  %21 = load %struct.bio*, %struct.bio** %3, align 8
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %21, i32 0, i32 3
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %24, align 8
  store %struct.cfi_disk_softc* %25, %struct.cfi_disk_softc** %4, align 8
  %26 = load %struct.cfi_disk_softc*, %struct.cfi_disk_softc** %4, align 8
  %27 = getelementptr inbounds %struct.cfi_disk_softc, %struct.cfi_disk_softc* %26, i32 0, i32 0
  %28 = load %struct.cfi_softc*, %struct.cfi_softc** %27, align 8
  store %struct.cfi_softc* %28, %struct.cfi_softc** %5, align 8
  %29 = load %struct.cfi_softc*, %struct.cfi_softc** %5, align 8
  %30 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %6, align 4
  %32 = load %struct.bio*, %struct.bio** %3, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @strcmp(i32 %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %20
  %38 = load %struct.bio*, %struct.bio** %3, align 8
  %39 = getelementptr inbounds %struct.bio, %struct.bio* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = icmp ne i64 %41, 4
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @EFAULT, align 4
  store i32 %44, i32* %2, align 4
  br label %52

45:                                               ; preds = %37
  %46 = load %struct.bio*, %struct.bio** %3, align 8
  %47 = getelementptr inbounds %struct.bio, %struct.bio* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @bcopy(i32* %6, i32 %48, i32 4)
  br label %51

50:                                               ; preds = %20
  store i32 -1, i32* %2, align 4
  br label %52

51:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %50, %43, %18
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @bcopy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
