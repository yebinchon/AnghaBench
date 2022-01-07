; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athregs/extr_dumpregs.c_ath_hal_dumprange.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athregs/extr_dumpregs.c_ath_hal_dumprange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [55 x i8] c"%04x %08x  %04x %08x  %04x %08x  %04x %08x  %04x %08x\0A\00", align 1
@ah = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"%04x %08x  %04x %08x  %04x %08x  %04x %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"%04x %08x  %04x %08x  %04x %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"%04x %08x  %04x %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%04x %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i64)* @ath_hal_dumprange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_hal_dumprange(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %5, align 8
  store i64 %8, i64* %7, align 8
  br label %9

9:                                                ; preds = %45, %3
  %10 = load i64, i64* %7, align 8
  %11 = add nsw i64 %10, 16
  %12 = load i64, i64* %6, align 8
  %13 = icmp sle i64 %11, %12
  br i1 %13, label %14, label %48

14:                                               ; preds = %9
  %15 = load i32*, i32** %4, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i32, i32* @ah, align 4
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @OS_REG_READ(i32 %17, i64 %18)
  %20 = load i64, i64* %7, align 8
  %21 = add nsw i64 %20, 4
  %22 = load i32, i32* @ah, align 4
  %23 = load i64, i64* %7, align 8
  %24 = add nsw i64 %23, 4
  %25 = call i32 @OS_REG_READ(i32 %22, i64 %24)
  %26 = load i64, i64* %7, align 8
  %27 = add nsw i64 %26, 8
  %28 = load i32, i32* @ah, align 4
  %29 = load i64, i64* %7, align 8
  %30 = add nsw i64 %29, 8
  %31 = call i32 @OS_REG_READ(i32 %28, i64 %30)
  %32 = load i64, i64* %7, align 8
  %33 = add nsw i64 %32, 12
  %34 = load i32, i32* @ah, align 4
  %35 = load i64, i64* %7, align 8
  %36 = add nsw i64 %35, 12
  %37 = call i32 @OS_REG_READ(i32 %34, i64 %36)
  %38 = load i64, i64* %7, align 8
  %39 = add nsw i64 %38, 16
  %40 = load i32, i32* @ah, align 4
  %41 = load i64, i64* %7, align 8
  %42 = add nsw i64 %41, 16
  %43 = call i32 @OS_REG_READ(i32 %40, i64 %42)
  %44 = call i32 (i32*, i8*, i64, i32, ...) @fprintf(i32* %15, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %16, i32 %19, i64 %21, i32 %25, i64 %27, i32 %31, i64 %33, i32 %37, i64 %39, i32 %43)
  br label %45

45:                                               ; preds = %14
  %46 = load i64, i64* %7, align 8
  %47 = add nsw i64 %46, 20
  store i64 %47, i64* %7, align 8
  br label %9

48:                                               ; preds = %9
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = sub nsw i64 %49, %50
  switch i64 %51, label %116 [
    i64 16, label %52
    i64 12, label %77
    i64 8, label %96
    i64 4, label %109
  ]

52:                                               ; preds = %48
  %53 = load i32*, i32** %4, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i32, i32* @ah, align 4
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @OS_REG_READ(i32 %55, i64 %56)
  %58 = load i64, i64* %7, align 8
  %59 = add nsw i64 %58, 4
  %60 = load i32, i32* @ah, align 4
  %61 = load i64, i64* %7, align 8
  %62 = add nsw i64 %61, 4
  %63 = call i32 @OS_REG_READ(i32 %60, i64 %62)
  %64 = load i64, i64* %7, align 8
  %65 = add nsw i64 %64, 8
  %66 = load i32, i32* @ah, align 4
  %67 = load i64, i64* %7, align 8
  %68 = add nsw i64 %67, 8
  %69 = call i32 @OS_REG_READ(i32 %66, i64 %68)
  %70 = load i64, i64* %7, align 8
  %71 = add nsw i64 %70, 12
  %72 = load i32, i32* @ah, align 4
  %73 = load i64, i64* %7, align 8
  %74 = add nsw i64 %73, 12
  %75 = call i32 @OS_REG_READ(i32 %72, i64 %74)
  %76 = call i32 (i32*, i8*, i64, i32, ...) @fprintf(i32* %53, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %54, i32 %57, i64 %59, i32 %63, i64 %65, i32 %69, i64 %71, i32 %75)
  br label %116

77:                                               ; preds = %48
  %78 = load i32*, i32** %4, align 8
  %79 = load i64, i64* %7, align 8
  %80 = load i32, i32* @ah, align 4
  %81 = load i64, i64* %7, align 8
  %82 = call i32 @OS_REG_READ(i32 %80, i64 %81)
  %83 = load i64, i64* %7, align 8
  %84 = add nsw i64 %83, 4
  %85 = load i32, i32* @ah, align 4
  %86 = load i64, i64* %7, align 8
  %87 = add nsw i64 %86, 4
  %88 = call i32 @OS_REG_READ(i32 %85, i64 %87)
  %89 = load i64, i64* %7, align 8
  %90 = add nsw i64 %89, 8
  %91 = load i32, i32* @ah, align 4
  %92 = load i64, i64* %7, align 8
  %93 = add nsw i64 %92, 8
  %94 = call i32 @OS_REG_READ(i32 %91, i64 %93)
  %95 = call i32 (i32*, i8*, i64, i32, ...) @fprintf(i32* %78, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %79, i32 %82, i64 %84, i32 %88, i64 %90, i32 %94)
  br label %116

96:                                               ; preds = %48
  %97 = load i32*, i32** %4, align 8
  %98 = load i64, i64* %7, align 8
  %99 = load i32, i32* @ah, align 4
  %100 = load i64, i64* %7, align 8
  %101 = call i32 @OS_REG_READ(i32 %99, i64 %100)
  %102 = load i64, i64* %7, align 8
  %103 = add nsw i64 %102, 4
  %104 = load i32, i32* @ah, align 4
  %105 = load i64, i64* %7, align 8
  %106 = add nsw i64 %105, 4
  %107 = call i32 @OS_REG_READ(i32 %104, i64 %106)
  %108 = call i32 (i32*, i8*, i64, i32, ...) @fprintf(i32* %97, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %98, i32 %101, i64 %103, i32 %107)
  br label %116

109:                                              ; preds = %48
  %110 = load i32*, i32** %4, align 8
  %111 = load i64, i64* %7, align 8
  %112 = load i32, i32* @ah, align 4
  %113 = load i64, i64* %7, align 8
  %114 = call i32 @OS_REG_READ(i32 %112, i64 %113)
  %115 = call i32 (i32*, i8*, i64, i32, ...) @fprintf(i32* %110, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i64 %111, i32 %114)
  br label %116

116:                                              ; preds = %48, %109, %96, %77, %52
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i64, i32, ...) #1

declare dso_local i32 @OS_REG_READ(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
