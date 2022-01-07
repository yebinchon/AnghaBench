; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_ciu.c_ciu_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_ciu.c_ciu_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciu_softc = type { %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i8*, i32 }

@MAXCOMLEN = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@CIU_IRQ_HARD = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"could not allocate irq%d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@ciu_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"bus_setup_intr failed: %d\0A\00", align 1
@RMAN_ARRAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"CIU IRQ\00", align 1
@CIU_IRQ_EN0_BEGIN = common dso_local global i32 0, align 4
@CIU_IRQ_EN1_END = common dso_local global i32 0, align 4
@CIU_IRQ_EN0_COUNT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"int%d:\00", align 1
@ciu_en0_intrcnt = common dso_local global i8** null, align 8
@CIU_IRQ_EN1_COUNT = common dso_local global i32 0, align 4
@CIU_IRQ_EN1_BEGIN = common dso_local global i32 0, align 4
@ciu_en1_intrcnt = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ciu_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciu_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ciu_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* @MAXCOMLEN, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call %struct.ciu_softc* @device_get_softc(i32 %16)
  store %struct.ciu_softc* %17, %struct.ciu_softc** %6, align 8
  store i32 0, i32* %9, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @SYS_RES_IRQ, align 4
  %20 = load i32, i32* @CIU_IRQ_HARD, align 4
  %21 = load i32, i32* @CIU_IRQ_HARD, align 4
  %22 = load i32, i32* @RF_ACTIVE, align 4
  %23 = call i32* @bus_alloc_resource(i32 %18, i32 %19, i32* %9, i32 %20, i32 %21, i32 1, i32 %22)
  %24 = load %struct.ciu_softc*, %struct.ciu_softc** %6, align 8
  %25 = getelementptr inbounds %struct.ciu_softc, %struct.ciu_softc* %24, i32 0, i32 1
  store i32* %23, i32** %25, align 8
  %26 = load %struct.ciu_softc*, %struct.ciu_softc** %6, align 8
  %27 = getelementptr inbounds %struct.ciu_softc, %struct.ciu_softc* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %1
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @CIU_IRQ_HARD, align 4
  %33 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @ENXIO, align 4
  store i32 %34, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %119

35:                                               ; preds = %1
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.ciu_softc*, %struct.ciu_softc** %6, align 8
  %38 = getelementptr inbounds %struct.ciu_softc, %struct.ciu_softc* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* @INTR_TYPE_MISC, align 4
  %41 = load i32, i32* @ciu_intr, align 4
  %42 = load %struct.ciu_softc*, %struct.ciu_softc** %6, align 8
  %43 = call i32 @bus_setup_intr(i32 %36, i32* %39, i32 %40, i32 %41, i32* null, %struct.ciu_softc* %42, i32* null)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %35
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @device_printf(i32 %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %119

51:                                               ; preds = %35
  %52 = load i32, i32* @RMAN_ARRAY, align 4
  %53 = load %struct.ciu_softc*, %struct.ciu_softc** %6, align 8
  %54 = getelementptr inbounds %struct.ciu_softc, %struct.ciu_softc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 8
  %56 = load %struct.ciu_softc*, %struct.ciu_softc** %6, align 8
  %57 = getelementptr inbounds %struct.ciu_softc, %struct.ciu_softc* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %58, align 8
  %59 = load %struct.ciu_softc*, %struct.ciu_softc** %6, align 8
  %60 = getelementptr inbounds %struct.ciu_softc, %struct.ciu_softc* %59, i32 0, i32 0
  %61 = call i32 @rman_init(%struct.TYPE_3__* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %51
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %119

66:                                               ; preds = %51
  %67 = load %struct.ciu_softc*, %struct.ciu_softc** %6, align 8
  %68 = getelementptr inbounds %struct.ciu_softc, %struct.ciu_softc* %67, i32 0, i32 0
  %69 = load i32, i32* @CIU_IRQ_EN0_BEGIN, align 4
  %70 = load i32, i32* @CIU_IRQ_EN1_END, align 4
  %71 = call i32 @rman_manage_region(%struct.TYPE_3__* %68, i32 %69, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %119

76:                                               ; preds = %66
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %92, %76
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @CIU_IRQ_EN0_COUNT, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %77
  %82 = trunc i64 %13 to i32
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @CIU_IRQ_EN0_BEGIN, align 4
  %85 = add i32 %83, %84
  %86 = call i32 @snprintf(i8* %15, i32 %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  %87 = call i8* @mips_intrcnt_create(i8* %15)
  %88 = load i8**, i8*** @ciu_en0_intrcnt, align 8
  %89 = load i32, i32* %7, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  store i8* %87, i8** %91, align 8
  br label %92

92:                                               ; preds = %81
  %93 = load i32, i32* %7, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %77

95:                                               ; preds = %77
  store i32 0, i32* %7, align 4
  br label %96

96:                                               ; preds = %111, %95
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @CIU_IRQ_EN1_COUNT, align 4
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %100, label %114

100:                                              ; preds = %96
  %101 = trunc i64 %13 to i32
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @CIU_IRQ_EN1_BEGIN, align 4
  %104 = add i32 %102, %103
  %105 = call i32 @snprintf(i8* %15, i32 %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  %106 = call i8* @mips_intrcnt_create(i8* %15)
  %107 = load i8**, i8*** @ciu_en1_intrcnt, align 8
  %108 = load i32, i32* %7, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  store i8* %106, i8** %110, align 8
  br label %111

111:                                              ; preds = %100
  %112 = load i32, i32* %7, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %7, align 4
  br label %96

114:                                              ; preds = %96
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @bus_generic_probe(i32 %115)
  %117 = load i32, i32* %3, align 4
  %118 = call i32 @bus_generic_attach(i32 %117)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %119

119:                                              ; preds = %114, %74, %64, %46, %30
  %120 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.ciu_softc* @device_get_softc(i32) #2

declare dso_local i32* @bus_alloc_resource(i32, i32, i32*, i32, i32, i32, i32) #2

declare dso_local i32 @device_printf(i32, i8*, i32) #2

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32, i32*, %struct.ciu_softc*, i32*) #2

declare dso_local i32 @rman_init(%struct.TYPE_3__*) #2

declare dso_local i32 @rman_manage_region(%struct.TYPE_3__*, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i8* @mips_intrcnt_create(i8*) #2

declare dso_local i32 @bus_generic_probe(i32) #2

declare dso_local i32 @bus_generic_attach(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
