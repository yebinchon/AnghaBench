; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_debug.c_elink_cb_dbg1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_debug.c_elink_cb_dbg1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, i32 }

@DBG_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ELINK: %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @elink_cb_dbg1(%struct.bxe_softc* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [128 x i8], align 16
  %8 = alloca [128 x i8], align 16
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %10 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @DBG_PHY, align 4
  %13 = and i32 %11, %12
  %14 = call i64 @__predict_false(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %3
  %17 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @snprintf(i8* %17, i32 128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %21 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @snprintf(i8* %20, i32 128, i8* %21, i8* %22)
  %24 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %25 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %28 = call i32 @device_printf(i32 %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %16, %3
  ret void
}

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
