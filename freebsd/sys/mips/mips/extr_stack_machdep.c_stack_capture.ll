; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_stack_machdep.c_stack_capture.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_stack_machdep.c_stack_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i32, i32 }

@btext = common dso_local global i64 0, align 8
@SP = common dso_local global i32 0, align 4
@RA = common dso_local global i32 0, align 4
@OP_JR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stack*, i64, i64)* @stack_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stack_capture(%struct.stack* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.stack*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i16, align 2
  %11 = alloca %struct.TYPE_7__, align 8
  store %struct.stack* %0, %struct.stack** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i16 0, i16* %10, align 2
  %12 = load %struct.stack*, %struct.stack** %4, align 8
  %13 = call i32 @stack_zero(%struct.stack* %12)
  br label %14

14:                                               ; preds = %146, %3
  store i64 0, i64* %9, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @btext, align 8
  %17 = icmp sle i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %151

19:                                               ; preds = %14
  %20 = load i64, i64* %5, align 8
  store i64 %20, i64* %8, align 8
  br label %21

21:                                               ; preds = %77, %19
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @btext, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %80

25:                                               ; preds = %21
  %26 = load i64, i64* %8, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @bcopy(i8* %27, %struct.TYPE_7__* %11, i32 40)
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %71 [
    i32 134, label %32
    i32 133, label %32
    i32 132, label %32
    i32 131, label %32
    i32 128, label %53
    i32 130, label %53
  ]

32:                                               ; preds = %25, %25, %25, %25
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SP, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @SP, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38, %32
  br label %72

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i16
  %50 = sext i16 %49 to i32
  %51 = sub nsw i32 0, %50
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %9, align 8
  br label %72

53:                                               ; preds = %25, %25
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SP, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @RA, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59, %53
  br label %72

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i16
  store i16 %70, i16* %10, align 2
  br label %72

71:                                               ; preds = %25
  br label %72

72:                                               ; preds = %71, %66, %65, %45, %44
  %73 = load i64, i64* %9, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %80

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %8, align 8
  %79 = sub i64 %78, 40
  store i64 %79, i64* %8, align 8
  br label %21

80:                                               ; preds = %75, %21
  %81 = load %struct.stack*, %struct.stack** %4, align 8
  %82 = load i64, i64* %5, align 8
  %83 = call i32 @stack_put(%struct.stack* %81, i64 %82)
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %151

86:                                               ; preds = %80
  %87 = load i64, i64* %5, align 8
  store i64 %87, i64* %8, align 8
  br label %88

88:                                               ; preds = %135, %86
  %89 = load i64, i64* %7, align 8
  %90 = icmp ne i64 %89, 0
  %91 = xor i1 %90, true
  br i1 %91, label %92, label %138

92:                                               ; preds = %88
  %93 = load i64, i64* %8, align 8
  %94 = inttoptr i64 %93 to i8*
  %95 = call i32 @bcopy(i8* %94, %struct.TYPE_7__* %11, i32 40)
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  switch i32 %98, label %128 [
    i32 129, label %99
  ]

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @OP_JR, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %127

105:                                              ; preds = %99
  %106 = load i64, i64* %7, align 8
  %107 = load i64, i64* @btext, align 8
  %108 = icmp sge i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  br label %129

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @RA, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %129

117:                                              ; preds = %110
  %118 = load i64, i64* %6, align 8
  %119 = load i16, i16* %10, align 2
  %120 = call i64 @stack_register_fetch(i64 %118, i16 signext %119)
  store i64 %120, i64* %7, align 8
  %121 = load i64, i64* %7, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %117
  br label %152

124:                                              ; preds = %117
  %125 = load i64, i64* %7, align 8
  %126 = sub nsw i64 %125, 8
  store i64 %126, i64* %7, align 8
  br label %127

127:                                              ; preds = %124, %99
  br label %129

128:                                              ; preds = %92
  br label %129

129:                                              ; preds = %128, %127, %116, %109
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %131, 1107296280
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  br label %152

134:                                              ; preds = %129
  br label %135

135:                                              ; preds = %134
  %136 = load i64, i64* %8, align 8
  %137 = add i64 %136, 40
  store i64 %137, i64* %8, align 8
  br label %88

138:                                              ; preds = %88
  %139 = load i64, i64* %5, align 8
  %140 = load i64, i64* %7, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = load i64, i64* %9, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  br label %151

146:                                              ; preds = %142, %138
  %147 = load i64, i64* %9, align 8
  %148 = load i64, i64* %6, align 8
  %149 = add nsw i64 %148, %147
  store i64 %149, i64* %6, align 8
  %150 = load i64, i64* %7, align 8
  store i64 %150, i64* %5, align 8
  store i64 0, i64* %7, align 8
  br label %14

151:                                              ; preds = %145, %85, %18
  br label %152

152:                                              ; preds = %151, %133, %123
  ret void
}

declare dso_local i32 @stack_zero(%struct.stack*) #1

declare dso_local i32 @bcopy(i8*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @stack_put(%struct.stack*, i64) #1

declare dso_local i64 @stack_register_fetch(i64, i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
