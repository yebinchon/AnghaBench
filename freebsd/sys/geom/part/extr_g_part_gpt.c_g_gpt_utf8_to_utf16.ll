; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_gpt.c_g_gpt_utf8_to_utf16.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_gpt.c_g_gpt_utf8_to_utf16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64)* @g_gpt_utf8_to_utf16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_gpt_utf8_to_utf16(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = shl i64 %13, 1
  %15 = call i32 @bzero(i32* %12, i64 %14)
  br label %16

16:                                               ; preds = %133, %3
  %17 = load i32*, i32** %4, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ult i64 %23, %24
  br label %26

26:                                               ; preds = %22, %16
  %27 = phi i1 [ false, %16 ], [ %25, %22 ]
  br i1 %27, label %28, label %134

28:                                               ; preds = %26
  %29 = load i32*, i32** %4, align 8
  %30 = load i64, i64* %8, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %8, align 8
  %32 = getelementptr inbounds i32, i32* %29, i64 %30
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = and i32 %34, 192
  %36 = icmp ne i32 %35, 128
  br i1 %36, label %37, label %73

37:                                               ; preds = %28
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = call i32 @htole16(i32 65533)
  %42 = load i32*, i32** %5, align 8
  %43 = load i64, i64* %7, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %7, align 8
  %45 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 %41, i32* %45, align 4
  br label %46

46:                                               ; preds = %40, %37
  %47 = load i32, i32* %10, align 4
  %48 = and i32 %47, 248
  %49 = icmp eq i32 %48, 240
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, 7
  store i32 %52, i32* %9, align 4
  store i32 3, i32* %11, align 4
  br label %72

53:                                               ; preds = %46
  %54 = load i32, i32* %10, align 4
  %55 = and i32 %54, 240
  %56 = icmp eq i32 %55, 224
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* %10, align 4
  %59 = and i32 %58, 15
  store i32 %59, i32* %9, align 4
  store i32 2, i32* %11, align 4
  br label %71

60:                                               ; preds = %53
  %61 = load i32, i32* %10, align 4
  %62 = and i32 %61, 224
  %63 = icmp eq i32 %62, 192
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* %10, align 4
  %66 = and i32 %65, 31
  store i32 %66, i32* %9, align 4
  store i32 1, i32* %11, align 4
  br label %70

67:                                               ; preds = %60
  %68 = load i32, i32* %10, align 4
  %69 = and i32 %68, 127
  store i32 %69, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %70

70:                                               ; preds = %67, %64
  br label %71

71:                                               ; preds = %70, %57
  br label %72

72:                                               ; preds = %71, %50
  br label %90

73:                                               ; preds = %28
  %74 = load i32, i32* %11, align 4
  %75 = icmp ugt i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load i32, i32* %9, align 4
  %78 = shl i32 %77, 6
  %79 = load i32, i32* %10, align 4
  %80 = and i32 %79, 63
  %81 = add i32 %78, %80
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %11, align 4
  %83 = add i32 %82, -1
  store i32 %83, i32* %11, align 4
  br label %89

84:                                               ; preds = %73
  %85 = load i32, i32* %11, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i32 -1, i32* %11, align 4
  br label %88

88:                                               ; preds = %87, %84
  br label %89

89:                                               ; preds = %88, %76
  br label %90

90:                                               ; preds = %89, %72
  %91 = load i32, i32* %11, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %133

93:                                               ; preds = %90
  %94 = load i32, i32* %9, align 4
  %95 = icmp sge i32 %94, 65536
  br i1 %95, label %96, label %119

96:                                               ; preds = %93
  %97 = load i64, i64* %7, align 8
  %98 = load i64, i64* %6, align 8
  %99 = sub i64 %98, 1
  %100 = icmp ult i64 %97, %99
  br i1 %100, label %101, label %119

101:                                              ; preds = %96
  %102 = load i32, i32* %9, align 4
  %103 = ashr i32 %102, 10
  %104 = sub nsw i32 %103, 64
  %105 = or i32 55296, %104
  %106 = call i32 @htole16(i32 %105)
  %107 = load i32*, i32** %5, align 8
  %108 = load i64, i64* %7, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %7, align 8
  %110 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32 %106, i32* %110, align 4
  %111 = load i32, i32* %9, align 4
  %112 = and i32 %111, 1023
  %113 = or i32 56320, %112
  %114 = call i32 @htole16(i32 %113)
  %115 = load i32*, i32** %5, align 8
  %116 = load i64, i64* %7, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %7, align 8
  %118 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32 %114, i32* %118, align 4
  br label %132

119:                                              ; preds = %96, %93
  %120 = load i32, i32* %9, align 4
  %121 = icmp sge i32 %120, 65536
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %126

123:                                              ; preds = %119
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @htole16(i32 %124)
  br label %126

126:                                              ; preds = %123, %122
  %127 = phi i32 [ 0, %122 ], [ %125, %123 ]
  %128 = load i32*, i32** %5, align 8
  %129 = load i64, i64* %7, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %7, align 8
  %131 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32 %127, i32* %131, align 4
  br label %132

132:                                              ; preds = %126, %101
  br label %133

133:                                              ; preds = %132, %90
  br label %16

134:                                              ; preds = %26
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %134
  %138 = load i64, i64* %7, align 8
  %139 = load i64, i64* %6, align 8
  %140 = icmp ult i64 %138, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %137
  %142 = call i32 @htole16(i32 65533)
  %143 = load i32*, i32** %5, align 8
  %144 = load i64, i64* %7, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %7, align 8
  %146 = getelementptr inbounds i32, i32* %143, i64 %144
  store i32 %142, i32* %146, align 4
  br label %147

147:                                              ; preds = %141, %137, %134
  ret void
}

declare dso_local i32 @bzero(i32*, i64) #1

declare dso_local i32 @htole16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
