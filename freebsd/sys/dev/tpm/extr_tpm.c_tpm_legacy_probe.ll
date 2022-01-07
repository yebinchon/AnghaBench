; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm.c_tpm_legacy_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm.c_tpm_legacy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tpm_enabled = common dso_local global i32 0, align 4
@TPM_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"ATML\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm_legacy_probe(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [8 x i8], align 1
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* @tpm_enabled, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %2
  store i32 0, i32* %3, align 4
  br label %75

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @bus_space_map(i32 %19, i32 %20, i32 2, i32 0, i32* %6)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %75

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @bus_space_read_1(i32 %25, i32 %26, i32 0)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, 255
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @bus_space_unmap(i32 %31, i32 %32, i32 2)
  store i32 0, i32* %3, align 4
  br label %75

34:                                               ; preds = %24
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @bus_space_read_1(i32 %35, i32 %36, i32 1)
  store i32 %37, i32* %7, align 4
  store i32 8, i32* %9, align 4
  br label %38

38:                                               ; preds = %42, %34
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %9, align 4
  %41 = icmp ne i32 %39, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i64, i64* @TPM_ID, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = call signext i8 @tpm_legacy_in(i32 %43, i32 %44, i64 %48)
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 %51
  store i8 %49, i8* %52, align 1
  br label %38

53:                                               ; preds = %38
  %54 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 4
  %55 = call i32 @bcmp(i8* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  store i32 1, i32* %10, align 4
  br label %58

58:                                               ; preds = %57, %53
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @bus_space_write_1(i32 %62, i32 %63, i32 %64, i32 1)
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @bus_space_write_1(i32 %66, i32 %67, i32 %68, i32 0)
  br label %70

70:                                               ; preds = %61, %58
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @bus_space_unmap(i32 %71, i32 %72, i32 2)
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %70, %30, %23, %17
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @bus_space_map(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @bus_space_read_1(i32, i32, i32) #1

declare dso_local i32 @bus_space_unmap(i32, i32, i32) #1

declare dso_local signext i8 @tpm_legacy_in(i32, i32, i64) #1

declare dso_local i32 @bcmp(i8*, i8*, i32) #1

declare dso_local i32 @bus_space_write_1(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
