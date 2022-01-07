; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_tcb_common.c_display_tcb_compressed.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_tcb_common.c_display_tcb_compressed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_tN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @display_tcb_compressed(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @g_tN, align 4
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %7, label %34

7:                                                ; preds = %2
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @t4_display_tcb_aux_0(i32* %8, i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 1, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @t4_display_tcb_aux_1(i32* %14, i32 %15)
  br label %33

17:                                               ; preds = %7
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 2, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @t4_display_tcb_aux_2(i32* %21, i32 %22)
  br label %32

24:                                               ; preds = %17
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 3, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @t4_display_tcb_aux_3(i32* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %24
  br label %32

32:                                               ; preds = %31, %20
  br label %33

33:                                               ; preds = %32, %13
  br label %104

34:                                               ; preds = %2
  %35 = load i32, i32* @g_tN, align 4
  %36 = icmp eq i32 %35, 5
  br i1 %36, label %37, label %64

37:                                               ; preds = %34
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @t5_display_tcb_aux_0(i32* %38, i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 1, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @t5_display_tcb_aux_1(i32* %44, i32 %45)
  br label %63

47:                                               ; preds = %37
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 2, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @t5_display_tcb_aux_2(i32* %51, i32 %52)
  br label %62

54:                                               ; preds = %47
  %55 = load i32, i32* %4, align 4
  %56 = icmp eq i32 3, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @t5_display_tcb_aux_3(i32* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %54
  br label %62

62:                                               ; preds = %61, %50
  br label %63

63:                                               ; preds = %62, %43
  br label %103

64:                                               ; preds = %34
  %65 = load i32, i32* @g_tN, align 4
  %66 = icmp eq i32 %65, 6
  br i1 %66, label %67, label %102

67:                                               ; preds = %64
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @t6_display_tcb_aux_0(i32* %68, i32 %69)
  %71 = load i32, i32* %4, align 4
  %72 = icmp eq i32 1, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i32*, i32** %3, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @t6_display_tcb_aux_1(i32* %74, i32 %75)
  br label %101

77:                                               ; preds = %67
  %78 = load i32, i32* %4, align 4
  %79 = icmp eq i32 2, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i32*, i32** %3, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @t6_display_tcb_aux_2(i32* %81, i32 %82)
  br label %100

84:                                               ; preds = %77
  %85 = load i32, i32* %4, align 4
  %86 = icmp eq i32 3, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i32*, i32** %3, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @t6_display_tcb_aux_3(i32* %88, i32 %89)
  br label %99

91:                                               ; preds = %84
  %92 = load i32, i32* %4, align 4
  %93 = icmp eq i32 4, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i32*, i32** %3, align 8
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @t6_display_tcb_aux_4(i32* %95, i32 %96)
  br label %98

98:                                               ; preds = %94, %91
  br label %99

99:                                               ; preds = %98, %87
  br label %100

100:                                              ; preds = %99, %80
  br label %101

101:                                              ; preds = %100, %73
  br label %102

102:                                              ; preds = %101, %64
  br label %103

103:                                              ; preds = %102, %63
  br label %104

104:                                              ; preds = %103, %33
  ret void
}

declare dso_local i32 @t4_display_tcb_aux_0(i32*, i32) #1

declare dso_local i32 @t4_display_tcb_aux_1(i32*, i32) #1

declare dso_local i32 @t4_display_tcb_aux_2(i32*, i32) #1

declare dso_local i32 @t4_display_tcb_aux_3(i32*, i32) #1

declare dso_local i32 @t5_display_tcb_aux_0(i32*, i32) #1

declare dso_local i32 @t5_display_tcb_aux_1(i32*, i32) #1

declare dso_local i32 @t5_display_tcb_aux_2(i32*, i32) #1

declare dso_local i32 @t5_display_tcb_aux_3(i32*, i32) #1

declare dso_local i32 @t6_display_tcb_aux_0(i32*, i32) #1

declare dso_local i32 @t6_display_tcb_aux_1(i32*, i32) #1

declare dso_local i32 @t6_display_tcb_aux_2(i32*, i32) #1

declare dso_local i32 @t6_display_tcb_aux_3(i32*, i32) #1

declare dso_local i32 @t6_display_tcb_aux_4(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
