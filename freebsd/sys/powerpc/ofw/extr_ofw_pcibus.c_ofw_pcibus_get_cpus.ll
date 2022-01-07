; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_ofw_pcibus.c_ofw_pcibus_get_cpus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_ofw_pcibus.c_ofw_pcibus_get_cpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@cpuset_domain = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ofw_pcibus_get_cpus(i32 %0, i32 %1, i32 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @ofw_pcibus_parse_associativity(i32 %14, i32* %12)
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %5
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i64, i64* %10, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = call i32 @bus_generic_get_cpus(i32 %19, i32 %20, i32 %21, i64 %22, i32* %23)
  store i32 %24, i32* %6, align 4
  br label %69

25:                                               ; preds = %5
  %26 = load i32, i32* %9, align 4
  switch i32 %26, label %62 [
    i32 128, label %27
    i32 129, label %39
  ]

27:                                               ; preds = %25
  %28 = load i64, i64* %10, align 8
  %29 = icmp ne i64 %28, 4
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %6, align 4
  br label %69

32:                                               ; preds = %27
  %33 = load i32*, i32** @cpuset_domain, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %11, align 8
  store i32 %37, i32* %38, align 4
  store i32 0, i32* %6, align 4
  br label %69

39:                                               ; preds = %25
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i64, i64* %10, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @bus_generic_get_cpus(i32 %40, i32 %41, i32 %42, i64 %43, i32* %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %6, align 4
  br label %69

50:                                               ; preds = %39
  %51 = load i64, i64* %10, align 8
  %52 = icmp ne i64 %51, 4
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %6, align 4
  br label %69

55:                                               ; preds = %50
  %56 = load i32*, i32** %11, align 8
  %57 = load i32*, i32** @cpuset_domain, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = call i32 @CPU_AND(i32* %56, i32* %60)
  store i32 0, i32* %6, align 4
  br label %69

62:                                               ; preds = %25
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i64, i64* %10, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @bus_generic_get_cpus(i32 %63, i32 %64, i32 %65, i64 %66, i32* %67)
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %62, %55, %53, %48, %32, %30, %18
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @ofw_pcibus_parse_associativity(i32, i32*) #1

declare dso_local i32 @bus_generic_get_cpus(i32, i32, i32, i64, i32*) #1

declare dso_local i32 @CPU_AND(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
