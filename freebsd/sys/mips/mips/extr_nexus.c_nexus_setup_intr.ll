; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_nexus.c_nexus_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_nexus.c_nexus_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@NUM_MIPS_IRQS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.resource*, i32, i32*, i32*, i8*, i8**)* @nexus_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nexus_setup_intr(i32 %0, i32 %1, %struct.resource* %2, i32 %3, i32* %4, i32* %5, i8* %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.resource*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store %struct.resource* %2, %struct.resource** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8** %7, i8*** %17, align 8
  %20 = call i32 (...) @intr_disable()
  store i32 %20, i32* %19, align 4
  %21 = load %struct.resource*, %struct.resource** %12, align 8
  %22 = call i32 @rman_get_start(%struct.resource* %21)
  store i32 %22, i32* %18, align 4
  %23 = load i32, i32* %18, align 4
  %24 = load i32, i32* @NUM_MIPS_IRQS, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %8
  %27 = load i32, i32* %19, align 4
  %28 = call i32 @intr_restore(i32 %27)
  store i32 0, i32* %9, align 4
  br label %41

29:                                               ; preds = %8
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @device_get_nameunit(i32 %30)
  %32 = load i32*, i32** %14, align 8
  %33 = load i32*, i32** %15, align 8
  %34 = load i8*, i8** %16, align 8
  %35 = load i32, i32* %18, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i8**, i8*** %17, align 8
  %38 = call i32 @cpu_establish_hardintr(i32 %31, i32* %32, i32* %33, i8* %34, i32 %35, i32 %36, i8** %37)
  %39 = load i32, i32* %19, align 4
  %40 = call i32 @intr_restore(i32 %39)
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %29, %26
  %42 = load i32, i32* %9, align 4
  ret i32 %42
}

declare dso_local i32 @intr_disable(...) #1

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @intr_restore(i32) #1

declare dso_local i32 @cpu_establish_hardintr(i32, i32*, i32*, i8*, i32, i32, i8**) #1

declare dso_local i32 @device_get_nameunit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
