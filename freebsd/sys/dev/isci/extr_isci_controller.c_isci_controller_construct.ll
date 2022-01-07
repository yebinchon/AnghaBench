; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_controller.c_isci_controller_construct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_controller.c_isci_controller_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISCI_CONTROLLER = type { i32, i32, i64, i32*, i32, i32, i64, i32*, i8*, i8*, i8*, i32, %struct.isci_softc* }
%struct.isci_softc = type { i32 }
%struct.ISCI_TIMER = type { i32 }

@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"isci\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@SCI_MAX_DOMAINS = common dso_local global i64 0, align 8
@SCI_MAX_TIMERS = common dso_local global i32 0, align 4
@M_ISCI = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isci_controller_construct(%struct.ISCI_CONTROLLER* %0, %struct.isci_softc* %1) #0 {
  %3 = alloca %struct.ISCI_CONTROLLER*, align 8
  %4 = alloca %struct.isci_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ISCI_TIMER*, align 8
  %8 = alloca i32, align 4
  store %struct.ISCI_CONTROLLER* %0, %struct.ISCI_CONTROLLER** %3, align 8
  store %struct.isci_softc* %1, %struct.isci_softc** %4, align 8
  %9 = load %struct.isci_softc*, %struct.isci_softc** %4, align 8
  %10 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @scif_library_allocate_controller(i32 %11, i32* %5)
  %13 = load %struct.isci_softc*, %struct.isci_softc** %4, align 8
  %14 = getelementptr inbounds %struct.isci_softc, %struct.isci_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @scif_controller_construct(i32 %15, i32 %16, i32* null)
  %18 = load %struct.isci_softc*, %struct.isci_softc** %4, align 8
  %19 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %20 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %19, i32 0, i32 12
  store %struct.isci_softc* %18, %struct.isci_softc** %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %23 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %22, i32 0, i32 11
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %26 = bitcast %struct.ISCI_CONTROLLER* %25 to i8*
  %27 = call i32 @sci_object_set_association(i32 %24, i8* %26)
  %28 = load i8*, i8** @FALSE, align 8
  %29 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %30 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %29, i32 0, i32 10
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** @FALSE, align 8
  %32 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %33 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %32, i32 0, i32 9
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** @FALSE, align 8
  %35 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %36 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %35, i32 0, i32 8
  store i8* %34, i8** %36, align 8
  %37 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %38 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %37, i32 0, i32 7
  store i32* null, i32** %38, align 8
  %39 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %40 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %39, i32 0, i32 6
  store i64 0, i64* %40, align 8
  %41 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %42 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %41, i32 0, i32 5
  %43 = call i32 @sci_fast_list_init(i32* %42)
  %44 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %45 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %44, i32 0, i32 4
  %46 = load i32, i32* @MTX_DEF, align 4
  %47 = call i32 @mtx_init(i32* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i32 %46)
  store i64 0, i64* %6, align 8
  br label %48

48:                                               ; preds = %61, %2
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @SCI_MAX_DOMAINS, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %54 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %60 = call i32 @isci_domain_construct(i32* %57, i64 %58, %struct.ISCI_CONTROLLER* %59)
  br label %61

61:                                               ; preds = %52
  %62 = load i64, i64* %6, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %6, align 8
  br label %48

64:                                               ; preds = %48
  %65 = load i32, i32* @SCI_MAX_TIMERS, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 4, %66
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* @M_ISCI, align 4
  %70 = load i32, i32* @M_NOWAIT, align 4
  %71 = load i32, i32* @M_ZERO, align 4
  %72 = or i32 %70, %71
  %73 = call i64 @malloc(i32 %68, i32 %69, i32 %72)
  %74 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %75 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %77 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @sci_pool_initialize(i32 %78)
  %80 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %81 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to %struct.ISCI_TIMER*
  store %struct.ISCI_TIMER* %83, %struct.ISCI_TIMER** %7, align 8
  store i32 0, i32* %8, align 4
  br label %84

84:                                               ; preds = %96, %64
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @SCI_MAX_TIMERS, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %84
  %89 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %90 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ISCI_TIMER*, %struct.ISCI_TIMER** %7, align 8
  %93 = getelementptr inbounds %struct.ISCI_TIMER, %struct.ISCI_TIMER* %92, i32 1
  store %struct.ISCI_TIMER* %93, %struct.ISCI_TIMER** %7, align 8
  %94 = ptrtoint %struct.ISCI_TIMER* %92 to i32
  %95 = call i32 @sci_pool_put(i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %88
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %84

99:                                               ; preds = %84
  %100 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %3, align 8
  %101 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @sci_pool_initialize(i32 %102)
  ret void
}

declare dso_local i32 @scif_library_allocate_controller(i32, i32*) #1

declare dso_local i32 @scif_controller_construct(i32, i32, i32*) #1

declare dso_local i32 @sci_object_set_association(i32, i8*) #1

declare dso_local i32 @sci_fast_list_init(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @isci_domain_construct(i32*, i64, %struct.ISCI_CONTROLLER*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @sci_pool_initialize(i32) #1

declare dso_local i32 @sci_pool_put(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
