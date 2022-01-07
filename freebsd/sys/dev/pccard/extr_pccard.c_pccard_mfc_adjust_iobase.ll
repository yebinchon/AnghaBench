; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard.c_pccard_mfc_adjust_iobase.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard.c_pccard_mfc_adjust_iobase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pccard_function = type { i64, i64, i32 }

@.str = private unnamed_addr constant [32 x i8] c"MFC: I/O base %#jx IOSIZE %#jx\0A\00", align 1
@PCCARD_CCR_IOBASE0 = common dso_local global i32 0, align 4
@PCCARD_CCR_IOBASE1 = common dso_local global i32 0, align 4
@PCCARD_CCR_IOBASE2 = common dso_local global i32 0, align 4
@PCCARD_CCR_IOBASE3 = common dso_local global i32 0, align 4
@PCCARD_CCR_IOSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pccard_function*, i64, i64, i64)* @pccard_mfc_adjust_iobase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pccard_mfc_adjust_iobase(%struct.pccard_function* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.pccard_function*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pccard_function* %0, %struct.pccard_function** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %65

13:                                               ; preds = %4
  %14 = load %struct.pccard_function*, %struct.pccard_function** %5, align 8
  %15 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = add nsw i64 %19, %20
  %22 = load %struct.pccard_function*, %struct.pccard_function** %5, align 8
  %23 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load %struct.pccard_function*, %struct.pccard_function** %5, align 8
  %25 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = add nsw i64 %26, %27
  %29 = load %struct.pccard_function*, %struct.pccard_function** %5, align 8
  %30 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %64

31:                                               ; preds = %13
  %32 = load %struct.pccard_function*, %struct.pccard_function** %5, align 8
  %33 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = add nsw i64 %35, %36
  %38 = icmp sgt i64 %34, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = add nsw i64 %40, %41
  %43 = load %struct.pccard_function*, %struct.pccard_function** %5, align 8
  %44 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %39, %31
  %46 = load %struct.pccard_function*, %struct.pccard_function** %5, align 8
  %47 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = add nsw i64 %49, %50
  %52 = load i64, i64* %8, align 8
  %53 = add nsw i64 %51, %52
  %54 = icmp slt i64 %48, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %45
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = add nsw i64 %56, %57
  %59 = load i64, i64* %8, align 8
  %60 = add nsw i64 %58, %59
  %61 = load %struct.pccard_function*, %struct.pccard_function** %5, align 8
  %62 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %55, %45
  br label %64

64:                                               ; preds = %63, %18
  br label %65

65:                                               ; preds = %64, %4
  %66 = load %struct.pccard_function*, %struct.pccard_function** %5, align 8
  %67 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.pccard_function*, %struct.pccard_function** %5, align 8
  %70 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %68, %71
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %74

74:                                               ; preds = %79, %65
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %9, align 4
  %81 = shl i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %74

82:                                               ; preds = %74
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %9, align 4
  %85 = load %struct.pccard_function*, %struct.pccard_function** %5, align 8
  %86 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.pccard_function*, %struct.pccard_function** %5, align 8
  %89 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  %94 = call i32 @DEVPRINTF(i32 %93)
  %95 = load %struct.pccard_function*, %struct.pccard_function** %5, align 8
  %96 = load i32, i32* @PCCARD_CCR_IOBASE0, align 4
  %97 = load %struct.pccard_function*, %struct.pccard_function** %5, align 8
  %98 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = and i64 %99, 255
  %101 = trunc i64 %100 to i32
  %102 = call i32 @pccard_ccr_write(%struct.pccard_function* %95, i32 %96, i32 %101)
  %103 = load %struct.pccard_function*, %struct.pccard_function** %5, align 8
  %104 = load i32, i32* @PCCARD_CCR_IOBASE1, align 4
  %105 = load %struct.pccard_function*, %struct.pccard_function** %5, align 8
  %106 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = ashr i64 %107, 8
  %109 = and i64 %108, 255
  %110 = trunc i64 %109 to i32
  %111 = call i32 @pccard_ccr_write(%struct.pccard_function* %103, i32 %104, i32 %110)
  %112 = load %struct.pccard_function*, %struct.pccard_function** %5, align 8
  %113 = load i32, i32* @PCCARD_CCR_IOBASE2, align 4
  %114 = call i32 @pccard_ccr_write(%struct.pccard_function* %112, i32 %113, i32 0)
  %115 = load %struct.pccard_function*, %struct.pccard_function** %5, align 8
  %116 = load i32, i32* @PCCARD_CCR_IOBASE3, align 4
  %117 = call i32 @pccard_ccr_write(%struct.pccard_function* %115, i32 %116, i32 0)
  %118 = load %struct.pccard_function*, %struct.pccard_function** %5, align 8
  %119 = load i32, i32* @PCCARD_CCR_IOSIZE, align 4
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @pccard_ccr_write(%struct.pccard_function* %118, i32 %119, i32 %120)
  ret void
}

declare dso_local i32 @DEVPRINTF(i32) #1

declare dso_local i32 @pccard_ccr_write(%struct.pccard_function*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
