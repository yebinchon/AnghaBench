; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_debug.c_elink_cb_dbg2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_debug.c_elink_cb_dbg2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, i32 }

@DBG_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ELINK: %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @elink_cb_dbg2(%struct.bxe_softc* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [128 x i8], align 16
  %10 = alloca [128 x i8], align 16
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %12 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @DBG_PHY, align 4
  %15 = and i32 %13, %14
  %16 = call i64 @__predict_false(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %4
  %19 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %19, i32 128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %23 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = load i32, i32* %8, align 4
  %28 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %22, i32 128, i8* %23, i8* %26, i32 %27)
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %30 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %33 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %18, %4
  ret void
}

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @device_printf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
