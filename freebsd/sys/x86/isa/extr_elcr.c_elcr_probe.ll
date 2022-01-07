; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_elcr.c_elcr_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_elcr.c_elcr_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ELCR_PORT = common dso_local global i64 0, align 8
@elcr_status = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"ELCR Found.  ISA IRQs programmed as:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" %2d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"  L\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"  E\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"elcr\00", align 1
@elcr_found = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elcr_probe() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @ELCR_PORT, align 8
  %4 = call i32 @inb(i64 %3)
  %5 = load i64, i64* @ELCR_PORT, align 8
  %6 = add nsw i64 %5, 1
  %7 = call i32 @inb(i64 %6)
  %8 = shl i32 %7, 8
  %9 = or i32 %4, %8
  store i32 %9, i32* @elcr_status, align 4
  %10 = load i32, i32* @elcr_status, align 4
  %11 = call i32 @ELCR_MASK(i32 0)
  %12 = call i32 @ELCR_MASK(i32 1)
  %13 = or i32 %11, %12
  %14 = call i32 @ELCR_MASK(i32 2)
  %15 = or i32 %13, %14
  %16 = call i32 @ELCR_MASK(i32 8)
  %17 = or i32 %15, %16
  %18 = call i32 @ELCR_MASK(i32 13)
  %19 = or i32 %17, %18
  %20 = and i32 %10, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %0
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %1, align 4
  br label %65

24:                                               ; preds = %0
  %25 = load i64, i64* @bootverbose, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %59

27:                                               ; preds = %24
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %35, %27
  %30 = load i32, i32* %2, align 4
  %31 = icmp slt i32 %30, 16
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* %2, align 4
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %2, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %2, align 4
  br label %29

38:                                               ; preds = %29
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %54, %38
  %41 = load i32, i32* %2, align 4
  %42 = icmp slt i32 %41, 16
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = load i32, i32* @elcr_status, align 4
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @ELCR_MASK(i32 %45)
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %53

51:                                               ; preds = %43
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %49
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %2, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %2, align 4
  br label %40

57:                                               ; preds = %40
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %24
  %60 = call i64 @resource_disabled(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* @ENXIO, align 4
  store i32 %63, i32* %1, align 4
  br label %65

64:                                               ; preds = %59
  store i32 1, i32* @elcr_found, align 4
  store i32 0, i32* %1, align 4
  br label %65

65:                                               ; preds = %64, %62, %22
  %66 = load i32, i32* %1, align 4
  ret i32 %66
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @ELCR_MASK(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @resource_disabled(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
