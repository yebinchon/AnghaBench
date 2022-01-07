; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_ppb_1284.c_spp_1284_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_ppb_1284.c_spp_1284_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nFAULT = common dso_local global i32 0, align 4
@PPB_REVERSE_TRANSFER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spp_1284_read(i32 %0, i32 %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  store i32 0, i32* %13, align 4
  %16 = load i32*, i32** %11, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @ppb_1284_get_state(i32 %17)
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %15, align 4
  switch i32 %19, label %29 [
    i32 130, label %20
    i32 128, label %28
  ]

20:                                               ; preds = %5
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @ppb_1284_negociate(i32 %21, i32 %22, i32 0)
  store i32 %23, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %6, align 4
  br label %103

27:                                               ; preds = %20
  br label %39

28:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  br label %39

29:                                               ; preds = %5
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @ppb_1284_terminate(i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @ppb_1284_negociate(i32 %32, i32 %33, i32 0)
  store i32 %34, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %6, align 4
  br label %103

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %28, %27
  br label %40

40:                                               ; preds = %80, %39
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @ppb_rstr(i32 %45)
  %47 = load i32, i32* @nFAULT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br label %51

51:                                               ; preds = %44, %40
  %52 = phi i1 [ false, %40 ], [ %50, %44 ]
  br i1 %52, label %53, label %83

53:                                               ; preds = %51
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @PPB_REVERSE_TRANSFER, align 4
  %56 = call i32 @ppb_1284_set_state(i32 %54, i32 %55)
  %57 = load i32, i32* %8, align 4
  switch i32 %57, label %78 [
    i32 129, label %58
    i32 131, label %68
  ]

58:                                               ; preds = %53
  %59 = load i32, i32* %7, align 4
  %60 = load i8*, i8** %9, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = call i32 @nibble_1284_inbyte(i32 %59, i8* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %84

67:                                               ; preds = %58
  br label %80

68:                                               ; preds = %53
  %69 = load i32, i32* %7, align 4
  %70 = load i8*, i8** %9, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = call i32 @byte_1284_inbyte(i32 %69, i8* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %84

77:                                               ; preds = %68
  br label %80

78:                                               ; preds = %53
  %79 = load i32, i32* @EINVAL, align 4
  store i32 %79, i32* %12, align 4
  br label %84

80:                                               ; preds = %77, %67
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %13, align 4
  br label %40

83:                                               ; preds = %51
  br label %84

84:                                               ; preds = %83, %78, %76, %66
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @ppb_1284_set_state(i32 %88, i32 128)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i32, i32* %13, align 4
  %92 = load i32*, i32** %11, align 8
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95, %90
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @ppb_1284_terminate(i32 %99)
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i32, i32* %12, align 4
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %101, %36, %25
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i32 @ppb_1284_get_state(i32) #1

declare dso_local i32 @ppb_1284_negociate(i32, i32, i32) #1

declare dso_local i32 @ppb_1284_terminate(i32) #1

declare dso_local i32 @ppb_rstr(i32) #1

declare dso_local i32 @ppb_1284_set_state(i32, i32) #1

declare dso_local i32 @nibble_1284_inbyte(i32, i8*) #1

declare dso_local i32 @byte_1284_inbyte(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
