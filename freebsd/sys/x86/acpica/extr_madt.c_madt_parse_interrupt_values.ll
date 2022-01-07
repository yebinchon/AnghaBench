; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/acpica/extr_madt.c_madt_parse_interrupt_values.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/acpica/extr_madt.c_madt_parse_interrupt_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32, i64, i32 }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"MADT: Interrupt override: source %u, irq %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"bus for interrupt overrides must be zero\00", align 1
@AcpiGbl_FADT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@madt_found_sci_override = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"hw.acpi.sci.trigger\00", align 1
@INTR_TRIGGER_EDGE = common dso_local global i32 0, align 4
@INTR_TRIGGER_LEVEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Invalid trigger %s: must be 'edge' or 'level'\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"MADT: Forcing SCI to %s trigger\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"edge\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"hw.acpi.sci.polarity\00", align 1
@INTR_POLARITY_HIGH = common dso_local global i32 0, align 4
@INTR_POLARITY_LOW = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [45 x i8] c"Invalid polarity %s: must be 'high' or 'low'\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"MADT: Forcing SCI to active %s polarity\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"low\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @madt_parse_interrupt_values(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca [64 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %7, align 8
  %11 = load i64, i64* @bootverbose, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  br label %21

21:                                               ; preds = %13, %3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @KASSERT(i32 %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @interrupt_trigger(i32 %30, i32 %33)
  %35 = load i32*, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @interrupt_polarity(i32 %38, i32 %41)
  %43 = load i32*, i32** %6, align 8
  store i32 %42, i32* %43, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @AcpiGbl_FADT, i32 0, i32 0), align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %119

50:                                               ; preds = %21
  store i32 1, i32* @madt_found_sci_override, align 4
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %52 = call i64 @getenv_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %51, i32 64)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %84

54:                                               ; preds = %50
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %56 = load i8, i8* %55, align 16
  %57 = call signext i8 @tolower(i8 signext %56)
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 101
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* @INTR_TRIGGER_EDGE, align 4
  %62 = load i32*, i32** %5, align 8
  store i32 %61, i32* %62, align 4
  br label %76

63:                                               ; preds = %54
  %64 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %65 = load i8, i8* %64, align 16
  %66 = call signext i8 @tolower(i8 signext %65)
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 108
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* @INTR_TRIGGER_LEVEL, align 4
  %71 = load i32*, i32** %5, align 8
  store i32 %70, i32* %71, align 4
  br label %75

72:                                               ; preds = %63
  %73 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %74 = call i32 @panic(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %72, %69
  br label %76

76:                                               ; preds = %75, %60
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @INTR_TRIGGER_EDGE, align 4
  %80 = icmp eq i32 %78, %79
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %76, %50
  %85 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %86 = call i64 @getenv_string(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %85, i32 64)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %118

88:                                               ; preds = %84
  %89 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %90 = load i8, i8* %89, align 16
  %91 = call signext i8 @tolower(i8 signext %90)
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 104
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i32, i32* @INTR_POLARITY_HIGH, align 4
  %96 = load i32*, i32** %6, align 8
  store i32 %95, i32* %96, align 4
  br label %110

97:                                               ; preds = %88
  %98 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %99 = load i8, i8* %98, align 16
  %100 = call signext i8 @tolower(i8 signext %99)
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 108
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load i32, i32* @INTR_POLARITY_LOW, align 4
  %105 = load i32*, i32** %6, align 8
  store i32 %104, i32* %105, align 4
  br label %109

106:                                              ; preds = %97
  %107 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %108 = call i32 @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i8* %107)
  br label %109

109:                                              ; preds = %106, %103
  br label %110

110:                                              ; preds = %109, %94
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @INTR_POLARITY_HIGH, align 4
  %114 = icmp eq i32 %112, %113
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i8* %116)
  br label %118

118:                                              ; preds = %110, %84
  br label %119

119:                                              ; preds = %118, %21
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @interrupt_trigger(i32, i32) #1

declare dso_local i32 @interrupt_polarity(i32, i32) #1

declare dso_local i64 @getenv_string(i8*, i8*, i32) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i32 @panic(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
