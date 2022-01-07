; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/bios/extr_smbios.c_smbios_identify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/bios/extr_smbios.c_smbios_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@SMBIOS_START = common dso_local global i32 0, align 4
@SMBIOS_SIG = common dso_local global i32 0, align 4
@SMBIOS_LEN = common dso_local global i32 0, align 4
@SMBIOS_STEP = common dso_local global i32 0, align 4
@SMBIOS_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"smbios\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"System Management BIOS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @smbios_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smbios_identify(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @device_is_alive(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %66

15:                                               ; preds = %2
  %16 = load i32, i32* @SMBIOS_START, align 4
  %17 = load i32, i32* @SMBIOS_SIG, align 4
  %18 = load i32, i32* @SMBIOS_LEN, align 4
  %19 = load i32, i32* @SMBIOS_STEP, align 4
  %20 = load i32, i32* @SMBIOS_OFF, align 4
  %21 = call i64 @bios_sigsearch(i32 %16, i32 %17, i32 %18, i32 %19, i32 %20)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %65

24:                                               ; preds = %15
  store i32 0, i32* %8, align 4
  %25 = load i64, i64* %6, align 8
  %26 = call %struct.TYPE_2__* @ADDR2EPS(i64 %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 31
  br i1 %30, label %31, label %51

31:                                               ; preds = %24
  %32 = load i64, i64* %6, align 8
  %33 = call %struct.TYPE_2__* @ADDR2EPS(i64 %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  %36 = load i64, i64* %6, align 8
  %37 = call %struct.TYPE_2__* @ADDR2EPS(i64 %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 30
  br i1 %41, label %42, label %49

42:                                               ; preds = %31
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 31, i32* %7, align 4
  br label %50

49:                                               ; preds = %45, %42, %31
  br label %66

50:                                               ; preds = %48
  br label %51

51:                                               ; preds = %50, %24
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @BUS_ADD_CHILD(i32 %52, i32 5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 -1)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @device_set_driver(i32 %54, i32* %55)
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @SYS_RES_MEMORY, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i64, i64* %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @bus_set_resource(i32 %57, i32 %58, i32 %59, i64 %60, i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @device_set_desc(i32 %63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %51, %15
  br label %66

66:                                               ; preds = %65, %49, %14
  ret void
}

declare dso_local i32 @device_is_alive(i32) #1

declare dso_local i64 @bios_sigsearch(i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @ADDR2EPS(i64) #1

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
