; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_bman.c_bman_exception.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_bman.c_bman_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bman_softc = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Invalid Command Verb\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"FBPR pool exhaused. Consider increasing BMAN_MAX_BUFFERS\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Single bit ECC error\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Multi bit ECC error\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Unknown error\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"BMAN Exception: %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bman_softc*, i32)* @bman_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bman_exception(%struct.bman_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bman_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bman_softc*, align 8
  %6 = alloca i8*, align 8
  store %struct.bman_softc* %0, %struct.bman_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bman_softc*, %struct.bman_softc** %3, align 8
  store %struct.bman_softc* %7, %struct.bman_softc** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %13 [
    i32 130, label %9
    i32 131, label %10
    i32 128, label %11
    i32 129, label %12
  ]

9:                                                ; preds = %2
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %14

10:                                               ; preds = %2
  store i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %14

11:                                               ; preds = %2
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %14

12:                                               ; preds = %2
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %14

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %14

14:                                               ; preds = %13, %12, %11, %10, %9
  %15 = load %struct.bman_softc*, %struct.bman_softc** %5, align 8
  %16 = getelementptr inbounds %struct.bman_softc, %struct.bman_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @device_printf(i32 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %18)
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
