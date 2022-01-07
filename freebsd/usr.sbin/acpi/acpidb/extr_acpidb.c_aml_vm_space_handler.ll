; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpidb/extr_acpidb.c_aml_vm_space_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpidb/extr_acpidb.c_aml_vm_space_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aml_vm_space_handler.space_names = internal global [7 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [14 x i8] c"SYSTEM_MEMORY\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"SYSTEM_IO\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"PCI_CONFIG\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"EC\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"SMBUS\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"CMOS\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"PCI_BAR_TARGET\00", align 1
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"[read (%s, %2d, 0x%jx)]\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"[write(%s, %2d, 0x%jx)]\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32*, i32)* @aml_vm_space_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml_vm_space_handler(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [256 x i8], align 16
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* %9, align 4
  switch i32 %19, label %121 [
    i32 129, label %20
    i32 128, label %76
  ]

20:                                               ; preds = %6
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %21

21:                                               ; preds = %43, %20
  %22 = load i32, i32* %17, align 4
  %23 = mul nsw i32 %22, 8
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %17, align 4
  %30 = add nsw i32 %28, %29
  %31 = call i32 @aml_simulate_regcontent_read(i32 %27, i32 %30, i32* %15)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %35, i32* %7, align 4
  br label %123

36:                                               ; preds = %26
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %17, align 4
  %39 = mul nsw i32 %38, 8
  %40 = shl i32 %37, %39
  %41 = load i32, i32* %16, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %16, align 4
  br label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %17, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %17, align 4
  br label %21

46:                                               ; preds = %21
  %47 = load i32, i32* %16, align 4
  %48 = load i32*, i32** %12, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %46
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [7 x i8*], [7 x i8*]* @aml_vm_space_handler.space_names, i64 0, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @sprintf(i8* %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* %56, i32 %57, i32 %58)
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %61 = load i32, i32* %16, align 4
  %62 = call i32 @aml_simulate_prompt(i8* %60, i32 %61)
  %63 = load i32*, i32** %12, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32*, i32** %12, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %16, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %51
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32*, i32** %12, align 8
  %73 = call i32 @aml_vm_space_handler(i32 %69, i32 128, i32 %70, i32 %71, i32* %72, i32 0)
  store i32 %73, i32* %7, align 4
  br label %123

74:                                               ; preds = %51
  br label %75

75:                                               ; preds = %74, %46
  br label %121

76:                                               ; preds = %6
  %77 = load i32*, i32** %12, align 8
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %76
  %82 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [7 x i8*], [7 x i8*]* @aml_vm_space_handler.space_names, i64 0, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @sprintf(i8* %82, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %86, i32 %87, i32 %88)
  %90 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %91 = load i32*, i32** %12, align 8
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @aml_simulate_prompt(i8* %90, i32 %92)
  store i32 %93, i32* %16, align 4
  br label %94

94:                                               ; preds = %81, %76
  %95 = load i32, i32* %16, align 4
  %96 = load i32*, i32** %12, align 8
  store i32 %95, i32* %96, align 4
  store i32 0, i32* %17, align 4
  br label %97

97:                                               ; preds = %117, %94
  %98 = load i32, i32* %17, align 4
  %99 = mul nsw i32 %98, 8
  %100 = load i32, i32* %11, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %120

102:                                              ; preds = %97
  %103 = load i32, i32* %16, align 4
  %104 = and i32 %103, 255
  store i32 %104, i32* %15, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %17, align 4
  %108 = add nsw i32 %106, %107
  %109 = call i32 @aml_simulate_regcontent_write(i32 %105, i32 %108, i32* %15)
  store i32 %109, i32* %14, align 4
  %110 = load i32, i32* %14, align 4
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %112, label %114

112:                                              ; preds = %102
  %113 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %113, i32* %7, align 4
  br label %123

114:                                              ; preds = %102
  %115 = load i32, i32* %16, align 4
  %116 = ashr i32 %115, 8
  store i32 %116, i32* %16, align 4
  br label %117

117:                                              ; preds = %114
  %118 = load i32, i32* %17, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %17, align 4
  br label %97

120:                                              ; preds = %97
  br label %121

121:                                              ; preds = %120, %6, %75
  %122 = load i32, i32* @AE_OK, align 4
  store i32 %122, i32* %7, align 4
  br label %123

123:                                              ; preds = %121, %112, %68, %34
  %124 = load i32, i32* %7, align 4
  ret i32 %124
}

declare dso_local i32 @aml_simulate_regcontent_read(i32, i32, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @aml_simulate_prompt(i8*, i32) #1

declare dso_local i32 @aml_simulate_regcontent_write(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
