; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ida/extr_ida_disk.c_idad_strategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ida/extr_ida_disk.c_idad_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, i32, i32, i32, %struct.idad_softc*, i32, %struct.TYPE_2__* }
%struct.idad_softc = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.idad_softc* }

@EINVAL = common dso_local global i32 0, align 4
@DRV_WRITEPROT = common dso_local global i32 0, align 4
@BIO_WRITE = common dso_local global i64 0, align 8
@EROFS = common dso_local global i32 0, align 4
@BIO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @idad_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idad_strategy(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.idad_softc*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %4 = load %struct.bio*, %struct.bio** %2, align 8
  %5 = getelementptr inbounds %struct.bio, %struct.bio* %4, i32 0, i32 6
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.idad_softc*, %struct.idad_softc** %7, align 8
  store %struct.idad_softc* %8, %struct.idad_softc** %3, align 8
  %9 = load %struct.idad_softc*, %struct.idad_softc** %3, align 8
  %10 = icmp eq %struct.idad_softc* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = load %struct.bio*, %struct.bio** %2, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 8
  br label %41

15:                                               ; preds = %1
  %16 = load %struct.idad_softc*, %struct.idad_softc** %3, align 8
  %17 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DRV_WRITEPROT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %15
  %23 = load %struct.bio*, %struct.bio** %2, align 8
  %24 = getelementptr inbounds %struct.bio, %struct.bio* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @BIO_WRITE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* @EROFS, align 4
  %30 = load %struct.bio*, %struct.bio** %2, align 8
  %31 = getelementptr inbounds %struct.bio, %struct.bio* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 8
  br label %41

32:                                               ; preds = %22, %15
  %33 = load %struct.idad_softc*, %struct.idad_softc** %3, align 8
  %34 = load %struct.bio*, %struct.bio** %2, align 8
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %34, i32 0, i32 4
  store %struct.idad_softc* %33, %struct.idad_softc** %35, align 8
  %36 = load %struct.idad_softc*, %struct.idad_softc** %3, align 8
  %37 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.bio*, %struct.bio** %2, align 8
  %40 = call i32 @ida_submit_buf(i32 %38, %struct.bio* %39)
  br label %54

41:                                               ; preds = %28, %11
  %42 = load i32, i32* @BIO_ERROR, align 4
  %43 = load %struct.bio*, %struct.bio** %2, align 8
  %44 = getelementptr inbounds %struct.bio, %struct.bio* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.bio*, %struct.bio** %2, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.bio*, %struct.bio** %2, align 8
  %51 = getelementptr inbounds %struct.bio, %struct.bio* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.bio*, %struct.bio** %2, align 8
  %53 = call i32 @biodone(%struct.bio* %52)
  br label %54

54:                                               ; preds = %41, %32
  ret void
}

declare dso_local i32 @ida_submit_buf(i32, %struct.bio*) #1

declare dso_local i32 @biodone(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
