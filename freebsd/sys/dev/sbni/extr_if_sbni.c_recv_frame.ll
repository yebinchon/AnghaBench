; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_recv_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_recv_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbni_softc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@CRC32_INITIAL = common dso_local global i32 0, align 4
@CSR0 = common dso_local global i32 0, align 4
@CT_ZER = common dso_local global i32 0, align 4
@FL_PREV_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbni_softc*)* @recv_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_frame(%struct.sbni_softc* %0) #0 {
  %2 = alloca %struct.sbni_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sbni_softc* %0, %struct.sbni_softc** %2, align 8
  %9 = load i32, i32* @CRC32_INITIAL, align 4
  store i32 %9, i32* %3, align 4
  %10 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %11 = call i64 @check_fhdr(%struct.sbni_softc* %10, i32* %4, i32* %5, i32* %6, i32* %7, i32* %3)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 4
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @upload_data(%struct.sbni_softc* %17, i32 %18, i32 %19, i32 %20, i32 %21)
  br label %28

23:                                               ; preds = %13
  %24 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @skip_tail(%struct.sbni_softc* %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %23, %16
  %29 = phi i32 [ %22, %16 ], [ %27, %23 ]
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @interpret_ack(%struct.sbni_softc* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %28
  br label %38

37:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %37, %36
  %39 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %40 = load i32, i32* @CSR0, align 4
  %41 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %42 = load i32, i32* @CSR0, align 4
  %43 = call i32 @sbni_inb(%struct.sbni_softc* %41, i32 %42)
  %44 = load i32, i32* @CT_ZER, align 4
  %45 = xor i32 %43, %44
  %46 = call i32 @sbni_outb(%struct.sbni_softc* %39, i32 %40, i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %38
  %50 = load i32, i32* @FL_PREV_OK, align 4
  %51 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %52 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp sgt i32 %55, 4
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %59 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %57, %49
  br label %83

64:                                               ; preds = %38
  %65 = load i32, i32* @FL_PREV_OK, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %68 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %72 = call i32 @change_level(%struct.sbni_softc* %71)
  %73 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %74 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %79 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %64, %63
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* %4, align 4
  %88 = icmp sgt i32 %87, 4
  br label %89

89:                                               ; preds = %86, %83
  %90 = phi i1 [ true, %83 ], [ %88, %86 ]
  %91 = zext i1 %90 to i32
  ret i32 %91
}

declare dso_local i64 @check_fhdr(%struct.sbni_softc*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @upload_data(%struct.sbni_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @skip_tail(%struct.sbni_softc*, i32, i32) #1

declare dso_local i32 @interpret_ack(%struct.sbni_softc*, i32) #1

declare dso_local i32 @sbni_outb(%struct.sbni_softc*, i32, i32) #1

declare dso_local i32 @sbni_inb(%struct.sbni_softc*, i32) #1

declare dso_local i32 @change_level(%struct.sbni_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
