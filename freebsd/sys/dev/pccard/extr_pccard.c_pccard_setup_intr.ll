; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard.c_pccard_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard.c_pccard_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.pccard_softc = type { i32 }
%struct.pccard_ivar = type { %struct.pccard_function* }
%struct.pccard_function = type { i8*, i32*, i32*, i8* }

@.str = private unnamed_addr constant [48 x i8] c"Only one interrupt handler per function allowed\00", align 1
@pccard_filter = common dso_local global i32 0, align 4
@pccard_intr = common dso_local global i32* null, align 8
@PCCARD_CCR_OPTION = common dso_local global i32 0, align 4
@PCCARD_CCR_OPTION_IREQ_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.resource*, i32, i32*, i32*, i8*, i8**)* @pccard_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pccard_setup_intr(i32 %0, i32 %1, %struct.resource* %2, i32 %3, i32* %4, i32* %5, i8* %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.resource*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca %struct.pccard_softc*, align 8
  %19 = alloca %struct.pccard_ivar*, align 8
  %20 = alloca %struct.pccard_function*, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store %struct.resource* %2, %struct.resource** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8** %7, i8*** %17, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call %struct.pccard_softc* @PCCARD_SOFTC(i32 %22)
  store %struct.pccard_softc* %23, %struct.pccard_softc** %18, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call %struct.pccard_ivar* @PCCARD_IVAR(i32 %24)
  store %struct.pccard_ivar* %25, %struct.pccard_ivar** %19, align 8
  %26 = load %struct.pccard_ivar*, %struct.pccard_ivar** %19, align 8
  %27 = getelementptr inbounds %struct.pccard_ivar, %struct.pccard_ivar* %26, i32 0, i32 0
  %28 = load %struct.pccard_function*, %struct.pccard_function** %27, align 8
  store %struct.pccard_function* %28, %struct.pccard_function** %20, align 8
  %29 = load %struct.pccard_function*, %struct.pccard_function** %20, align 8
  %30 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %8
  %34 = load %struct.pccard_function*, %struct.pccard_function** %20, align 8
  %35 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %33, %8
  %39 = call i32 @panic(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %33
  %41 = load i32*, i32** %14, align 8
  %42 = load %struct.pccard_function*, %struct.pccard_function** %20, align 8
  %43 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %42, i32 0, i32 2
  store i32* %41, i32** %43, align 8
  %44 = load i32*, i32** %15, align 8
  %45 = load %struct.pccard_function*, %struct.pccard_function** %20, align 8
  %46 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %45, i32 0, i32 1
  store i32* %44, i32** %46, align 8
  %47 = load i8*, i8** %16, align 8
  %48 = load %struct.pccard_function*, %struct.pccard_function** %20, align 8
  %49 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.resource*, %struct.resource** %12, align 8
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @pccard_filter, align 4
  %55 = load i32*, i32** %15, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %40
  %58 = load i32*, i32** @pccard_intr, align 8
  br label %60

59:                                               ; preds = %40
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i32* [ %58, %57 ], [ null, %59 ]
  %62 = load %struct.pccard_function*, %struct.pccard_function** %20, align 8
  %63 = load i8**, i8*** %17, align 8
  %64 = call i32 @bus_generic_setup_intr(i32 %50, i32 %51, %struct.resource* %52, i32 %53, i32 %54, i32* %61, %struct.pccard_function* %62, i8** %63)
  store i32 %64, i32* %21, align 4
  %65 = load i32, i32* %21, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load %struct.pccard_function*, %struct.pccard_function** %20, align 8
  %69 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %68, i32 0, i32 2
  store i32* null, i32** %69, align 8
  %70 = load %struct.pccard_function*, %struct.pccard_function** %20, align 8
  %71 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %70, i32 0, i32 1
  store i32* null, i32** %71, align 8
  %72 = load i32, i32* %21, align 4
  store i32 %72, i32* %9, align 4
  br label %91

73:                                               ; preds = %60
  %74 = load i8**, i8*** %17, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.pccard_function*, %struct.pccard_function** %20, align 8
  %77 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  %78 = load %struct.pccard_softc*, %struct.pccard_softc** %18, align 8
  %79 = call i64 @pccard_mfc(%struct.pccard_softc* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %73
  %82 = load %struct.pccard_function*, %struct.pccard_function** %20, align 8
  %83 = load i32, i32* @PCCARD_CCR_OPTION, align 4
  %84 = load %struct.pccard_function*, %struct.pccard_function** %20, align 8
  %85 = load i32, i32* @PCCARD_CCR_OPTION, align 4
  %86 = call i32 @pccard_ccr_read(%struct.pccard_function* %84, i32 %85)
  %87 = load i32, i32* @PCCARD_CCR_OPTION_IREQ_ENABLE, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @pccard_ccr_write(%struct.pccard_function* %82, i32 %83, i32 %88)
  br label %90

90:                                               ; preds = %81, %73
  store i32 0, i32* %9, align 4
  br label %91

91:                                               ; preds = %90, %67
  %92 = load i32, i32* %9, align 4
  ret i32 %92
}

declare dso_local %struct.pccard_softc* @PCCARD_SOFTC(i32) #1

declare dso_local %struct.pccard_ivar* @PCCARD_IVAR(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @bus_generic_setup_intr(i32, i32, %struct.resource*, i32, i32, i32*, %struct.pccard_function*, i8**) #1

declare dso_local i64 @pccard_mfc(%struct.pccard_softc*) #1

declare dso_local i32 @pccard_ccr_write(%struct.pccard_function*, i32, i32) #1

declare dso_local i32 @pccard_ccr_read(%struct.pccard_function*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
