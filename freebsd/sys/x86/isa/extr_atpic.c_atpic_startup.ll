; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_atpic.c_atpic_startup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_atpic.c_atpic_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atpic_intsrc = type { i32, i32, i32, i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i32*, i32* }
%struct.intsrc = type { i32 }
%struct.atpic = type { i64 }

@atpics = common dso_local global i32* null, align 8
@MASTER = common dso_local global i64 0, align 8
@SLAVE = common dso_local global i64 0, align 8
@atintrs = common dso_local global %struct.atpic_intsrc* null, align 8
@ICU_SLAVEID = common dso_local global i64 0, align 8
@NUM_ISA_IRQS = common dso_local global i32 0, align 4
@pti = common dso_local global i64 0, align 8
@SDT_ATPIC = common dso_local global i32 0, align 4
@SEL_KPL = common dso_local global i32 0, align 4
@GSEL_ATPIC = common dso_local global i32 0, align 4
@elcr_found = common dso_local global i64 0, align 8
@INTR_TRIGGER_EDGE = common dso_local global i32 0, align 4
@INTR_TRIGGER_LEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atpic_startup() #0 {
  %1 = alloca %struct.atpic_intsrc*, align 8
  %2 = alloca i32, align 4
  %3 = load i32*, i32** @atpics, align 8
  %4 = load i64, i64* @MASTER, align 8
  %5 = getelementptr inbounds i32, i32* %3, i64 %4
  %6 = call i32 @i8259_init(i32* %5, i32 0)
  %7 = load i32*, i32** @atpics, align 8
  %8 = load i64, i64* @SLAVE, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = call i32 @i8259_init(i32* %9, i32 1)
  %11 = load %struct.atpic_intsrc*, %struct.atpic_intsrc** @atintrs, align 8
  %12 = load i64, i64* @ICU_SLAVEID, align 8
  %13 = getelementptr inbounds %struct.atpic_intsrc, %struct.atpic_intsrc* %11, i64 %12
  %14 = bitcast %struct.atpic_intsrc* %13 to %struct.intsrc*
  %15 = call i32 @atpic_enable_source(%struct.intsrc* %14)
  store i32 0, i32* %2, align 4
  %16 = load %struct.atpic_intsrc*, %struct.atpic_intsrc** @atintrs, align 8
  store %struct.atpic_intsrc* %16, %struct.atpic_intsrc** %1, align 8
  br label %17

17:                                               ; preds = %65, %0
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @NUM_ISA_IRQS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %70

21:                                               ; preds = %17
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* @ICU_SLAVEID, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %65

27:                                               ; preds = %21
  %28 = load %struct.atpic_intsrc*, %struct.atpic_intsrc** %1, align 8
  %29 = getelementptr inbounds %struct.atpic_intsrc, %struct.atpic_intsrc* %28, i32 0, i32 6
  %30 = load %struct.atpic_intsrc*, %struct.atpic_intsrc** %1, align 8
  %31 = getelementptr inbounds %struct.atpic_intsrc, %struct.atpic_intsrc* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  store i32* %29, i32** %32, align 8
  %33 = load %struct.atpic_intsrc*, %struct.atpic_intsrc** %1, align 8
  %34 = getelementptr inbounds %struct.atpic_intsrc, %struct.atpic_intsrc* %33, i32 0, i32 5
  %35 = load %struct.atpic_intsrc*, %struct.atpic_intsrc** %1, align 8
  %36 = getelementptr inbounds %struct.atpic_intsrc, %struct.atpic_intsrc* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32* %34, i32** %37, align 8
  %38 = load %struct.atpic_intsrc*, %struct.atpic_intsrc** %1, align 8
  %39 = getelementptr inbounds %struct.atpic_intsrc, %struct.atpic_intsrc* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.atpic*
  %43 = getelementptr inbounds %struct.atpic, %struct.atpic* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.atpic_intsrc*, %struct.atpic_intsrc** %1, align 8
  %46 = getelementptr inbounds %struct.atpic_intsrc, %struct.atpic_intsrc* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = load i64, i64* @pti, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %27
  %52 = load %struct.atpic_intsrc*, %struct.atpic_intsrc** %1, align 8
  %53 = getelementptr inbounds %struct.atpic_intsrc, %struct.atpic_intsrc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  br label %59

55:                                               ; preds = %27
  %56 = load %struct.atpic_intsrc*, %struct.atpic_intsrc** %1, align 8
  %57 = getelementptr inbounds %struct.atpic_intsrc, %struct.atpic_intsrc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  br label %59

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %54, %51 ], [ %58, %55 ]
  %61 = load i32, i32* @SDT_ATPIC, align 4
  %62 = load i32, i32* @SEL_KPL, align 4
  %63 = load i32, i32* @GSEL_ATPIC, align 4
  %64 = call i32 @setidt(i64 %48, i32 %60, i32 %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %59, %26
  %66 = load i32, i32* %2, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %2, align 4
  %68 = load %struct.atpic_intsrc*, %struct.atpic_intsrc** %1, align 8
  %69 = getelementptr inbounds %struct.atpic_intsrc, %struct.atpic_intsrc* %68, i32 1
  store %struct.atpic_intsrc* %69, %struct.atpic_intsrc** %1, align 8
  br label %17

70:                                               ; preds = %17
  %71 = load i64, i64* @elcr_found, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  %74 = load %struct.atpic_intsrc*, %struct.atpic_intsrc** @atintrs, align 8
  store %struct.atpic_intsrc* %74, %struct.atpic_intsrc** %1, align 8
  br label %75

75:                                               ; preds = %84, %73
  %76 = load i32, i32* %2, align 4
  %77 = load i32, i32* @NUM_ISA_IRQS, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %75
  %80 = load i32, i32* %2, align 4
  %81 = call i32 @elcr_read_trigger(i32 %80)
  %82 = load %struct.atpic_intsrc*, %struct.atpic_intsrc** %1, align 8
  %83 = getelementptr inbounds %struct.atpic_intsrc, %struct.atpic_intsrc* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %79
  %85 = load i32, i32* %2, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %2, align 4
  %87 = load %struct.atpic_intsrc*, %struct.atpic_intsrc** %1, align 8
  %88 = getelementptr inbounds %struct.atpic_intsrc, %struct.atpic_intsrc* %87, i32 1
  store %struct.atpic_intsrc* %88, %struct.atpic_intsrc** %1, align 8
  br label %75

89:                                               ; preds = %75
  br label %113

90:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  %91 = load %struct.atpic_intsrc*, %struct.atpic_intsrc** @atintrs, align 8
  store %struct.atpic_intsrc* %91, %struct.atpic_intsrc** %1, align 8
  br label %92

92:                                               ; preds = %107, %90
  %93 = load i32, i32* %2, align 4
  %94 = load i32, i32* @NUM_ISA_IRQS, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %112

96:                                               ; preds = %92
  %97 = load i32, i32* %2, align 4
  switch i32 %97, label %102 [
    i32 0, label %98
    i32 1, label %98
    i32 2, label %98
    i32 8, label %98
    i32 13, label %98
  ]

98:                                               ; preds = %96, %96, %96, %96, %96
  %99 = load i32, i32* @INTR_TRIGGER_EDGE, align 4
  %100 = load %struct.atpic_intsrc*, %struct.atpic_intsrc** %1, align 8
  %101 = getelementptr inbounds %struct.atpic_intsrc, %struct.atpic_intsrc* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  br label %106

102:                                              ; preds = %96
  %103 = load i32, i32* @INTR_TRIGGER_LEVEL, align 4
  %104 = load %struct.atpic_intsrc*, %struct.atpic_intsrc** %1, align 8
  %105 = getelementptr inbounds %struct.atpic_intsrc, %struct.atpic_intsrc* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  br label %106

106:                                              ; preds = %102, %98
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %2, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %2, align 4
  %110 = load %struct.atpic_intsrc*, %struct.atpic_intsrc** %1, align 8
  %111 = getelementptr inbounds %struct.atpic_intsrc, %struct.atpic_intsrc* %110, i32 1
  store %struct.atpic_intsrc* %111, %struct.atpic_intsrc** %1, align 8
  br label %92

112:                                              ; preds = %92
  br label %113

113:                                              ; preds = %112, %89
  ret void
}

declare dso_local i32 @i8259_init(i32*, i32) #1

declare dso_local i32 @atpic_enable_source(%struct.intsrc*) #1

declare dso_local i32 @setidt(i64, i32, i32, i32, i32) #1

declare dso_local i32 @elcr_read_trigger(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
