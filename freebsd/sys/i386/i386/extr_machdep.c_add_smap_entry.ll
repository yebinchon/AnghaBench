; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_machdep.c_add_smap_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_machdep.c_add_smap_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_smap = type { i32, i32, i32 }

@boothowto = common dso_local global i32 0, align 4
@RB_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"SMAP type=%02x base=%016llx len=%016llx\0A\00", align 1
@SMAP_TYPE_MEMORY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bios_smap*, i32*, i32*)* @add_smap_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_smap_entry(%struct.bios_smap* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bios_smap*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.bios_smap* %0, %struct.bios_smap** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* @boothowto, align 4
  %9 = load i32, i32* @RB_VERBOSE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %3
  %13 = load %struct.bios_smap*, %struct.bios_smap** %5, align 8
  %14 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.bios_smap*, %struct.bios_smap** %5, align 8
  %17 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.bios_smap*, %struct.bios_smap** %5, align 8
  %20 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21)
  br label %23

23:                                               ; preds = %12, %3
  %24 = load %struct.bios_smap*, %struct.bios_smap** %5, align 8
  %25 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* @SMAP_TYPE_MEMORY, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 1, i32* %4, align 4
  br label %41

31:                                               ; preds = %23
  %32 = load %struct.bios_smap*, %struct.bios_smap** %5, align 8
  %33 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.bios_smap*, %struct.bios_smap** %5, align 8
  %36 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @add_physmap_entry(i32 %34, i32 %37, i32* %38, i32* %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %31, %30
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

declare dso_local i32 @add_physmap_entry(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
