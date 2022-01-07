; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpidb/extr_acpidb.c_aml_simulation_regdump.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpidb/extr_acpidb.c_aml_simulation_regdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ACPIRegionContent = type { i32, i32, i64 }

@aml_simulation_initialized = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@RegionContentList = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"%d\090x%jx\090x%x\0A\00", align 1
@links = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @aml_simulation_regdump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aml_simulation_regdump(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ACPIRegionContent*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @aml_simulation_initialized, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %43

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = call i32* @fopen(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** %4, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  br label %43

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %20, %15
  %17 = call i32 @TAILQ_EMPTY(i32* @RegionContentList)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %39

20:                                               ; preds = %16
  %21 = call %struct.ACPIRegionContent* @TAILQ_FIRST(i32* @RegionContentList)
  store %struct.ACPIRegionContent* %21, %struct.ACPIRegionContent** %3, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.ACPIRegionContent*, %struct.ACPIRegionContent** %3, align 8
  %24 = getelementptr inbounds %struct.ACPIRegionContent, %struct.ACPIRegionContent* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ACPIRegionContent*, %struct.ACPIRegionContent** %3, align 8
  %27 = getelementptr inbounds %struct.ACPIRegionContent, %struct.ACPIRegionContent* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = load %struct.ACPIRegionContent*, %struct.ACPIRegionContent** %3, align 8
  %31 = getelementptr inbounds %struct.ACPIRegionContent, %struct.ACPIRegionContent* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @fprintf(i32* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %25, i32 %29, i32 %32)
  %34 = load %struct.ACPIRegionContent*, %struct.ACPIRegionContent** %3, align 8
  %35 = load i32, i32* @links, align 4
  %36 = call i32 @TAILQ_REMOVE(i32* @RegionContentList, %struct.ACPIRegionContent* %34, i32 %35)
  %37 = load %struct.ACPIRegionContent*, %struct.ACPIRegionContent** %3, align 8
  %38 = call i32 @free(%struct.ACPIRegionContent* %37)
  br label %16

39:                                               ; preds = %16
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @fclose(i32* %40)
  %42 = call i32 @TAILQ_INIT(i32* @RegionContentList)
  br label %43

43:                                               ; preds = %39, %12, %7
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.ACPIRegionContent* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.ACPIRegionContent*, i32) #1

declare dso_local i32 @free(%struct.ACPIRegionContent*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
