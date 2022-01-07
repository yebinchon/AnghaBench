; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pst/extr_pst-iop.c_iop_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pst/extr_pst-iop.c_iop_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iop_softc = type { %struct.intr_config_hook*, %struct.TYPE_2__* }
%struct.intr_config_hook = type { %struct.iop_softc*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"pstiop: no free mfa\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"pstiop: no reset response\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"pstiop: init outbound queue failed\0A\00", align 1
@M_PSTIOP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"pstiop: malloc of delayed attach hook failed\0A\00", align 1
@iop_attach = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"pstiop: config_intrhook_establish failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iop_init(%struct.iop_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iop_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.iop_softc* %0, %struct.iop_softc** %3, align 8
  store i32 10000, i32* %5, align 4
  br label %6

6:                                                ; preds = %19, %1
  %7 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %8 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %17

13:                                               ; preds = %6
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br label %17

17:                                               ; preds = %13, %6
  %18 = phi i1 [ false, %6 ], [ %16, %13 ]
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = call i32 @DELAY(i32 1000)
  br label %6

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %81

26:                                               ; preds = %21
  %27 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @iop_free_mfa(%struct.iop_softc* %27, i32 %28)
  %30 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %31 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 -1, i32* %33, align 4
  %34 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %35 = call i32 @iop_reset(%struct.iop_softc* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %26
  %38 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %81

39:                                               ; preds = %26
  %40 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %41 = call i32 @iop_init_outqueue(%struct.iop_softc* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %81

45:                                               ; preds = %39
  %46 = load i32, i32* @M_PSTIOP, align 4
  %47 = load i32, i32* @M_NOWAIT, align 4
  %48 = load i32, i32* @M_ZERO, align 4
  %49 = or i32 %47, %48
  %50 = call i64 @malloc(i32 16, i32 %46, i32 %49)
  %51 = inttoptr i64 %50 to %struct.intr_config_hook*
  %52 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %53 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %52, i32 0, i32 0
  store %struct.intr_config_hook* %51, %struct.intr_config_hook** %53, align 8
  %54 = icmp ne %struct.intr_config_hook* %51, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %45
  %56 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %81

57:                                               ; preds = %45
  %58 = load i32, i32* @iop_attach, align 4
  %59 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %60 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %59, i32 0, i32 0
  %61 = load %struct.intr_config_hook*, %struct.intr_config_hook** %60, align 8
  %62 = getelementptr inbounds %struct.intr_config_hook, %struct.intr_config_hook* %61, i32 0, i32 1
  store i32 %58, i32* %62, align 8
  %63 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %64 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %65 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %64, i32 0, i32 0
  %66 = load %struct.intr_config_hook*, %struct.intr_config_hook** %65, align 8
  %67 = getelementptr inbounds %struct.intr_config_hook, %struct.intr_config_hook* %66, i32 0, i32 0
  store %struct.iop_softc* %63, %struct.iop_softc** %67, align 8
  %68 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %69 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %68, i32 0, i32 0
  %70 = load %struct.intr_config_hook*, %struct.intr_config_hook** %69, align 8
  %71 = call i64 @config_intrhook_establish(%struct.intr_config_hook* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %57
  %74 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %75 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %76 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %75, i32 0, i32 0
  %77 = load %struct.intr_config_hook*, %struct.intr_config_hook** %76, align 8
  %78 = load i32, i32* @M_PSTIOP, align 4
  %79 = call i32 @free(%struct.intr_config_hook* %77, i32 %78)
  br label %80

80:                                               ; preds = %73, %57
  store i32 1, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %55, %43, %37, %24
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @iop_free_mfa(%struct.iop_softc*, i32) #1

declare dso_local i32 @iop_reset(%struct.iop_softc*) #1

declare dso_local i32 @iop_init_outqueue(%struct.iop_softc*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i64 @config_intrhook_establish(%struct.intr_config_hook*) #1

declare dso_local i32 @free(%struct.intr_config_hook*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
