; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb.c_cbb_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb.c_cbb_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.cbb_intrhand = type { i32, %struct.cbb_softc*, i8*, i32*, i32* }
%struct.cbb_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cbb_func_filt = common dso_local global i32* null, align 8
@cbb_func_intr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cbb_setup_intr(i32 %0, i32 %1, %struct.resource* %2, i32 %3, i32* %4, i32* %5, i8* %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.resource*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca %struct.cbb_intrhand*, align 8
  %19 = alloca %struct.cbb_softc*, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store %struct.resource* %2, %struct.resource** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8** %7, i8*** %17, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call %struct.cbb_softc* @device_get_softc(i32 %21)
  store %struct.cbb_softc* %22, %struct.cbb_softc** %19, align 8
  %23 = load i32*, i32** %14, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %8
  %26 = load i32*, i32** %15, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %9, align 4
  br label %89

30:                                               ; preds = %25, %8
  %31 = load i32, i32* @M_DEVBUF, align 4
  %32 = load i32, i32* @M_NOWAIT, align 4
  %33 = call %struct.cbb_intrhand* @malloc(i32 40, i32 %31, i32 %32)
  store %struct.cbb_intrhand* %33, %struct.cbb_intrhand** %18, align 8
  %34 = load %struct.cbb_intrhand*, %struct.cbb_intrhand** %18, align 8
  %35 = icmp eq %struct.cbb_intrhand* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @ENOMEM, align 4
  store i32 %37, i32* %9, align 4
  br label %89

38:                                               ; preds = %30
  %39 = load %struct.cbb_intrhand*, %struct.cbb_intrhand** %18, align 8
  %40 = bitcast %struct.cbb_intrhand* %39 to i8*
  %41 = load i8**, i8*** %17, align 8
  store i8* %40, i8** %41, align 8
  %42 = load i32*, i32** %14, align 8
  %43 = load %struct.cbb_intrhand*, %struct.cbb_intrhand** %18, align 8
  %44 = getelementptr inbounds %struct.cbb_intrhand, %struct.cbb_intrhand* %43, i32 0, i32 4
  store i32* %42, i32** %44, align 8
  %45 = load i32*, i32** %15, align 8
  %46 = load %struct.cbb_intrhand*, %struct.cbb_intrhand** %18, align 8
  %47 = getelementptr inbounds %struct.cbb_intrhand, %struct.cbb_intrhand* %46, i32 0, i32 3
  store i32* %45, i32** %47, align 8
  %48 = load i8*, i8** %16, align 8
  %49 = load %struct.cbb_intrhand*, %struct.cbb_intrhand** %18, align 8
  %50 = getelementptr inbounds %struct.cbb_intrhand, %struct.cbb_intrhand* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load %struct.cbb_softc*, %struct.cbb_softc** %19, align 8
  %52 = load %struct.cbb_intrhand*, %struct.cbb_intrhand** %18, align 8
  %53 = getelementptr inbounds %struct.cbb_intrhand, %struct.cbb_intrhand* %52, i32 0, i32 1
  store %struct.cbb_softc* %51, %struct.cbb_softc** %53, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @device_get_parent(i32 %54)
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.resource*, %struct.resource** %12, align 8
  %58 = load i32, i32* %13, align 4
  %59 = load i32*, i32** %14, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %38
  %62 = load i32*, i32** @cbb_func_filt, align 8
  br label %64

63:                                               ; preds = %38
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi i32* [ %62, %61 ], [ null, %63 ]
  %66 = load i32*, i32** %15, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32*, i32** @cbb_func_intr, align 8
  br label %71

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi i32* [ %69, %68 ], [ null, %70 ]
  %73 = load %struct.cbb_intrhand*, %struct.cbb_intrhand** %18, align 8
  %74 = load %struct.cbb_intrhand*, %struct.cbb_intrhand** %18, align 8
  %75 = getelementptr inbounds %struct.cbb_intrhand, %struct.cbb_intrhand* %74, i32 0, i32 0
  %76 = call i32 @BUS_SETUP_INTR(i32 %55, i32 %56, %struct.resource* %57, i32 %58, i32* %65, i32* %72, %struct.cbb_intrhand* %73, i32* %75)
  store i32 %76, i32* %20, align 4
  %77 = load i32, i32* %20, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %71
  %80 = load %struct.cbb_intrhand*, %struct.cbb_intrhand** %18, align 8
  %81 = load i32, i32* @M_DEVBUF, align 4
  %82 = call i32 @free(%struct.cbb_intrhand* %80, i32 %81)
  %83 = load i32, i32* %20, align 4
  store i32 %83, i32* %9, align 4
  br label %89

84:                                               ; preds = %71
  %85 = load %struct.cbb_softc*, %struct.cbb_softc** %19, align 8
  %86 = call i32 @cbb_enable_func_intr(%struct.cbb_softc* %85)
  %87 = load %struct.cbb_softc*, %struct.cbb_softc** %19, align 8
  %88 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %87, i32 0, i32 0
  store i32 1, i32* %88, align 4
  store i32 0, i32* %9, align 4
  br label %89

89:                                               ; preds = %84, %79, %36, %28
  %90 = load i32, i32* %9, align 4
  ret i32 %90
}

declare dso_local %struct.cbb_softc* @device_get_softc(i32) #1

declare dso_local %struct.cbb_intrhand* @malloc(i32, i32, i32) #1

declare dso_local i32 @BUS_SETUP_INTR(i32, i32, %struct.resource*, i32, i32*, i32*, %struct.cbb_intrhand*, i32*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @free(%struct.cbb_intrhand*, i32) #1

declare dso_local i32 @cbb_enable_func_intr(%struct.cbb_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
