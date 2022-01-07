; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_check_blocks_with_parity2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_check_blocks_with_parity2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"CSEMI\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"PXP\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"PXPPCICLOCKCLIENT\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"CFC\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"CDU\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"DMAE\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"IGU\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"MISC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, i32, i32, i32)* @bxe_check_blocks_with_parity2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_check_blocks_with_parity2(%struct.bxe_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %101, %4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %104

14:                                               ; preds = %11
  %15 = load i32, i32* %10, align 4
  %16 = shl i32 1, %15
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %9, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %100

21:                                               ; preds = %14
  %22 = load i32, i32* %9, align 4
  switch i32 %22, label %95 [
    i32 133, label %23
    i32 129, label %32
    i32 128, label %41
    i32 134, label %50
    i32 135, label %59
    i32 132, label %68
    i32 131, label %77
    i32 130, label %86
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  %30 = call i32 @bxe_print_next_block(%struct.bxe_softc* %27, i32 %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %26, %23
  br label %95

32:                                               ; preds = %21
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  %39 = call i32 @bxe_print_next_block(%struct.bxe_softc* %36, i32 %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %35, %32
  br label %95

41:                                               ; preds = %21
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  %48 = call i32 @bxe_print_next_block(%struct.bxe_softc* %45, i32 %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %44, %41
  br label %95

50:                                               ; preds = %21
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  %57 = call i32 @bxe_print_next_block(%struct.bxe_softc* %54, i32 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %58

58:                                               ; preds = %53, %50
  br label %95

59:                                               ; preds = %21
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  %66 = call i32 @bxe_print_next_block(%struct.bxe_softc* %63, i32 %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %67

67:                                               ; preds = %62, %59
  br label %95

68:                                               ; preds = %21
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  %75 = call i32 @bxe_print_next_block(%struct.bxe_softc* %72, i32 %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %76

76:                                               ; preds = %71, %68
  br label %95

77:                                               ; preds = %21
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  %84 = call i32 @bxe_print_next_block(%struct.bxe_softc* %81, i32 %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  br label %85

85:                                               ; preds = %80, %77
  br label %95

86:                                               ; preds = %21
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  %93 = call i32 @bxe_print_next_block(%struct.bxe_softc* %90, i32 %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %94

94:                                               ; preds = %89, %86
  br label %95

95:                                               ; preds = %21, %94, %85, %76, %67, %58, %49, %40, %31
  %96 = load i32, i32* %9, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %6, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %95, %14
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %11

104:                                              ; preds = %11
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local i32 @bxe_print_next_block(%struct.bxe_softc*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
