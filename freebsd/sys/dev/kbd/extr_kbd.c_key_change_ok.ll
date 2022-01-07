; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/kbd/extr_kbd.c_key_change_ok.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/kbd/extr_kbd.c_key_change_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keyent_t = type { i64*, i32, i64 }
%struct.thread = type { i32 }

@keymap_restrict_change = common dso_local global i32 0, align 4
@NUM_STATES = common dso_local global i32 0, align 4
@PRIV_KEYBOARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.keyent_t*, %struct.keyent_t*, %struct.thread*)* @key_change_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_change_ok(%struct.keyent_t* %0, %struct.keyent_t* %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.keyent_t*, align 8
  %6 = alloca %struct.keyent_t*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  store %struct.keyent_t* %0, %struct.keyent_t** %5, align 8
  store %struct.keyent_t* %1, %struct.keyent_t** %6, align 8
  store %struct.thread* %2, %struct.thread** %7, align 8
  %9 = load i32, i32* @keymap_restrict_change, align 4
  %10 = icmp sle i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %124

12:                                               ; preds = %3
  %13 = load i32, i32* @keymap_restrict_change, align 4
  %14 = icmp sge i32 %13, 2
  br i1 %14, label %15, label %69

15:                                               ; preds = %12
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %41, %15
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @NUM_STATES, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %16
  %21 = load %struct.keyent_t*, %struct.keyent_t** %5, align 8
  %22 = getelementptr inbounds %struct.keyent_t, %struct.keyent_t* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.keyent_t*, %struct.keyent_t** %6, align 8
  %29 = getelementptr inbounds %struct.keyent_t, %struct.keyent_t* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %27, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %20
  %37 = load %struct.thread*, %struct.thread** %7, align 8
  %38 = load i32, i32* @PRIV_KEYBOARD, align 4
  %39 = call i32 @priv_check(%struct.thread* %37, i32 %38)
  store i32 %39, i32* %4, align 4
  br label %124

40:                                               ; preds = %20
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %16

44:                                               ; preds = %16
  %45 = load %struct.keyent_t*, %struct.keyent_t** %5, align 8
  %46 = getelementptr inbounds %struct.keyent_t, %struct.keyent_t* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.keyent_t*, %struct.keyent_t** %6, align 8
  %49 = getelementptr inbounds %struct.keyent_t, %struct.keyent_t* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %47, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load %struct.thread*, %struct.thread** %7, align 8
  %54 = load i32, i32* @PRIV_KEYBOARD, align 4
  %55 = call i32 @priv_check(%struct.thread* %53, i32 %54)
  store i32 %55, i32* %4, align 4
  br label %124

56:                                               ; preds = %44
  %57 = load %struct.keyent_t*, %struct.keyent_t** %5, align 8
  %58 = getelementptr inbounds %struct.keyent_t, %struct.keyent_t* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.keyent_t*, %struct.keyent_t** %6, align 8
  %61 = getelementptr inbounds %struct.keyent_t, %struct.keyent_t* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load %struct.thread*, %struct.thread** %7, align 8
  %66 = load i32, i32* @PRIV_KEYBOARD, align 4
  %67 = call i32 @priv_check(%struct.thread* %65, i32 %66)
  store i32 %67, i32* %4, align 4
  br label %124

68:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %124

69:                                               ; preds = %12
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %120, %69
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @NUM_STATES, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %123

74:                                               ; preds = %70
  %75 = load %struct.keyent_t*, %struct.keyent_t** %5, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @RESTRICTED_KEY(%struct.keyent_t* %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %74
  %80 = load %struct.keyent_t*, %struct.keyent_t** %6, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @RESTRICTED_KEY(%struct.keyent_t* %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  br label %120

85:                                               ; preds = %79, %74
  %86 = load %struct.keyent_t*, %struct.keyent_t** %5, align 8
  %87 = getelementptr inbounds %struct.keyent_t, %struct.keyent_t* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = ashr i32 128, %89
  %91 = and i32 %88, %90
  %92 = load %struct.keyent_t*, %struct.keyent_t** %6, align 8
  %93 = getelementptr inbounds %struct.keyent_t, %struct.keyent_t* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = ashr i32 128, %95
  %97 = and i32 %94, %96
  %98 = icmp eq i32 %91, %97
  br i1 %98, label %99, label %116

99:                                               ; preds = %85
  %100 = load %struct.keyent_t*, %struct.keyent_t** %5, align 8
  %101 = getelementptr inbounds %struct.keyent_t, %struct.keyent_t* %100, i32 0, i32 0
  %102 = load i64*, i64** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.keyent_t*, %struct.keyent_t** %6, align 8
  %108 = getelementptr inbounds %struct.keyent_t, %struct.keyent_t* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %106, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %99
  br label %120

116:                                              ; preds = %99, %85
  %117 = load %struct.thread*, %struct.thread** %7, align 8
  %118 = load i32, i32* @PRIV_KEYBOARD, align 4
  %119 = call i32 @priv_check(%struct.thread* %117, i32 %118)
  store i32 %119, i32* %4, align 4
  br label %124

120:                                              ; preds = %115, %84
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %70

123:                                              ; preds = %70
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %123, %116, %68, %64, %52, %36, %11
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @RESTRICTED_KEY(%struct.keyent_t*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
