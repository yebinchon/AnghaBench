; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/isa/extr_ofw_isa.c_ofw_isa_range_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/isa/extr_ofw_isa.c_ofw_isa_range_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isa_ranges = type { i64 }

@.str = private unnamed_addr constant [74 x i8] c"ofw_isa_map_iorange: iorange crosses PCI ranges (%#lx not in %#lx - %#lx)\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"ofw_isa_map_iorange: could not map range %#lx - %#lx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ofw_isa_range_map(%struct.isa_ranges* %0, i32 %1, i64* %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.isa_ranges*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.isa_ranges*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.isa_ranges* %0, %struct.isa_ranges** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %85, %5
  %18 = load i32, i32* %16, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %88

21:                                               ; preds = %17
  %22 = load %struct.isa_ranges*, %struct.isa_ranges** %7, align 8
  %23 = load i32, i32* %16, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.isa_ranges, %struct.isa_ranges* %22, i64 %24
  store %struct.isa_ranges* %25, %struct.isa_ranges** %12, align 8
  %26 = load %struct.isa_ranges*, %struct.isa_ranges** %12, align 8
  %27 = call i64 @ISA_RANGE_CHILD(%struct.isa_ranges* %26)
  store i64 %27, i64* %14, align 8
  %28 = load i64, i64* %14, align 8
  %29 = load %struct.isa_ranges*, %struct.isa_ranges** %12, align 8
  %30 = getelementptr inbounds %struct.isa_ranges, %struct.isa_ranges* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = sub nsw i64 %32, 1
  store i64 %33, i64* %15, align 8
  %34 = load i64*, i64** %9, align 8
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %14, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %21
  %39 = load i64*, i64** %9, align 8
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %15, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %21
  br label %85

44:                                               ; preds = %38
  %45 = load i64*, i64** %10, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %14, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load i64*, i64** %10, align 8
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %15, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %49, %44
  %55 = load i64*, i64** %10, align 8
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %14, align 8
  %58 = load i64, i64* %15, align 8
  %59 = call i32 (i8*, i64, i64, ...) @panic(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i64 %56, i64 %57, i64 %58)
  br label %60

60:                                               ; preds = %54, %49
  %61 = load %struct.isa_ranges*, %struct.isa_ranges** %12, align 8
  %62 = call i64 @ISA_RANGE_PHYS(%struct.isa_ranges* %61)
  store i64 %62, i64* %13, align 8
  %63 = load i64*, i64** %9, align 8
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %13, align 8
  %66 = add nsw i64 %64, %65
  %67 = load i64, i64* %14, align 8
  %68 = sub nsw i64 %66, %67
  %69 = load i64*, i64** %9, align 8
  store i64 %68, i64* %69, align 8
  %70 = load i64*, i64** %10, align 8
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %13, align 8
  %73 = add nsw i64 %71, %72
  %74 = load i64, i64* %14, align 8
  %75 = sub nsw i64 %73, %74
  %76 = load i64*, i64** %10, align 8
  store i64 %75, i64* %76, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %60
  %80 = load i32, i32* %16, align 4
  %81 = load i32*, i32** %11, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %60
  %83 = load %struct.isa_ranges*, %struct.isa_ranges** %12, align 8
  %84 = call i32 @ofw_isa_range_restype(%struct.isa_ranges* %83)
  store i32 %84, i32* %6, align 4
  br label %94

85:                                               ; preds = %43
  %86 = load i32, i32* %16, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %16, align 4
  br label %17

88:                                               ; preds = %17
  %89 = load i64*, i64** %9, align 8
  %90 = load i64, i64* %89, align 8
  %91 = load i64*, i64** %10, align 8
  %92 = load i64, i64* %91, align 8
  %93 = call i32 (i8*, i64, i64, ...) @panic(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %90, i64 %92)
  br label %94

94:                                               ; preds = %88, %82
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i64 @ISA_RANGE_CHILD(%struct.isa_ranges*) #1

declare dso_local i32 @panic(i8*, i64, i64, ...) #1

declare dso_local i64 @ISA_RANGE_PHYS(%struct.isa_ranges*) #1

declare dso_local i32 @ofw_isa_range_restype(%struct.isa_ranges*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
