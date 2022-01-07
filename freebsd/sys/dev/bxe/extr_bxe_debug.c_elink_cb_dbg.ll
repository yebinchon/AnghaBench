; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_debug.c_elink_cb_dbg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_debug.c_elink_cb_dbg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, i32 }

@DBG_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ELINK: %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @elink_cb_dbg(%struct.bxe_softc* %0, i8* %1) #0 {
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [128 x i8], align 16
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %7 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @DBG_PHY, align 4
  %10 = and i32 %8, %9
  %11 = call i64 @__predict_false(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @snprintf(i8* %14, i32 128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %18 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %21 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %13, %2
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
