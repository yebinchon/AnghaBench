; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_syr827.c_syr827_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_syr827.c_syr827_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.syr827_softc = type { i32 }

@bootverbose = common dso_local global i64 0, align 8
@ID1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Vendor ID: %x, DIE ID: %x\0A\00", align 1
@ID1_VENDOR_MASK = common dso_local global i32 0, align 4
@ID1_VENDOR_SHIFT = common dso_local global i32 0, align 4
@ID1_DIE_MASK = common dso_local global i32 0, align 4
@ID2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"DIE Rev: %x\0A\00", align 1
@ID2_DIE_REV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @syr827_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @syr827_start(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.syr827_softc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call %struct.syr827_softc* @device_get_softc(i8* %7)
  store %struct.syr827_softc* %8, %struct.syr827_softc** %3, align 8
  %9 = load i64, i64* @bootverbose, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %1
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* @ID1, align 4
  %14 = call i32 @syr827_read(i8* %12, i32 %13, i32* %5, i32 1)
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @ID1_VENDOR_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @ID1_VENDOR_SHIFT, align 4
  %20 = ashr i32 %18, %19
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ID1_DIE_MASK, align 4
  %23 = and i32 %21, %22
  %24 = call i32 (i8*, i8*, i32, ...) @device_printf(i8* %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* @ID2, align 4
  %27 = call i32 @syr827_read(i8* %25, i32 %26, i32* %5, i32 1)
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @ID2_DIE_REV_MASK, align 4
  %31 = and i32 %29, %30
  %32 = call i32 (i8*, i8*, i32, ...) @device_printf(i8* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %11, %1
  %34 = load %struct.syr827_softc*, %struct.syr827_softc** %3, align 8
  %35 = getelementptr inbounds %struct.syr827_softc, %struct.syr827_softc* %34, i32 0, i32 0
  %36 = call i32 @config_intrhook_disestablish(i32* %35)
  ret void
}

declare dso_local %struct.syr827_softc* @device_get_softc(i8*) #1

declare dso_local i32 @syr827_read(i8*, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i8*, i8*, i32, ...) #1

declare dso_local i32 @config_intrhook_disestablish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
