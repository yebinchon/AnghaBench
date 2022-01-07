; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpidb/extr_acpidb.c_aml_simulate_regcontent_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpidb/extr_acpidb.c_aml_simulate_regcontent_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ACPIRegionContent = type { i32, i32, i32 }

@RegionContentList = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @aml_simulate_regcontent_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml_simulate_regcontent_add(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ACPIRegionContent*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = call %struct.ACPIRegionContent* @malloc(i32 12)
  store %struct.ACPIRegionContent* %9, %struct.ACPIRegionContent** %8, align 8
  %10 = load %struct.ACPIRegionContent*, %struct.ACPIRegionContent** %8, align 8
  %11 = icmp eq %struct.ACPIRegionContent* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %26

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.ACPIRegionContent*, %struct.ACPIRegionContent** %8, align 8
  %16 = getelementptr inbounds %struct.ACPIRegionContent, %struct.ACPIRegionContent* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.ACPIRegionContent*, %struct.ACPIRegionContent** %8, align 8
  %19 = getelementptr inbounds %struct.ACPIRegionContent, %struct.ACPIRegionContent* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.ACPIRegionContent*, %struct.ACPIRegionContent** %8, align 8
  %22 = getelementptr inbounds %struct.ACPIRegionContent, %struct.ACPIRegionContent* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.ACPIRegionContent*, %struct.ACPIRegionContent** %8, align 8
  %24 = load i32, i32* @links, align 4
  %25 = call i32 @TAILQ_INSERT_TAIL(i32* @RegionContentList, %struct.ACPIRegionContent* %23, i32 %24)
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %13, %12
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local %struct.ACPIRegionContent* @malloc(i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.ACPIRegionContent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
