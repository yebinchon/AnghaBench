; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athregs/extr_dumpregs.c_ath_hal_setupregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athregs/extr_dumpregs.c_ath_hal_setupregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.dumpreg**, i32 }
%struct.dumpreg = type { i32, i32 }
%struct.ath_diag = type { i64, i32* }
%struct.TYPE_4__ = type { i32, i32 }

@state = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Cannot malloc memory for registers!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_diag*, i32)* @ath_hal_setupregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_hal_setupregs(%struct.ath_diag* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_diag*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dumpreg*, align 8
  %13 = alloca %struct.dumpreg*, align 8
  store %struct.ath_diag* %0, %struct.ath_diag** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @state, i32 0, i32 2), i32** %5, align 8
  store i64 0, i64* %7, align 8
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %58, %2
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @state, i32 0, i32 0), align 8
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %61

18:                                               ; preds = %14
  %19 = load %struct.dumpreg**, %struct.dumpreg*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @state, i32 0, i32 1), align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.dumpreg*, %struct.dumpreg** %19, i64 %21
  %23 = load %struct.dumpreg*, %struct.dumpreg** %22, align 8
  store %struct.dumpreg* %23, %struct.dumpreg** %12, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.dumpreg*, %struct.dumpreg** %12, align 8
  %26 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %18
  %31 = load %struct.dumpreg*, %struct.dumpreg** %12, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i64 @match(%struct.dumpreg* %31, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %30
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, 4
  %38 = load %struct.dumpreg*, %struct.dumpreg** %12, align 8
  %39 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %35
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, -1
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %46, 8
  store i64 %47, i64* %7, align 8
  br label %48

48:                                               ; preds = %45, %42
  %49 = load %struct.dumpreg*, %struct.dumpreg** %12, align 8
  %50 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %11, align 4
  store i32 %51, i32* %10, align 4
  br label %56

52:                                               ; preds = %35
  %53 = load %struct.dumpreg*, %struct.dumpreg** %12, align 8
  %54 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %52, %48
  br label %57

57:                                               ; preds = %56, %30, %18
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %14

61:                                               ; preds = %14
  %62 = load i64, i64* %7, align 8
  %63 = add i64 %62, 8
  store i64 %63, i64* %7, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i64 @malloc(i64 %64)
  %66 = inttoptr i64 %65 to i32*
  %67 = load %struct.ath_diag*, %struct.ath_diag** %3, align 8
  %68 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %67, i32 0, i32 1
  store i32* %66, i32** %68, align 8
  %69 = load %struct.ath_diag*, %struct.ath_diag** %3, align 8
  %70 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %61
  %74 = load i32, i32* @stderr, align 4
  %75 = call i32 @fprintf(i32 %74, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %76 = call i32 @exit(i32 -1) #3
  unreachable

77:                                               ; preds = %61
  %78 = load i64, i64* %7, align 8
  %79 = load %struct.ath_diag*, %struct.ath_diag** %3, align 8
  %80 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load %struct.ath_diag*, %struct.ath_diag** %3, align 8
  %82 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  store i32* %83, i32** %8, align 8
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %134, %77
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @state, i32 0, i32 0), align 8
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %137

88:                                               ; preds = %84
  %89 = load %struct.dumpreg**, %struct.dumpreg*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @state, i32 0, i32 1), align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.dumpreg*, %struct.dumpreg** %89, i64 %91
  %93 = load %struct.dumpreg*, %struct.dumpreg** %92, align 8
  store %struct.dumpreg* %93, %struct.dumpreg** %13, align 8
  %94 = load i32, i32* %4, align 4
  %95 = load %struct.dumpreg*, %struct.dumpreg** %13, align 8
  %96 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %94, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %133

100:                                              ; preds = %88
  %101 = load %struct.dumpreg*, %struct.dumpreg** %13, align 8
  %102 = load i32*, i32** %5, align 8
  %103 = call i64 @match(%struct.dumpreg* %101, i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %133

105:                                              ; preds = %100
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 4
  %108 = load %struct.dumpreg*, %struct.dumpreg** %13, align 8
  %109 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %107, %110
  br i1 %111, label %112, label %128

112:                                              ; preds = %105
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, -1
  br i1 %114, label %115, label %124

115:                                              ; preds = %112
  %116 = load i32, i32* %10, align 4
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 %116, i32* %117, align 4
  %118 = load i32, i32* %11, align 4
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i32 %118, i32* %119, align 4
  %120 = load i32*, i32** %8, align 8
  %121 = call i32 @memcpy(i32* %120, %struct.TYPE_4__* %6, i32 8)
  %122 = load i32*, i32** %8, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 8
  store i32* %123, i32** %8, align 8
  br label %124

124:                                              ; preds = %115, %112
  %125 = load %struct.dumpreg*, %struct.dumpreg** %13, align 8
  %126 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %11, align 4
  store i32 %127, i32* %10, align 4
  br label %132

128:                                              ; preds = %105
  %129 = load %struct.dumpreg*, %struct.dumpreg** %13, align 8
  %130 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %11, align 4
  br label %132

132:                                              ; preds = %128, %124
  br label %133

133:                                              ; preds = %132, %100, %88
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %9, align 4
  br label %84

137:                                              ; preds = %84
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %138, -1
  br i1 %139, label %140, label %149

140:                                              ; preds = %137
  %141 = load i32, i32* %10, align 4
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 %141, i32* %142, align 4
  %143 = load i32, i32* %11, align 4
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i32 %143, i32* %144, align 4
  %145 = load i32*, i32** %8, align 8
  %146 = call i32 @memcpy(i32* %145, %struct.TYPE_4__* %6, i32 8)
  %147 = load i32*, i32** %8, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 8
  store i32* %148, i32** %8, align 8
  br label %149

149:                                              ; preds = %140, %137
  %150 = load i64, i64* %7, align 8
  %151 = udiv i64 %150, 4
  %152 = trunc i64 %151 to i32
  ret i32 %152
}

declare dso_local i64 @match(%struct.dumpreg*, i32*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memcpy(i32*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
