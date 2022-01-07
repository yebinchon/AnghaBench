; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_action.c_ieee80211_recv_action_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_action.c_ieee80211_recv_action_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ba_recv_action = common dso_local global i32** null, align 8
@ht_recv_action = common dso_local global i32** null, align 8
@meshpl_recv_action = common dso_local global i32** null, align 8
@meshaction_recv_action = common dso_local global i32** null, align 8
@vendor_recv_action = common dso_local global i32** null, align 8
@vht_recv_action = common dso_local global i32** null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_recv_action_register(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %81 [
    i32 133, label %9
    i32 132, label %21
    i32 130, label %33
    i32 131, label %45
    i32 129, label %57
    i32 128, label %69
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = load i32**, i32*** @ba_recv_action, align 8
  %12 = call i32 @nitems(i32** %11)
  %13 = icmp sge i32 %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %81

15:                                               ; preds = %9
  %16 = load i32*, i32** %7, align 8
  %17 = load i32**, i32*** @ba_recv_action, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32*, i32** %17, i64 %19
  store i32* %16, i32** %20, align 8
  store i32 0, i32* %4, align 4
  br label %83

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32**, i32*** @ht_recv_action, align 8
  %24 = call i32 @nitems(i32** %23)
  %25 = icmp sge i32 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %81

27:                                               ; preds = %21
  %28 = load i32*, i32** %7, align 8
  %29 = load i32**, i32*** @ht_recv_action, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  store i32* %28, i32** %32, align 8
  store i32 0, i32* %4, align 4
  br label %83

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  %35 = load i32**, i32*** @meshpl_recv_action, align 8
  %36 = call i32 @nitems(i32** %35)
  %37 = icmp sge i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %81

39:                                               ; preds = %33
  %40 = load i32*, i32** %7, align 8
  %41 = load i32**, i32*** @meshpl_recv_action, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  store i32* %40, i32** %44, align 8
  store i32 0, i32* %4, align 4
  br label %83

45:                                               ; preds = %3
  %46 = load i32, i32* %6, align 4
  %47 = load i32**, i32*** @meshaction_recv_action, align 8
  %48 = call i32 @nitems(i32** %47)
  %49 = icmp sge i32 %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %81

51:                                               ; preds = %45
  %52 = load i32*, i32** %7, align 8
  %53 = load i32**, i32*** @meshaction_recv_action, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  store i32* %52, i32** %56, align 8
  store i32 0, i32* %4, align 4
  br label %83

57:                                               ; preds = %3
  %58 = load i32, i32* %6, align 4
  %59 = load i32**, i32*** @vendor_recv_action, align 8
  %60 = call i32 @nitems(i32** %59)
  %61 = icmp sge i32 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %81

63:                                               ; preds = %57
  %64 = load i32*, i32** %7, align 8
  %65 = load i32**, i32*** @vendor_recv_action, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  store i32* %64, i32** %68, align 8
  store i32 0, i32* %4, align 4
  br label %83

69:                                               ; preds = %3
  %70 = load i32, i32* %6, align 4
  %71 = load i32**, i32*** @vht_recv_action, align 8
  %72 = call i32 @nitems(i32** %71)
  %73 = icmp sge i32 %70, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %81

75:                                               ; preds = %69
  %76 = load i32*, i32** %7, align 8
  %77 = load i32**, i32*** @vht_recv_action, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32*, i32** %77, i64 %79
  store i32* %76, i32** %80, align 8
  store i32 0, i32* %4, align 4
  br label %83

81:                                               ; preds = %3, %74, %62, %50, %38, %26, %14
  %82 = load i32, i32* @EINVAL, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %75, %63, %51, %39, %27, %15
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @nitems(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
