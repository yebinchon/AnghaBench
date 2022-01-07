; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpidb/extr_acpidb.c_aml_simulation_regload.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpidb/extr_acpidb.c_aml_simulation_regload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ACPIRegionContent = type { i8*, i8*, i8* }

@aml_simulation_initialized = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @aml_simulation_regload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aml_simulation_regload(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ACPIRegionContent, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i32, i32* @aml_simulation_initialized, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %59

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  %13 = call i32* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %7, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %59

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %49, %48, %39, %30, %16
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %19 = load i32*, i32** %7, align 8
  %20 = call i32* @fgets(i8* %18, i32 256, i32* %19)
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %56

22:                                               ; preds = %17
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  store i8* %23, i8** %4, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i8* @strtoq(i8* %24, i8** %5, i32 10)
  %26 = getelementptr inbounds %struct.ACPIRegionContent, %struct.ACPIRegionContent* %6, i32 0, i32 2
  store i8* %25, i8** %26, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = icmp eq i8* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %17

31:                                               ; preds = %22
  %32 = load i8*, i8** %5, align 8
  store i8* %32, i8** %4, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i8* @strtoq(i8* %33, i8** %5, i32 16)
  %35 = getelementptr inbounds %struct.ACPIRegionContent, %struct.ACPIRegionContent* %6, i32 0, i32 1
  store i8* %34, i8** %35, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = icmp eq i8* %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %17

40:                                               ; preds = %31
  %41 = load i8*, i8** %5, align 8
  store i8* %41, i8** %4, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = call i8* @strtoq(i8* %42, i8** %5, i32 16)
  %44 = getelementptr inbounds %struct.ACPIRegionContent, %struct.ACPIRegionContent* %6, i32 0, i32 0
  store i8* %43, i8** %44, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = icmp eq i8* %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %17

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.ACPIRegionContent, %struct.ACPIRegionContent* %6, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds %struct.ACPIRegionContent, %struct.ACPIRegionContent* %6, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds %struct.ACPIRegionContent, %struct.ACPIRegionContent* %6, i32 0, i32 0
  %55 = call i32 @aml_simulate_regcontent_write(i8* %51, i8* %53, i8** %54)
  br label %17

56:                                               ; preds = %17
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @fclose(i32* %57)
  br label %59

59:                                               ; preds = %56, %15, %10
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strtoq(i8*, i8**, i32) #1

declare dso_local i32 @aml_simulate_regcontent_write(i8*, i8*, i8**) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
