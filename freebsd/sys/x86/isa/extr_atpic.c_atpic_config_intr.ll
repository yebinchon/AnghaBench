; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_atpic.c_atpic_config_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_atpic.c_atpic_config_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intsrc = type { i32 }
%struct.atpic_intsrc = type { i32 }

@INTR_TRIGGER_CONFORM = common dso_local global i32 0, align 4
@INTR_TRIGGER_EDGE = common dso_local global i32 0, align 4
@INTR_POLARITY_CONFORM = common dso_local global i32 0, align 4
@INTR_POLARITY_HIGH = common dso_local global i32 0, align 4
@INTR_POLARITY_LOW = common dso_local global i32 0, align 4
@INTR_TRIGGER_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"atpic: Mismatched config for IRQ%u: trigger %s, polarity %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"edge\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [59 x i8] c"atpic: Ignoring invalid level/low configuration for IRQ%u\0A\00", align 1
@elcr_found = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"atpic: No ELCR to configure IRQ%u as %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"edge/high\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"level/low\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"atpic: Programming IRQ%u as %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intsrc*, i32, i32)* @atpic_config_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atpic_config_intr(%struct.intsrc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intsrc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.atpic_intsrc*, align 8
  %9 = alloca i32, align 4
  store %struct.intsrc* %0, %struct.intsrc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.intsrc*, %struct.intsrc** %5, align 8
  %11 = bitcast %struct.intsrc* %10 to %struct.atpic_intsrc*
  store %struct.atpic_intsrc* %11, %struct.atpic_intsrc** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @INTR_TRIGGER_CONFORM, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @INTR_TRIGGER_EDGE, align 4
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %15, %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @INTR_POLARITY_CONFORM, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @INTR_POLARITY_HIGH, align 4
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %21, %17
  %24 = load %struct.intsrc*, %struct.intsrc** %5, align 8
  %25 = call i32 @atpic_vector(%struct.intsrc* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @INTR_TRIGGER_EDGE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @INTR_POLARITY_LOW, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %41, label %33

33:                                               ; preds = %29, %23
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @INTR_TRIGGER_LEVEL, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @INTR_POLARITY_HIGH, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %37, %29
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @INTR_TRIGGER_EDGE, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @INTR_POLARITY_HIGH, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %53 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %42, i8* %47, i8* %52)
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %4, align 4
  br label %123

55:                                               ; preds = %37, %33
  %56 = load %struct.atpic_intsrc*, %struct.atpic_intsrc** %8, align 8
  %57 = getelementptr inbounds %struct.atpic_intsrc, %struct.atpic_intsrc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %123

62:                                               ; preds = %55
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %9, align 4
  %73 = icmp eq i32 %72, 13
  br i1 %73, label %74, label %86

74:                                               ; preds = %71, %68, %65, %62
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @INTR_TRIGGER_LEVEL, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = load i64, i64* @bootverbose, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* %9, align 4
  %83 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i32, i32* @EINVAL, align 4
  store i32 %85, i32* %4, align 4
  br label %123

86:                                               ; preds = %74, %71
  %87 = load i32, i32* @elcr_found, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %102, label %89

89:                                               ; preds = %86
  %90 = load i64, i64* @bootverbose, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @INTR_TRIGGER_EDGE, align 4
  %96 = icmp eq i32 %94, %95
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)
  %99 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %93, i8* %98)
  br label %100

100:                                              ; preds = %92, %89
  %101 = load i32, i32* @ENXIO, align 4
  store i32 %101, i32* %4, align 4
  br label %123

102:                                              ; preds = %86
  %103 = load i64, i64* @bootverbose, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @INTR_TRIGGER_EDGE, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)
  %112 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %106, i8* %111)
  br label %113

113:                                              ; preds = %105, %102
  %114 = call i32 (...) @spinlock_enter()
  %115 = load %struct.intsrc*, %struct.intsrc** %5, align 8
  %116 = call i32 @atpic_vector(%struct.intsrc* %115)
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @elcr_write_trigger(i32 %116, i32 %117)
  %119 = load i32, i32* %6, align 4
  %120 = load %struct.atpic_intsrc*, %struct.atpic_intsrc** %8, align 8
  %121 = getelementptr inbounds %struct.atpic_intsrc, %struct.atpic_intsrc* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  %122 = call i32 (...) @spinlock_exit()
  store i32 0, i32* %4, align 4
  br label %123

123:                                              ; preds = %113, %100, %84, %61, %41
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @atpic_vector(%struct.intsrc*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @spinlock_enter(...) #1

declare dso_local i32 @elcr_write_trigger(i32, i32) #1

declare dso_local i32 @spinlock_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
