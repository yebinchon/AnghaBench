; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard.c_pccard_probe_nomatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard.c_pccard_probe_nomatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pccard_ivar = type { %struct.pccard_function* }
%struct.pccard_function = type { i32, i32 }
%struct.pccard_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32** }

@.str = private unnamed_addr constant [15 x i8] c"<unknown card>\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c" (manufacturer=0x%04x, product=0x%04x, function_type=%d) at function %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"   CIS info: \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @pccard_probe_nomatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pccard_probe_nomatch(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pccard_ivar*, align 8
  %6 = alloca %struct.pccard_function*, align 8
  %7 = alloca %struct.pccard_softc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.pccard_ivar* @PCCARD_IVAR(i32 %9)
  store %struct.pccard_ivar* %10, %struct.pccard_ivar** %5, align 8
  %11 = load %struct.pccard_ivar*, %struct.pccard_ivar** %5, align 8
  %12 = getelementptr inbounds %struct.pccard_ivar, %struct.pccard_ivar* %11, i32 0, i32 0
  %13 = load %struct.pccard_function*, %struct.pccard_function** %12, align 8
  store %struct.pccard_function* %13, %struct.pccard_function** %6, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.pccard_softc* @PCCARD_SOFTC(i32 %14)
  store %struct.pccard_softc* %15, %struct.pccard_softc** %7, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.pccard_softc*, %struct.pccard_softc** %7, align 8
  %19 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.pccard_softc*, %struct.pccard_softc** %7, align 8
  %23 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pccard_function*, %struct.pccard_function** %6, align 8
  %27 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.pccard_function*, %struct.pccard_function** %6, align 8
  %30 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %25, i32 %28, i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %64, %2
  %36 = load %struct.pccard_softc*, %struct.pccard_softc** %7, align 8
  %37 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32**, i32*** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 4
  br label %48

48:                                               ; preds = %45, %35
  %49 = phi i1 [ false, %35 ], [ %47, %45 ]
  br i1 %49, label %50, label %67

50:                                               ; preds = %48
  %51 = load i32, i32* %8, align 4
  %52 = icmp sgt i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %55 = load %struct.pccard_softc*, %struct.pccard_softc** %7, align 8
  %56 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i32**, i32*** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %54, i32* %62)
  br label %64

64:                                               ; preds = %50
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %35

67:                                               ; preds = %48
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local %struct.pccard_ivar* @PCCARD_IVAR(i32) #1

declare dso_local %struct.pccard_softc* @PCCARD_SOFTC(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
