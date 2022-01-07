; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/kbd/extr_kbd.c_accent_change_ok.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/kbd/extr_kbd.c_accent_change_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.acc_t* }
%struct.acc_t = type { i64, i64** }
%struct.thread = type { i32 }

@keymap_restrict_change = common dso_local global i32 0, align 4
@PRIV_KEYBOARD = common dso_local global i32 0, align 4
@NUM_ACCENTCHARS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.TYPE_4__*, %struct.thread*)* @accent_change_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @accent_change_ok(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.acc_t*, align 8
  %9 = alloca %struct.acc_t*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store %struct.thread* %2, %struct.thread** %7, align 8
  %12 = load i32, i32* @keymap_restrict_change, align 4
  %13 = icmp sle i32 %12, 2
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %132

15:                                               ; preds = %3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load %struct.thread*, %struct.thread** %7, align 8
  %25 = load i32, i32* @PRIV_KEYBOARD, align 4
  %26 = call i32 @priv_check(%struct.thread* %24, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %132

27:                                               ; preds = %15
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %128, %27
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %131

34:                                               ; preds = %28
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load %struct.acc_t*, %struct.acc_t** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.acc_t, %struct.acc_t* %37, i64 %39
  store %struct.acc_t* %40, %struct.acc_t** %8, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load %struct.acc_t*, %struct.acc_t** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.acc_t, %struct.acc_t* %43, i64 %45
  store %struct.acc_t* %46, %struct.acc_t** %9, align 8
  %47 = load %struct.acc_t*, %struct.acc_t** %8, align 8
  %48 = getelementptr inbounds %struct.acc_t, %struct.acc_t* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.acc_t*, %struct.acc_t** %9, align 8
  %51 = getelementptr inbounds %struct.acc_t, %struct.acc_t* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %34
  %55 = load %struct.thread*, %struct.thread** %7, align 8
  %56 = load i32, i32* @PRIV_KEYBOARD, align 4
  %57 = call i32 @priv_check(%struct.thread* %55, i32 %56)
  store i32 %57, i32* %4, align 4
  br label %132

58:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %124, %58
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @NUM_ACCENTCHARS, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %127

63:                                               ; preds = %59
  %64 = load %struct.acc_t*, %struct.acc_t** %8, align 8
  %65 = getelementptr inbounds %struct.acc_t, %struct.acc_t* %64, i32 0, i32 1
  %66 = load i64**, i64*** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64*, i64** %66, i64 %68
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.acc_t*, %struct.acc_t** %9, align 8
  %74 = getelementptr inbounds %struct.acc_t, %struct.acc_t* %73, i32 0, i32 1
  %75 = load i64**, i64*** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64*, i64** %75, i64 %77
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %72, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %63
  %84 = load %struct.thread*, %struct.thread** %7, align 8
  %85 = load i32, i32* @PRIV_KEYBOARD, align 4
  %86 = call i32 @priv_check(%struct.thread* %84, i32 %85)
  store i32 %86, i32* %4, align 4
  br label %132

87:                                               ; preds = %63
  %88 = load %struct.acc_t*, %struct.acc_t** %8, align 8
  %89 = getelementptr inbounds %struct.acc_t, %struct.acc_t* %88, i32 0, i32 1
  %90 = load i64**, i64*** %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64*, i64** %90, i64 %92
  %94 = load i64*, i64** %93, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %87
  br label %127

99:                                               ; preds = %87
  %100 = load %struct.acc_t*, %struct.acc_t** %8, align 8
  %101 = getelementptr inbounds %struct.acc_t, %struct.acc_t* %100, i32 0, i32 1
  %102 = load i64**, i64*** %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64*, i64** %102, i64 %104
  %106 = load i64*, i64** %105, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.acc_t*, %struct.acc_t** %9, align 8
  %110 = getelementptr inbounds %struct.acc_t, %struct.acc_t* %109, i32 0, i32 1
  %111 = load i64**, i64*** %110, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64*, i64** %111, i64 %113
  %115 = load i64*, i64** %114, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %108, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %99
  %120 = load %struct.thread*, %struct.thread** %7, align 8
  %121 = load i32, i32* @PRIV_KEYBOARD, align 4
  %122 = call i32 @priv_check(%struct.thread* %120, i32 %121)
  store i32 %122, i32* %4, align 4
  br label %132

123:                                              ; preds = %99
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %11, align 4
  br label %59

127:                                              ; preds = %98, %59
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  br label %28

131:                                              ; preds = %28
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %131, %119, %83, %54, %23, %14
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
