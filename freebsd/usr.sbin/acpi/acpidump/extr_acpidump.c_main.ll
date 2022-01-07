; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpidump/extr_acpidump.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpidump/extr_acpidump.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"dhtvf:o:\00", align 1
@dflag = common dso_local global i64 0, align 8
@tflag = common dso_local global i64 0, align 8
@vflag = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"Need to specify -d or -t with DSDT input file\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Can't use -t with DSDT input file\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"loading DSDT file: %s\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"loading RSD PTR from /dev/mem\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"printing various SDT tables\00", align 1
@ACPI_SIG_FADT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"saving DSDT file: %s\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"disassembling DSDT, iasl messages follow\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"iasl processing complete\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %10, align 8
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %9, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 @usage(i8* %18)
  br label %20

20:                                               ; preds = %17, %2
  br label %21

21:                                               ; preds = %39, %20
  %22 = load i32, i32* %4, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = call i32 @getopt(i32 %22, i8** %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %8, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %40

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  switch i32 %27, label %36 [
    i32 100, label %28
    i32 116, label %29
    i32 118, label %30
    i32 102, label %31
    i32 111, label %33
    i32 104, label %35
  ]

28:                                               ; preds = %26
  store i64 1, i64* @dflag, align 8
  br label %39

29:                                               ; preds = %26
  store i64 1, i64* @tflag, align 8
  br label %39

30:                                               ; preds = %26
  store i32 1, i32* @vflag, align 4
  br label %39

31:                                               ; preds = %26
  %32 = load i8*, i8** @optarg, align 8
  store i8* %32, i8** %10, align 8
  br label %39

33:                                               ; preds = %26
  %34 = load i8*, i8** @optarg, align 8
  store i8* %34, i8** %11, align 8
  br label %39

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %26, %35
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @usage(i8* %37)
  br label %39

39:                                               ; preds = %36, %33, %31, %30, %29, %28
  br label %21

40:                                               ; preds = %21
  %41 = load i64, i64* @optind, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = sub nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %4, align 4
  %46 = load i64, i64* @optind, align 8
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 %46
  store i8** %48, i8*** %5, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %78

51:                                               ; preds = %40
  %52 = load i64, i64* @dflag, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load i64, i64* @tflag, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @usage(i8* %59)
  br label %69

61:                                               ; preds = %54, %51
  %62 = load i64, i64* @tflag, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 @usage(i8* %66)
  br label %68

68:                                               ; preds = %64, %61
  br label %69

69:                                               ; preds = %68, %57
  %70 = load i32, i32* @vflag, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i8*, i8** %10, align 8
  %74 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i8*, i8** %10, align 8
  %77 = call i32* @dsdt_load_file(i8* %76)
  store i32* %77, i32** %6, align 8
  br label %85

78:                                               ; preds = %40
  %79 = load i32, i32* @vflag, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %78
  %84 = call i32* (...) @sdt_load_devmem()
  store i32* %84, i32** %6, align 8
  br label %85

85:                                               ; preds = %83, %75
  %86 = load i64, i64* @tflag, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load i32, i32* @vflag, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %88
  %94 = load i32*, i32** %6, align 8
  %95 = call i32 @sdt_print_all(i32* %94)
  br label %96

96:                                               ; preds = %93, %85
  %97 = load i8*, i8** %10, align 8
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i32*, i32** %6, align 8
  %101 = load i32, i32* @ACPI_SIG_FADT, align 4
  %102 = call i32* @sdt_from_rsdt(i32* %100, i32 %101, i32* null)
  store i32* %102, i32** %7, align 8
  %103 = load i32*, i32** %7, align 8
  %104 = call i32* @dsdt_from_fadt(i32* %103)
  store i32* %104, i32** %7, align 8
  br label %107

105:                                              ; preds = %96
  %106 = load i32*, i32** %6, align 8
  store i32* %106, i32** %7, align 8
  store i32* null, i32** %6, align 8
  br label %107

107:                                              ; preds = %105, %99
  %108 = load i8*, i8** %11, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %121

110:                                              ; preds = %107
  %111 = load i32, i32* @vflag, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i8*, i8** %11, align 8
  %115 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %114)
  br label %116

116:                                              ; preds = %113, %110
  %117 = load i8*, i8** %11, align 8
  %118 = load i32*, i32** %6, align 8
  %119 = load i32*, i32** %7, align 8
  %120 = call i32 @dsdt_save_file(i8* %117, i32* %118, i32* %119)
  br label %121

121:                                              ; preds = %116, %107
  %122 = load i64, i64* @dflag, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %138

124:                                              ; preds = %121
  %125 = load i32, i32* @vflag, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %129

129:                                              ; preds = %127, %124
  %130 = load i32*, i32** %6, align 8
  %131 = load i32*, i32** %7, align 8
  %132 = call i32 @aml_disassemble(i32* %130, i32* %131)
  %133 = load i32, i32* @vflag, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %129
  br label %138

138:                                              ; preds = %137, %121
  %139 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32* @dsdt_load_file(i8*) #1

declare dso_local i32* @sdt_load_devmem(...) #1

declare dso_local i32 @sdt_print_all(i32*) #1

declare dso_local i32* @sdt_from_rsdt(i32*, i32, i32*) #1

declare dso_local i32* @dsdt_from_fadt(i32*) #1

declare dso_local i32 @dsdt_save_file(i8*, i32*, i32*) #1

declare dso_local i32 @aml_disassemble(i32*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
