; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_scan_parent_range.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_scan_parent_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fingerprint = type { i32 }

@FINGERPRINT_FILE_THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fingerprint*, %struct.fingerprint*, i32, i32, i32)* @scan_parent_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_parent_range(%struct.fingerprint* %0, %struct.fingerprint* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.fingerprint*, align 8
  %7 = alloca %struct.fingerprint*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.fingerprint* %0, %struct.fingerprint** %6, align 8
  store %struct.fingerprint* %1, %struct.fingerprint** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 10, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %12, align 4
  br label %16

16:                                               ; preds = %57, %5
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = add nsw i32 %18, %19
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %60

22:                                               ; preds = %16
  %23 = load %struct.fingerprint*, %struct.fingerprint** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.fingerprint, %struct.fingerprint* %23, i64 %25
  %27 = load %struct.fingerprint*, %struct.fingerprint** %6, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.fingerprint, %struct.fingerprint* %27, i64 %29
  %31 = call i32 @fingerprint_similarity(%struct.fingerprint* %26, %struct.fingerprint* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %57

36:                                               ; preds = %22
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, -1
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %8, align 4
  %46 = sub nsw i32 %44, %45
  %47 = call i64 @abs(i32 %46)
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %8, align 4
  %50 = sub nsw i32 %48, %49
  %51 = call i64 @abs(i32 %50)
  %52 = icmp slt i64 %47, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %57

54:                                               ; preds = %43, %40, %36
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %14, align 4
  br label %57

57:                                               ; preds = %54, %53, %35
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %16

60:                                               ; preds = %16
  %61 = load i32, i32* %14, align 4
  ret i32 %61
}

declare dso_local i32 @fingerprint_similarity(%struct.fingerprint*, %struct.fingerprint*) #1

declare dso_local i64 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
