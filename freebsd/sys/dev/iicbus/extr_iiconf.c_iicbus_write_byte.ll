; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iiconf.c_iicbus_write_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iiconf.c_iicbus_write_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iicbus_softc = type { i32, i64 }

@LSB = common dso_local global i32 0, align 4
@IIC_ESTATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iicbus_write_byte(i32 %0, i8 signext %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca %struct.iicbus_softc*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8 %1, i8* %6, align 1
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.iicbus_softc* @device_get_softc(i32 %11)
  store %struct.iicbus_softc* %12, %struct.iicbus_softc** %8, align 8
  %13 = load i8, i8* %6, align 1
  store i8 %13, i8* %9, align 1
  %14 = load %struct.iicbus_softc*, %struct.iicbus_softc** %8, align 8
  %15 = getelementptr inbounds %struct.iicbus_softc, %struct.iicbus_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %3
  %19 = load %struct.iicbus_softc*, %struct.iicbus_softc** %8, align 8
  %20 = getelementptr inbounds %struct.iicbus_softc, %struct.iicbus_softc* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load %struct.iicbus_softc*, %struct.iicbus_softc** %8, align 8
  %25 = getelementptr inbounds %struct.iicbus_softc, %struct.iicbus_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @LSB, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23, %3
  %31 = load i32, i32* @IIC_ESTATUS, align 4
  store i32 %31, i32* %4, align 4
  br label %36

32:                                               ; preds = %23, %18
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @iicbus_write(i32 %33, i8* %9, i32 1, i32* %10, i32 %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %30
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.iicbus_softc* @device_get_softc(i32) #1

declare dso_local i32 @iicbus_write(i32, i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
