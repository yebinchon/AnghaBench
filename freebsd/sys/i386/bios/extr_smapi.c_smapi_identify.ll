; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_smapi.c_smapi_identify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_smapi.c_smapi_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@SMAPI_START = common dso_local global i32 0, align 4
@SMAPI_SIG = common dso_local global i32 0, align 4
@SMAPI_LEN = common dso_local global i32 0, align 4
@SMAPI_STEP = common dso_local global i32 0, align 4
@SMAPI_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"smapi\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"SMAPI BIOS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @smapi_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smapi_identify(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @device_is_alive(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %41

13:                                               ; preds = %2
  %14 = load i32, i32* @SMAPI_START, align 4
  %15 = load i32, i32* @SMAPI_SIG, align 4
  %16 = load i32, i32* @SMAPI_LEN, align 4
  %17 = load i32, i32* @SMAPI_STEP, align 4
  %18 = load i32, i32* @SMAPI_OFF, align 4
  %19 = call i64 @bios_sigsearch(i32 %14, i32 %15, i32 %16, i32 %17, i32 %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  %23 = load i64, i64* %6, align 8
  %24 = call %struct.TYPE_2__* @ADDR2HDR(i64 %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @BUS_ADD_CHILD(i32 %27, i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 -1)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @device_set_driver(i32 %29, i32* %30)
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @SYS_RES_MEMORY, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i64, i64* %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @bus_set_resource(i32 %32, i32 %33, i32 %34, i64 %35, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @device_set_desc(i32 %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %22, %13
  br label %41

41:                                               ; preds = %40, %12
  ret void
}

declare dso_local i32 @device_is_alive(i32) #1

declare dso_local i64 @bios_sigsearch(i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @ADDR2HDR(i64) #1

declare dso_local i32 @BUS_ADD_CHILD(i32, i32, i8*, i32) #1

declare dso_local i32 @device_set_driver(i32, i32*) #1

declare dso_local i32 @bus_set_resource(i32, i32, i32, i64, i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
