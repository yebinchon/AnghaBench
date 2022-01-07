; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/spibus/extr_spibus.c_spibus_child_location_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/spibus/extr_spibus.c_spibus_child_location_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spibus_ivar = type { i32 }

@SPIBUS_CS_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"bus=%d cs=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i64)* @spibus_child_location_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spibus_child_location_str(i32 %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.spibus_ivar*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.spibus_ivar* @SPIBUS_IVAR(i32 %11)
  store %struct.spibus_ivar* %12, %struct.spibus_ivar** %9, align 8
  %13 = load %struct.spibus_ivar*, %struct.spibus_ivar** %9, align 8
  %14 = getelementptr inbounds %struct.spibus_ivar, %struct.spibus_ivar* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SPIBUS_CS_HIGH, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  store i32 %18, i32* %10, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @device_get_unit(i32 %21)
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @snprintf(i8* %19, i64 %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  ret i32 0
}

declare dso_local %struct.spibus_ivar* @SPIBUS_IVAR(i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
