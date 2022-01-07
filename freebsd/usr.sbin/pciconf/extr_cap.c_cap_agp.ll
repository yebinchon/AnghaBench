; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_cap.c_cap_agp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_cap.c_cap_agp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_conf = type { i32 }

@AGP_STATUS = common dso_local global i64 0, align 8
@AGP_CAPID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"AGP \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"v3 \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"8x \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"4x \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"2x \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"1x \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"SBA \00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"enabled at \00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.pci_conf*, i64)* @cap_agp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cap_agp(i32 %0, %struct.pci_conf* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_conf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.pci_conf* %1, %struct.pci_conf** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.pci_conf*, %struct.pci_conf** %5, align 8
  %11 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %10, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @AGP_STATUS, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @read_config(i32 %9, i32* %11, i64 %14, i32 4)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.pci_conf*, %struct.pci_conf** %5, align 8
  %18 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %17, i32 0, i32 0
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @AGP_CAPID, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @read_config(i32 %16, i32* %18, i64 %21, i32 4)
  store i32 %22, i32* %8, align 4
  %23 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @AGP_MODE_GET_MODE_3(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %3
  %28 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @AGP_MODE_GET_RATE(i32 %29)
  %31 = and i32 %30, 128
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %27
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @AGP_MODE_GET_RATE(i32 %36)
  %38 = and i32 %37, 129
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %35
  br label %65

43:                                               ; preds = %3
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @AGP_MODE_GET_RATE(i32 %44)
  %46 = and i32 %45, 130
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %43
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @AGP_MODE_GET_RATE(i32 %51)
  %53 = and i32 %52, 131
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %50
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @AGP_MODE_GET_RATE(i32 %58)
  %60 = and i32 %59, 132
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %57
  br label %65

65:                                               ; preds = %64, %42
  %66 = load i32, i32* %7, align 4
  %67 = call i64 @AGP_MODE_GET_SBA(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %65
  %72 = load i32, i32* %8, align 4
  %73 = call i64 @AGP_MODE_GET_AGP(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %106

75:                                               ; preds = %71
  %76 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %77 = load i32, i32* %8, align 4
  %78 = call i64 @AGP_MODE_GET_MODE_3(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %75
  %81 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @AGP_MODE_GET_RATE(i32 %82)
  switch i32 %83, label %88 [
    i32 128, label %84
    i32 129, label %86
  ]

84:                                               ; preds = %80
  %85 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %88

86:                                               ; preds = %80
  %87 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %88

88:                                               ; preds = %80, %86, %84
  br label %99

89:                                               ; preds = %75
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @AGP_MODE_GET_RATE(i32 %90)
  switch i32 %91, label %98 [
    i32 130, label %92
    i32 131, label %94
    i32 132, label %96
  ]

92:                                               ; preds = %89
  %93 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %98

94:                                               ; preds = %89
  %95 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %98

96:                                               ; preds = %89
  %97 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %98

98:                                               ; preds = %89, %96, %94, %92
  br label %99

99:                                               ; preds = %98, %88
  %100 = load i32, i32* %8, align 4
  %101 = call i64 @AGP_MODE_GET_SBA(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %99
  br label %108

106:                                              ; preds = %71
  %107 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %105
  ret void
}

declare dso_local i32 @read_config(i32, i32*, i64, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @AGP_MODE_GET_MODE_3(i32) #1

declare dso_local i32 @AGP_MODE_GET_RATE(i32) #1

declare dso_local i64 @AGP_MODE_GET_SBA(i32) #1

declare dso_local i64 @AGP_MODE_GET_AGP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
