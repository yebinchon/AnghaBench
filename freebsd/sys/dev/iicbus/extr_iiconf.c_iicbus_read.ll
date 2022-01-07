; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iiconf.c_iicbus_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iiconf.c_iicbus_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iicbus_softc = type { i32, i64 }

@LSB = common dso_local global i32 0, align 4
@IIC_ESTATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iicbus_read(i32 %0, i8* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.iicbus_softc*, align 8
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i64 @device_get_softc(i32 %15)
  %17 = inttoptr i64 %16 to %struct.iicbus_softc*
  store %struct.iicbus_softc* %17, %struct.iicbus_softc** %14, align 8
  %18 = load %struct.iicbus_softc*, %struct.iicbus_softc** %14, align 8
  %19 = getelementptr inbounds %struct.iicbus_softc, %struct.iicbus_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %6
  %23 = load %struct.iicbus_softc*, %struct.iicbus_softc** %14, align 8
  %24 = getelementptr inbounds %struct.iicbus_softc, %struct.iicbus_softc* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.iicbus_softc*, %struct.iicbus_softc** %14, align 8
  %29 = getelementptr inbounds %struct.iicbus_softc, %struct.iicbus_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @LSB, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27, %6
  %35 = load i32, i32* @IIC_ESTATUS, align 4
  store i32 %35, i32* %7, align 4
  br label %45

36:                                               ; preds = %27, %22
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @device_get_parent(i32 %37)
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @IICBUS_READ(i32 %38, i8* %39, i32 %40, i32* %41, i32 %42, i32 %43)
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %36, %34
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @IICBUS_READ(i32, i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
