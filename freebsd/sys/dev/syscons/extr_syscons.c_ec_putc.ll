; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_ec_putc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_ec_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@sc_console = common dso_local global i32* null, align 8
@KERNBASE = common dso_local global i32 0, align 4
@main_console = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@ec_scroffset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ec_putc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ec_putc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %2, align 4
  %17 = icmp sgt i32 %16, 255
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %2, align 4
  %20 = icmp eq i32 %19, 7
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %15, %1
  br label %153

22:                                               ; preds = %18
  %23 = load i32*, i32** @sc_console, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* @KERNBASE, align 4
  %27 = add nsw i32 %26, 753664
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %3, align 8
  store i32 80, i32* %10, align 4
  store i32 25, i32* %12, align 4
  br label %41

29:                                               ; preds = %22
  %30 = call i32 @ISTEXTSC(%struct.TYPE_7__* @main_console)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  br label %153

33:                                               ; preds = %29
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @main_console, i32 0, i32 2), align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %3, align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @main_console, i32 0, i32 0), align 8
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @main_console, i32 0, i32 1), align 4
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %33, %25
  %42 = load i32, i32* %12, align 4
  %43 = sdiv i32 %42, 5
  store i32 %43, i32* %11, align 4
  %44 = load i64, i64* %3, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = bitcast i8* %45 to i32*
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = mul nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  store i32* %51, i32** %4, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %11, align 4
  %55 = mul nsw i32 2, %54
  %56 = sub nsw i32 %53, %55
  %57 = mul nsw i32 %52, %56
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %107, %41
  %59 = load i32, i32* @ec_scroffset, align 4
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %10, align 4
  %62 = srem i32 %60, %61
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %2, align 4
  %64 = icmp eq i32 %63, 8
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %93

66:                                               ; preds = %58
  %67 = load i32, i32* %2, align 4
  %68 = icmp eq i32 %67, 9
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 8
  %72 = and i32 %71, -8
  br label %91

73:                                               ; preds = %66
  %74 = load i32, i32* %2, align 4
  %75 = icmp eq i32 %74, 13
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* %7, align 4
  %78 = sub nsw i32 0, %77
  br label %89

79:                                               ; preds = %73
  %80 = load i32, i32* %2, align 4
  %81 = icmp eq i32 %80, 10
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %7, align 4
  %85 = sub nsw i32 %83, %84
  br label %87

86:                                               ; preds = %79
  br label %87

87:                                               ; preds = %86, %82
  %88 = phi i32 [ %85, %82 ], [ 1, %86 ]
  br label %89

89:                                               ; preds = %87, %76
  %90 = phi i32 [ %78, %76 ], [ %88, %87 ]
  br label %91

91:                                               ; preds = %89, %69
  %92 = phi i32 [ %72, %69 ], [ %90, %89 ]
  br label %93

93:                                               ; preds = %91, %65
  %94 = phi i32 [ -1, %65 ], [ %92, %91 ]
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %9, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %9, align 4
  %103 = sub nsw i32 0, %102
  %104 = icmp slt i32 %101, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %100, %93
  br label %153

106:                                              ; preds = %100, %97
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %109, %110
  %112 = call i64 @atomic_cmpset_rel_int(i32* @ec_scroffset, i32 %108, i32 %111)
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %58, label %114

114:                                              ; preds = %107
  %115 = load i32, i32* %2, align 4
  %116 = icmp eq i32 %115, 8
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = load i32, i32* %2, align 4
  %119 = icmp eq i32 %118, 13
  br i1 %119, label %120, label %121

120:                                              ; preds = %117, %114
  br label %153

121:                                              ; preds = %117
  %122 = load i32, i32* %2, align 4
  %123 = icmp eq i32 %122, 10
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %124, %121
  %129 = call i32 (...) @sc_kattr()
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %2, align 4
  %131 = icmp eq i32 %130, 9
  br i1 %131, label %135, label %132

132:                                              ; preds = %128
  %133 = load i32, i32* %2, align 4
  %134 = icmp eq i32 %133, 10
  br i1 %134, label %135, label %136

135:                                              ; preds = %132, %128
  store i32 32, i32* %2, align 4
  br label %136

136:                                              ; preds = %135, %132
  br label %137

137:                                              ; preds = %149, %136
  %138 = load i32, i32* %6, align 4
  %139 = shl i32 %138, 8
  %140 = load i32, i32* %2, align 4
  %141 = or i32 %139, %140
  %142 = load i32*, i32** %4, align 8
  %143 = load i32, i32* %5, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %5, align 4
  %145 = load i32, i32* %8, align 4
  %146 = srem i32 %143, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %142, i64 %147
  store i32 %141, i32* %148, align 4
  br label %149

149:                                              ; preds = %137
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %137, label %153

153:                                              ; preds = %21, %32, %105, %120, %149
  ret void
}

declare dso_local i32 @ISTEXTSC(%struct.TYPE_7__*) #1

declare dso_local i64 @atomic_cmpset_rel_int(i32*, i32, i32) #1

declare dso_local i32 @sc_kattr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
