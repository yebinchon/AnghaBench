; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_crextend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_crextend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32, i64, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@MINALLOCSIZE = common dso_local global i32 0, align 4
@M_CRED = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crextend(%struct.ucred* %0, i32 %1) #0 {
  %3 = alloca %struct.ucred*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.ucred*, %struct.ucred** %3, align 8
  %8 = getelementptr inbounds %struct.ucred, %struct.ucred* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sle i32 %6, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %79

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = sext i32 %15 to i64
  %17 = udiv i64 %16, 4
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %12
  %20 = load %struct.ucred*, %struct.ucred** %3, align 8
  %21 = getelementptr inbounds %struct.ucred, %struct.ucred* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i32, i32* @MINALLOCSIZE, align 4
  %26 = sext i32 %25 to i64
  %27 = udiv i64 %26, 4
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %5, align 4
  br label %34

29:                                               ; preds = %19
  %30 = load %struct.ucred*, %struct.ucred** %3, align 8
  %31 = getelementptr inbounds %struct.ucred, %struct.ucred* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 %32, 2
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %29, %24
  br label %35

35:                                               ; preds = %39, %34
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = mul nsw i32 %40, 2
  store i32 %41, i32* %5, align 4
  br label %35

42:                                               ; preds = %35
  br label %50

43:                                               ; preds = %12
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = sext i32 %45 to i64
  %47 = udiv i64 %46, 4
  %48 = trunc i64 %47 to i32
  %49 = call i32 @roundup2(i32 %44, i32 %48)
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %43, %42
  %51 = load %struct.ucred*, %struct.ucred** %3, align 8
  %52 = getelementptr inbounds %struct.ucred, %struct.ucred* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ucred*, %struct.ucred** %3, align 8
  %55 = getelementptr inbounds %struct.ucred, %struct.ucred* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %50
  %59 = load %struct.ucred*, %struct.ucred** %3, align 8
  %60 = getelementptr inbounds %struct.ucred, %struct.ucred* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @M_CRED, align 4
  %63 = call i32 @free(i64 %61, i32 %62)
  br label %64

64:                                               ; preds = %58, %50
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 4
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* @M_CRED, align 4
  %70 = load i32, i32* @M_WAITOK, align 4
  %71 = load i32, i32* @M_ZERO, align 4
  %72 = or i32 %70, %71
  %73 = call i64 @malloc(i32 %68, i32 %69, i32 %72)
  %74 = load %struct.ucred*, %struct.ucred** %3, align 8
  %75 = getelementptr inbounds %struct.ucred, %struct.ucred* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.ucred*, %struct.ucred** %3, align 8
  %78 = getelementptr inbounds %struct.ucred, %struct.ucred* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  br label %79

79:                                               ; preds = %64, %11
  ret void
}

declare dso_local i32 @roundup2(i32, i32) #1

declare dso_local i32 @free(i64, i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
