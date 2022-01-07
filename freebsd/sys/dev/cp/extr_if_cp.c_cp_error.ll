; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_if_cp.c_cp_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_if_cp.c_cp_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"frame error\0A\00", align 1
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"crc error\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"overrun error\0A\00", align 1
@IFCOUNTER_COLLISIONS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"overflow error\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"underrun error\0A\00", align 1
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"error #%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32)* @cp_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_error(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %5, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %67 [
    i32 131, label %10
    i32 132, label %18
    i32 129, label %26
    i32 130, label %39
    i32 128, label %47
  ]

10:                                               ; preds = %2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = call i32 @CP_DEBUG(%struct.TYPE_7__* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %17 = call i32 @if_inc_counter(%struct.TYPE_9__* %15, i32 %16, i32 1)
  br label %73

18:                                               ; preds = %2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = call i32 @CP_DEBUG(%struct.TYPE_7__* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %25 = call i32 @if_inc_counter(%struct.TYPE_9__* %23, i32 %24, i32 1)
  br label %73

26:                                               ; preds = %2
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = call i32 @CP_DEBUG(%struct.TYPE_7__* %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %33 = call i32 @if_inc_counter(%struct.TYPE_9__* %31, i32 %32, i32 1)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %38 = call i32 @if_inc_counter(%struct.TYPE_9__* %36, i32 %37, i32 1)
  br label %73

39:                                               ; preds = %2
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = call i32 @CP_DEBUG(%struct.TYPE_7__* %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %46 = call i32 @if_inc_counter(%struct.TYPE_9__* %44, i32 %45, i32 1)
  br label %73

47:                                               ; preds = %2
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %49 = call i32 @CP_DEBUG(%struct.TYPE_7__* %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  store i32 0, i32* %51, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %56 = call i32 @if_inc_counter(%struct.TYPE_9__* %54, i32 %55, i32 1)
  %57 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %58
  store i32 %64, i32* %62, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = call i32 @cp_start(%struct.TYPE_7__* %65)
  br label %73

67:                                               ; preds = %2
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 @CP_DEBUG(%struct.TYPE_7__* %68, i8* %71)
  br label %73

73:                                               ; preds = %67, %47, %39, %26, %18, %10
  ret void
}

declare dso_local i32 @CP_DEBUG(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @if_inc_counter(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @cp_start(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
