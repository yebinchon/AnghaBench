; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_set_pace_tbl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_set_pace_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@NTX_SCHED = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@A_TP_PACE_TABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_set_pace_tbl(%struct.adapter* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @NTX_SCHED, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load %struct.adapter*, %struct.adapter** %6, align 8
  %20 = call i32 @dack_ticks_to_usec(%struct.adapter* %19, i32 1000)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @NTX_SCHED, align 4
  %23 = icmp ugt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @ERANGE, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %93

27:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %66, %27
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %71

32:                                               ; preds = %28
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %33, align 4
  %35 = mul i32 1000, %34
  %36 = load i32, i32* %13, align 4
  %37 = udiv i32 %36, 2
  %38 = add i32 %35, %37
  %39 = load i32, i32* %13, align 4
  %40 = udiv i32 %38, %39
  %41 = load i32, i32* %12, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %18, i64 %42
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* %12, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %18, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp ugt i32 %47, 2047
  br i1 %48, label %49, label %52

49:                                               ; preds = %32
  %50 = load i32, i32* @ERANGE, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %93

52:                                               ; preds = %32
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load i32, i32* %12, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %18, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* @ERANGE, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %93

65:                                               ; preds = %56, %52
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %12, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %12, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %7, align 8
  br label %28

71:                                               ; preds = %28
  store i32 0, i32* %12, align 4
  br label %72

72:                                               ; preds = %87, %71
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %72
  %77 = load %struct.adapter*, %struct.adapter** %6, align 8
  %78 = load i32, i32* @A_TP_PACE_TABLE, align 4
  %79 = load i32, i32* %8, align 4
  %80 = shl i32 %79, 16
  %81 = load i32, i32* %12, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %18, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %80, %84
  %86 = call i32 @t4_write_reg(%struct.adapter* %77, i32 %78, i32 %85)
  br label %87

87:                                               ; preds = %76
  %88 = load i32, i32* %12, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %8, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %72

92:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %93

93:                                               ; preds = %92, %62, %49, %24
  %94 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dack_ticks_to_usec(%struct.adapter*, i32) #2

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
