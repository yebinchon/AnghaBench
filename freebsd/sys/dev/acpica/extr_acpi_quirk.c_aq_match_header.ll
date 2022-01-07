; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_quirk.c_aq_match_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_quirk.c_aq_match_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.acpi_q_rule = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.acpi_q_rule*)* @aq_match_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aq_match_header(%struct.TYPE_7__* %0, %struct.acpi_q_rule* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.acpi_q_rule*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.acpi_q_rule* %1, %struct.acpi_q_rule** %4, align 8
  %6 = load i32, i32* @FALSE, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.acpi_q_rule*, %struct.acpi_q_rule** %4, align 8
  %8 = getelementptr inbounds %struct.acpi_q_rule, %struct.acpi_q_rule* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %80 [
    i32 129, label %10
    i32 131, label %33
    i32 128, label %46
    i32 130, label %63
  ]

10:                                               ; preds = %2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.acpi_q_rule*, %struct.acpi_q_rule** %4, align 8
  %15 = getelementptr inbounds %struct.acpi_q_rule, %struct.acpi_q_rule* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @aq_strcmp(i32 %13, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %10
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.acpi_q_rule*, %struct.acpi_q_rule** %4, align 8
  %25 = getelementptr inbounds %struct.acpi_q_rule, %struct.acpi_q_rule* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @aq_strcmp(i32 %23, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* @TRUE, align 4
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %30, %20, %10
  br label %80

33:                                               ; preds = %2
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.acpi_q_rule*, %struct.acpi_q_rule** %4, align 8
  %38 = getelementptr inbounds %struct.acpi_q_rule, %struct.acpi_q_rule* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @aq_strcmp(i32 %36, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* @TRUE, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %43, %33
  br label %80

46:                                               ; preds = %2
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.acpi_q_rule*, %struct.acpi_q_rule** %4, align 8
  %51 = getelementptr inbounds %struct.acpi_q_rule, %struct.acpi_q_rule* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.acpi_q_rule*, %struct.acpi_q_rule** %4, align 8
  %55 = getelementptr inbounds %struct.acpi_q_rule, %struct.acpi_q_rule* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @aq_revcmp(i32 %49, i32 %53, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %46
  %61 = load i32, i32* @TRUE, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %60, %46
  br label %80

63:                                               ; preds = %2
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.acpi_q_rule*, %struct.acpi_q_rule** %4, align 8
  %68 = getelementptr inbounds %struct.acpi_q_rule, %struct.acpi_q_rule* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.acpi_q_rule*, %struct.acpi_q_rule** %4, align 8
  %72 = getelementptr inbounds %struct.acpi_q_rule, %struct.acpi_q_rule* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @aq_revcmp(i32 %66, i32 %70, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %63
  %78 = load i32, i32* @TRUE, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %77, %63
  br label %80

80:                                               ; preds = %2, %79, %62, %45, %32
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @aq_strcmp(i32, i32) #1

declare dso_local i32 @aq_revcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
