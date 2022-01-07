; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_flush_adapter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_flush_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_softc = type { i32 }
%struct.ciss_request = type { i32 }
%struct.ciss_bmic_flush_cache = type { i32 }

@CISS_MALLOC_CLASS = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CISS_BMIC_FLUSH_CACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"error sending BMIC FLUSH_CACHE command (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"error flushing cache (%s)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ciss_softc*)* @ciss_flush_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciss_flush_adapter(%struct.ciss_softc* %0) #0 {
  %2 = alloca %struct.ciss_softc*, align 8
  %3 = alloca %struct.ciss_request*, align 8
  %4 = alloca %struct.ciss_bmic_flush_cache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ciss_softc* %0, %struct.ciss_softc** %2, align 8
  %7 = call i32 @debug_called(i32 1)
  store %struct.ciss_request* null, %struct.ciss_request** %3, align 8
  store %struct.ciss_bmic_flush_cache* null, %struct.ciss_bmic_flush_cache** %4, align 8
  %8 = load i32, i32* @CISS_MALLOC_CLASS, align 4
  %9 = load i32, i32* @M_NOWAIT, align 4
  %10 = load i32, i32* @M_ZERO, align 4
  %11 = or i32 %9, %10
  %12 = call %struct.ciss_bmic_flush_cache* @malloc(i32 4, i32 %8, i32 %11)
  store %struct.ciss_bmic_flush_cache* %12, %struct.ciss_bmic_flush_cache** %4, align 8
  %13 = icmp eq %struct.ciss_bmic_flush_cache* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  store i32 %15, i32* %5, align 4
  br label %43

16:                                               ; preds = %1
  %17 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %18 = load i32, i32* @CISS_BMIC_FLUSH_CACHE, align 4
  %19 = bitcast %struct.ciss_bmic_flush_cache** %4 to i8**
  %20 = call i32 @ciss_get_bmic_request(%struct.ciss_softc* %17, %struct.ciss_request** %3, i32 %18, i8** %19, i32 4)
  store i32 %20, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %43

23:                                               ; preds = %16
  %24 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %25 = call i32 @ciss_synch_request(%struct.ciss_request* %24, i32 60000)
  store i32 %25, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @ciss_printf(%struct.ciss_softc* %28, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %43

31:                                               ; preds = %23
  %32 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %33 = call i32 @ciss_report_request(%struct.ciss_request* %32, i32* %6, i32* null)
  %34 = load i32, i32* %6, align 4
  switch i32 %34, label %36 [
    i32 128, label %35
  ]

35:                                               ; preds = %31
  br label %42

36:                                               ; preds = %31
  %37 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @ciss_name_command_status(i32 %38)
  %40 = call i32 @ciss_printf(%struct.ciss_softc* %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @EIO, align 4
  store i32 %41, i32* %5, align 4
  br label %43

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %36, %27, %22, %14
  %44 = load %struct.ciss_bmic_flush_cache*, %struct.ciss_bmic_flush_cache** %4, align 8
  %45 = icmp ne %struct.ciss_bmic_flush_cache* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.ciss_bmic_flush_cache*, %struct.ciss_bmic_flush_cache** %4, align 8
  %48 = load i32, i32* @CISS_MALLOC_CLASS, align 4
  %49 = call i32 @free(%struct.ciss_bmic_flush_cache* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %43
  %51 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %52 = icmp ne %struct.ciss_request* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %55 = call i32 @ciss_release_request(%struct.ciss_request* %54)
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local %struct.ciss_bmic_flush_cache* @malloc(i32, i32, i32) #1

declare dso_local i32 @ciss_get_bmic_request(%struct.ciss_softc*, %struct.ciss_request**, i32, i8**, i32) #1

declare dso_local i32 @ciss_synch_request(%struct.ciss_request*, i32) #1

declare dso_local i32 @ciss_printf(%struct.ciss_softc*, i8*, i32) #1

declare dso_local i32 @ciss_report_request(%struct.ciss_request*, i32*, i32*) #1

declare dso_local i32 @ciss_name_command_status(i32) #1

declare dso_local i32 @free(%struct.ciss_bmic_flush_cache*, i32) #1

declare dso_local i32 @ciss_release_request(%struct.ciss_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
