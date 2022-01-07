; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_send_frame_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_send_frame_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbni_softc = type { i32, i32, i64, i64 }

@FL_NEED_RESEND = common dso_local global i32 0, align 4
@FRAME_RETRY = common dso_local global i32 0, align 4
@FRAME_FIRST = common dso_local global i32 0, align 4
@FL_PREV_OK = common dso_local global i32 0, align 4
@FRAME_SENT_OK = common dso_local global i32 0, align 4
@FRAME_SENT_BAD = common dso_local global i32 0, align 4
@DAT = common dso_local global i32 0, align 4
@SBNI_SIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbni_softc*, i32*)* @send_frame_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_frame_header(%struct.sbni_softc* %0, i32* %1) #0 {
  %3 = alloca %struct.sbni_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.sbni_softc* %0, %struct.sbni_softc** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %11 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 6
  store i32 %13, i32* %6, align 4
  %14 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %15 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @FL_NEED_RESEND, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @FRAME_RETRY, align 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %20, %2
  %25 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %26 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @FRAME_FIRST, align 4
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %29, %24
  %34 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %35 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @FL_PREV_OK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @FRAME_SENT_OK, align 4
  br label %44

42:                                               ; preds = %33
  %43 = load i32, i32* @FRAME_SENT_BAD, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %6, align 4
  %48 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %49 = load i32, i32* @DAT, align 4
  %50 = load i64, i64* @SBNI_SIG, align 8
  %51 = call i32 @sbni_outb(%struct.sbni_softc* %48, i32 %49, i64 %50)
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %7, align 8
  %54 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %55 = load i32, i32* @DAT, align 4
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @sbni_outb(%struct.sbni_softc* %54, i32 %55, i64 %56)
  %58 = load i64, i64* %7, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @CRC32(i64 %58, i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = ashr i32 %61, 8
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %7, align 8
  %64 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %65 = load i32, i32* @DAT, align 4
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @sbni_outb(%struct.sbni_softc* %64, i32 %65, i64 %66)
  %68 = load i64, i64* %7, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @CRC32(i64 %68, i32 %69)
  store i32 %70, i32* %5, align 4
  %71 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %72 = load i32, i32* @DAT, align 4
  %73 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %74 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @sbni_outb(%struct.sbni_softc* %71, i32 %72, i64 %75)
  %77 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %78 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @CRC32(i64 %79, i32 %80)
  store i32 %81, i32* %5, align 4
  %82 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %83 = load i32, i32* @DAT, align 4
  %84 = call i32 @sbni_outb(%struct.sbni_softc* %82, i32 %83, i64 0)
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @CRC32(i64 0, i32 %85)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = load i32*, i32** %4, align 8
  store i32 %87, i32* %88, align 4
  ret void
}

declare dso_local i32 @sbni_outb(%struct.sbni_softc*, i32, i64) #1

declare dso_local i32 @CRC32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
