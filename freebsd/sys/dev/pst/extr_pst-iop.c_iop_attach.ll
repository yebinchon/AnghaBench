; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pst/extr_pst-iop.c_iop_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pst/extr_pst-iop.c_iop_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iop_softc = type { i32, %struct.TYPE_3__*, i32, i32, i32, %struct.TYPE_4__*, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32 }

@M_PSTIOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"pstiop: get LCT failed\0A\00", align 1
@I2O_LCT_ENTRYSIZE = common dso_local global i64 0, align 8
@I2O_TID_NONE = common dso_local global i32 0, align 4
@I2O_TID_HOST = common dso_local global i32 0, align 4
@I2O_SUBCLASS_ISM = common dso_local global i32 0, align 4
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_ENTROPY = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@iop_intr = common dso_local global i32 0, align 4
@I2O_PARAMS_OPERATION_FIELD_GET = common dso_local global i32 0, align 4
@I2O_UTIL_DEVICE_IDENTITY_GROUP_NO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iop_attach(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.iop_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.iop_softc*
  store %struct.iop_softc* %6, %struct.iop_softc** %3, align 8
  %7 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %8 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %7, i32 0, i32 6
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %13 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %12, i32 0, i32 6
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @config_intrhook_disestablish(i32* %14)
  %16 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %17 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %16, i32 0, i32 6
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* @M_PSTIOP, align 4
  %20 = call i32 @free(i32* %18, i32 %19)
  %21 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %22 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %21, i32 0, i32 6
  store i32* null, i32** %22, align 8
  br label %23

23:                                               ; preds = %11, %1
  %24 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %25 = call i32 @iop_get_lct(%struct.iop_softc* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %130

29:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %106, %29
  %31 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %32 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %31, i32 0, i32 5
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @I2O_LCT_ENTRYSIZE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %109

41:                                               ; preds = %30
  %42 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %43 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %42, i32 0, i32 5
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @I2O_TID_NONE, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %41
  %53 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %54 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %53, i32 0, i32 5
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @I2O_TID_HOST, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %106

64:                                               ; preds = %52, %41
  %65 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %66 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %65, i32 0, i32 5
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  switch i32 %72, label %105 [
    i32 129, label %73
    i32 128, label %96
  ]

73:                                               ; preds = %64
  %74 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %75 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %74, i32 0, i32 5
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @I2O_SUBCLASS_ISM, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %73
  %85 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %86 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %85, i32 0, i32 5
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %94 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %84, %73
  br label %105

96:                                               ; preds = %64
  %97 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %98 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %99 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %98, i32 0, i32 5
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = call i32 @pst_add_raid(%struct.iop_softc* %97, %struct.TYPE_4__* %103)
  br label %105

105:                                              ; preds = %64, %96, %95
  br label %106

106:                                              ; preds = %105, %63
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %4, align 4
  br label %30

109:                                              ; preds = %30
  %110 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %111 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %114 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @INTR_TYPE_BIO, align 4
  %117 = load i32, i32* @INTR_ENTROPY, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @INTR_MPSAFE, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @iop_intr, align 4
  %122 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %123 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %124 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %123, i32 0, i32 2
  %125 = call i32 @bus_setup_intr(i32 %112, i32 %115, i32 %120, i32* null, i32 %121, %struct.iop_softc* %122, i32* %124)
  %126 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %127 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %126, i32 0, i32 1
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  store i32 0, i32* %129, align 4
  br label %130

130:                                              ; preds = %109, %27
  ret void
}

declare dso_local i32 @config_intrhook_disestablish(i32*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @iop_get_lct(%struct.iop_softc*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @pst_add_raid(%struct.iop_softc*, %struct.TYPE_4__*) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.iop_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
