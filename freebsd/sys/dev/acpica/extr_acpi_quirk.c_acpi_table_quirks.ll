; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_quirk.c_acpi_table_quirks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_quirk.c_acpi_table_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_q_entry = type { i32, %struct.acpi_q_rule* }
%struct.acpi_q_rule = type { i8* }

@.str = private unnamed_addr constant [24 x i8] c"acpi quirks ptr is NULL\00", align 1
@ACPI_SIG_FADT = common dso_local global i8* null, align 8
@ACPI_SIG_DSDT = common dso_local global i8* null, align 8
@ACPI_SIG_XSDT = common dso_local global i8* null, align 8
@acpi_quirks_table = common dso_local global %struct.acpi_q_entry* null, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"FADT\00", align 1
@ACPI_NAMESEG_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid quirk header\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_table_quirks(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.acpi_q_entry*, align 8
  %4 = alloca %struct.acpi_q_rule*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = icmp ne i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @acpi_machdep_quirks(i32* %14)
  %16 = load i8*, i8** @ACPI_SIG_FADT, align 8
  %17 = call i32 @AcpiGetTableHeader(i8* %16, i32 0, i32* %5)
  %18 = call i64 @ACPI_FAILURE(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = call i32 @bzero(i32* %5, i32 4)
  br label %22

22:                                               ; preds = %20, %1
  %23 = load i8*, i8** @ACPI_SIG_DSDT, align 8
  %24 = call i32 @AcpiGetTableHeader(i8* %23, i32 0, i32* %6)
  %25 = call i64 @ACPI_FAILURE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 @bzero(i32* %6, i32 4)
  br label %29

29:                                               ; preds = %27, %22
  %30 = load i8*, i8** @ACPI_SIG_XSDT, align 8
  %31 = call i32 @AcpiGetTableHeader(i8* %30, i32 0, i32* %7)
  %32 = call i64 @ACPI_FAILURE(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 @bzero(i32* %7, i32 4)
  br label %36

36:                                               ; preds = %34, %29
  %37 = load %struct.acpi_q_entry*, %struct.acpi_q_entry** @acpi_quirks_table, align 8
  store %struct.acpi_q_entry* %37, %struct.acpi_q_entry** %3, align 8
  br label %38

38:                                               ; preds = %107, %36
  %39 = load %struct.acpi_q_entry*, %struct.acpi_q_entry** %3, align 8
  %40 = getelementptr inbounds %struct.acpi_q_entry, %struct.acpi_q_entry* %39, i32 0, i32 1
  %41 = load %struct.acpi_q_rule*, %struct.acpi_q_rule** %40, align 8
  %42 = icmp ne %struct.acpi_q_rule* %41, null
  br i1 %42, label %43, label %110

43:                                               ; preds = %38
  %44 = load i32, i32* @TRUE, align 4
  store i32 %44, i32* %9, align 4
  %45 = load %struct.acpi_q_entry*, %struct.acpi_q_entry** %3, align 8
  %46 = getelementptr inbounds %struct.acpi_q_entry, %struct.acpi_q_entry* %45, i32 0, i32 1
  %47 = load %struct.acpi_q_rule*, %struct.acpi_q_rule** %46, align 8
  store %struct.acpi_q_rule* %47, %struct.acpi_q_rule** %4, align 8
  br label %48

48:                                               ; preds = %95, %43
  %49 = load %struct.acpi_q_rule*, %struct.acpi_q_rule** %4, align 8
  %50 = getelementptr inbounds %struct.acpi_q_rule, %struct.acpi_q_rule* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %98

56:                                               ; preds = %48
  %57 = load %struct.acpi_q_rule*, %struct.acpi_q_rule** %4, align 8
  %58 = getelementptr inbounds %struct.acpi_q_rule, %struct.acpi_q_rule* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* @ACPI_NAMESEG_SIZE, align 4
  %61 = call i32 @strncmp(i8* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  store i32* %5, i32** %8, align 8
  br label %86

64:                                               ; preds = %56
  %65 = load %struct.acpi_q_rule*, %struct.acpi_q_rule** %4, align 8
  %66 = getelementptr inbounds %struct.acpi_q_rule, %struct.acpi_q_rule* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i8*, i8** @ACPI_SIG_DSDT, align 8
  %69 = load i32, i32* @ACPI_NAMESEG_SIZE, align 4
  %70 = call i32 @strncmp(i8* %67, i8* %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %64
  store i32* %6, i32** %8, align 8
  br label %85

73:                                               ; preds = %64
  %74 = load %struct.acpi_q_rule*, %struct.acpi_q_rule** %4, align 8
  %75 = getelementptr inbounds %struct.acpi_q_rule, %struct.acpi_q_rule* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i8*, i8** @ACPI_SIG_XSDT, align 8
  %78 = load i32, i32* @ACPI_NAMESEG_SIZE, align 4
  %79 = call i32 @strncmp(i8* %76, i8* %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %73
  store i32* %7, i32** %8, align 8
  br label %84

82:                                               ; preds = %73
  %83 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %81
  br label %85

85:                                               ; preds = %84, %72
  br label %86

86:                                               ; preds = %85, %63
  %87 = load i32*, i32** %8, align 8
  %88 = load %struct.acpi_q_rule*, %struct.acpi_q_rule** %4, align 8
  %89 = call i32 @aq_match_header(i32* %87, %struct.acpi_q_rule* %88)
  %90 = load i32, i32* @FALSE, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* @FALSE, align 4
  store i32 %93, i32* %9, align 4
  br label %98

94:                                               ; preds = %86
  br label %95

95:                                               ; preds = %94
  %96 = load %struct.acpi_q_rule*, %struct.acpi_q_rule** %4, align 8
  %97 = getelementptr inbounds %struct.acpi_q_rule, %struct.acpi_q_rule* %96, i32 1
  store %struct.acpi_q_rule* %97, %struct.acpi_q_rule** %4, align 8
  br label %48

98:                                               ; preds = %92, %48
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load %struct.acpi_q_entry*, %struct.acpi_q_entry** %3, align 8
  %103 = getelementptr inbounds %struct.acpi_q_entry, %struct.acpi_q_entry* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32*, i32** %2, align 8
  store i32 %104, i32* %105, align 4
  br label %110

106:                                              ; preds = %98
  br label %107

107:                                              ; preds = %106
  %108 = load %struct.acpi_q_entry*, %struct.acpi_q_entry** %3, align 8
  %109 = getelementptr inbounds %struct.acpi_q_entry, %struct.acpi_q_entry* %108, i32 1
  store %struct.acpi_q_entry* %109, %struct.acpi_q_entry** %3, align 8
  br label %38

110:                                              ; preds = %101, %38
  ret i32 0
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @acpi_machdep_quirks(i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiGetTableHeader(i8*, i32, i32*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @aq_match_header(i32*, %struct.acpi_q_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
