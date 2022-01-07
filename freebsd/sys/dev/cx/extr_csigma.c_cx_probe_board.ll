; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_csigma.c_cx_probe_board.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_csigma.c_cx_probe_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@porttab = common dso_local global i32 0, align 4
@irqtab = common dso_local global i32 0, align 4
@dmatab = common dso_local global i32 0, align 4
@BSR_NOCHAIN = common dso_local global i32 0, align 4
@BCR0_NORESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx_probe_board(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @porttab, align 4
  %15 = call i32 @valid(i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %177

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @irqtab, align 4
  %24 = call i32 @valid(i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %177

27:                                               ; preds = %21, %18
  %28 = load i32, i32* %7, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @dmatab, align 4
  %33 = call i32 @valid(i32 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %177

36:                                               ; preds = %30, %27
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @cx_probe_800_chained_board(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %36
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @BSR(i32 %41)
  %43 = call i32 @inb(i32 %42)
  %44 = load i32, i32* @BSR_NOCHAIN, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %63, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 16
  %50 = call i64 @cx_probe_800_chained_board(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %177

53:                                               ; preds = %47
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 16
  %56 = call i32 @BSR(i32 %55)
  %57 = call i32 @inb(i32 %56)
  %58 = load i32, i32* @BSR_NOCHAIN, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %177

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %40
  store i32 1, i32* %4, align 4
  br label %177

64:                                               ; preds = %36
  %65 = load i32, i32* %5, align 4
  %66 = call i64 @cx_probe_chained_board(i32 %65, i32* %8, i32* %9)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %92

68:                                               ; preds = %64
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @BSR(i32 %69)
  %71 = call i32 @inb(i32 %70)
  %72 = load i32, i32* @BSR_NOCHAIN, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %91, label %75

75:                                               ; preds = %68
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 16
  %78 = call i64 @cx_probe_chained_board(i32 %77, i32* %10, i32* %11)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  store i32 0, i32* %4, align 4
  br label %177

81:                                               ; preds = %75
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 16
  %84 = call i32 @BSR(i32 %83)
  %85 = call i32 @inb(i32 %84)
  %86 = load i32, i32* @BSR_NOCHAIN, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %81
  store i32 0, i32* %4, align 4
  br label %177

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90, %68
  br label %99

92:                                               ; preds = %64
  %93 = load i32, i32* %5, align 4
  %94 = call i64 @cx_probe_2x_board(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %98

97:                                               ; preds = %92
  store i32 0, i32* %4, align 4
  br label %177

98:                                               ; preds = %96
  br label %99

99:                                               ; preds = %98, %91
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @BCR0(i32 %100)
  %102 = load i32, i32* @BCR0_NORESET, align 4
  %103 = call i32 @outb(i32 %101, i32 %102)
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %99
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %106, %99
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, 16
  %112 = call i32 @BCR0(i32 %111)
  %113 = load i32, i32* @BCR0_NORESET, align 4
  %114 = call i32 @outb(i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %109, %106
  store i32 1, i32* %12, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @CS0(i32 %119)
  %121 = call i32 @cx_probe_chip(i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %118
  store i32 0, i32* %12, align 4
  br label %161

124:                                              ; preds = %118, %115
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %124
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @CS1A(i32 %128)
  %130 = call i32 @cx_probe_chip(i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %127
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @CS1(i32 %133)
  %135 = call i32 @cx_probe_chip(i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %132
  store i32 0, i32* %12, align 4
  br label %160

138:                                              ; preds = %132, %127, %124
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %138
  %142 = load i32, i32* %5, align 4
  %143 = add nsw i32 %142, 16
  %144 = call i32 @CS0(i32 %143)
  %145 = call i32 @cx_probe_chip(i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %141
  store i32 0, i32* %12, align 4
  br label %159

148:                                              ; preds = %141, %138
  %149 = load i32, i32* %11, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %148
  %152 = load i32, i32* %5, align 4
  %153 = add nsw i32 %152, 16
  %154 = call i32 @CS1(i32 %153)
  %155 = call i32 @cx_probe_chip(i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %151
  store i32 0, i32* %12, align 4
  br label %158

158:                                              ; preds = %157, %151, %148
  br label %159

159:                                              ; preds = %158, %147
  br label %160

160:                                              ; preds = %159, %137
  br label %161

161:                                              ; preds = %160, %123
  %162 = load i32, i32* %5, align 4
  %163 = call i32 @BCR0(i32 %162)
  %164 = call i32 @outb(i32 %163, i32 0)
  %165 = load i32, i32* %10, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %161
  %168 = load i32, i32* %11, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %167, %161
  %171 = load i32, i32* %5, align 4
  %172 = add nsw i32 %171, 16
  %173 = call i32 @BCR0(i32 %172)
  %174 = call i32 @outb(i32 %173, i32 0)
  br label %175

175:                                              ; preds = %170, %167
  %176 = load i32, i32* %12, align 4
  store i32 %176, i32* %4, align 4
  br label %177

177:                                              ; preds = %175, %97, %89, %80, %63, %61, %52, %35, %26, %17
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local i32 @valid(i32, i32) #1

declare dso_local i64 @cx_probe_800_chained_board(i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @BSR(i32) #1

declare dso_local i64 @cx_probe_chained_board(i32, i32*, i32*) #1

declare dso_local i64 @cx_probe_2x_board(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @BCR0(i32) #1

declare dso_local i32 @cx_probe_chip(i32) #1

declare dso_local i32 @CS0(i32) #1

declare dso_local i32 @CS1A(i32) #1

declare dso_local i32 @CS1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
