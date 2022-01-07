; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/win32-ia32/gbdk/examples/gb/gb-dtmf/extr_gb-dtmf.c_init_key.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/win32-ia32/gbdk/examples/gb/gb-dtmf/extr_gb-dtmf.c_init_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@key_num = common dso_local global i32 0, align 4
@KEY_STEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_key() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @key_num, align 4
  %6 = call i32 @set_sprite_data(i32 0, i32 24, i32 %5)
  %7 = load i32, i32* @KEY_STEP, align 4
  %8 = add nsw i32 %7, 40
  store i32 %8, i32* %2, align 4
  store i32 1, i32* %3, align 4
  br label %9

9:                                                ; preds = %23, %0
  %10 = load i32, i32* %3, align 4
  %11 = icmp sle i32 %10, 3
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @KEY_STEP, align 4
  %15 = mul nsw i32 %13, %14
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @set_sprite_tile(i32 %16, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @move_sprite(i32 %19, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %12
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %9

26:                                               ; preds = %9
  %27 = load i32, i32* @KEY_STEP, align 4
  %28 = mul nsw i32 %27, 2
  %29 = add nsw i32 %28, 40
  store i32 %29, i32* %2, align 4
  store i32 4, i32* %3, align 4
  br label %30

30:                                               ; preds = %45, %26
  %31 = load i32, i32* %3, align 4
  %32 = icmp sle i32 %31, 6
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = load i32, i32* %3, align 4
  %35 = sub nsw i32 %34, 3
  %36 = load i32, i32* @KEY_STEP, align 4
  %37 = mul nsw i32 %35, %36
  store i32 %37, i32* %1, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @set_sprite_tile(i32 %38, i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @move_sprite(i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %33
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %30

48:                                               ; preds = %30
  %49 = load i32, i32* @KEY_STEP, align 4
  %50 = mul nsw i32 %49, 3
  %51 = add nsw i32 %50, 40
  store i32 %51, i32* %2, align 4
  store i32 7, i32* %3, align 4
  br label %52

52:                                               ; preds = %67, %48
  %53 = load i32, i32* %3, align 4
  %54 = icmp sle i32 %53, 9
  br i1 %54, label %55, label %70

55:                                               ; preds = %52
  %56 = load i32, i32* %3, align 4
  %57 = sub nsw i32 %56, 6
  %58 = load i32, i32* @KEY_STEP, align 4
  %59 = mul nsw i32 %57, %58
  store i32 %59, i32* %1, align 4
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @set_sprite_tile(i32 %60, i32 %61)
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* %1, align 4
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @move_sprite(i32 %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %55
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %52

70:                                               ; preds = %52
  %71 = load i32, i32* @KEY_STEP, align 4
  %72 = mul nsw i32 %71, 4
  store i32 %72, i32* %1, align 4
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %92, %70
  %74 = load i32, i32* %3, align 4
  %75 = icmp sle i32 %74, 3
  br i1 %75, label %76, label %95

76:                                               ; preds = %73
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, 1
  %79 = load i32, i32* @KEY_STEP, align 4
  %80 = mul nsw i32 %78, %79
  %81 = add nsw i32 %80, 40
  store i32 %81, i32* %2, align 4
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 10
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, 10
  %86 = call i32 @set_sprite_tile(i32 %83, i32 %85)
  %87 = load i32, i32* %3, align 4
  %88 = add nsw i32 %87, 10
  %89 = load i32, i32* %1, align 4
  %90 = load i32, i32* %2, align 4
  %91 = call i32 @move_sprite(i32 %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %76
  %93 = load i32, i32* %3, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %3, align 4
  br label %73

95:                                               ; preds = %73
  %96 = call i32 @set_sprite_tile(i32 15, i32 15)
  %97 = load i32, i32* @KEY_STEP, align 4
  %98 = mul nsw i32 %97, 1
  %99 = load i32, i32* @KEY_STEP, align 4
  %100 = mul nsw i32 %99, 4
  %101 = add nsw i32 %100, 40
  %102 = call i32 @move_sprite(i32 15, i32 %98, i32 %101)
  %103 = call i32 @set_sprite_tile(i32 0, i32 0)
  %104 = load i32, i32* @KEY_STEP, align 4
  %105 = mul nsw i32 %104, 2
  %106 = load i32, i32* @KEY_STEP, align 4
  %107 = mul nsw i32 %106, 4
  %108 = add nsw i32 %107, 40
  %109 = call i32 @move_sprite(i32 0, i32 %105, i32 %108)
  %110 = call i32 @set_sprite_tile(i32 14, i32 14)
  %111 = load i32, i32* @KEY_STEP, align 4
  %112 = mul nsw i32 %111, 3
  %113 = load i32, i32* @KEY_STEP, align 4
  %114 = mul nsw i32 %113, 4
  %115 = add nsw i32 %114, 40
  %116 = call i32 @move_sprite(i32 14, i32 %112, i32 %115)
  %117 = load i32, i32* @KEY_STEP, align 4
  %118 = mul nsw i32 %117, 5
  %119 = add nsw i32 %118, 8
  store i32 %119, i32* %1, align 4
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %139, %95
  %121 = load i32, i32* %3, align 4
  %122 = icmp sle i32 %121, 2
  br i1 %122, label %123, label %142

123:                                              ; preds = %120
  %124 = load i32, i32* %3, align 4
  %125 = add nsw i32 %124, 1
  %126 = load i32, i32* @KEY_STEP, align 4
  %127 = mul nsw i32 %125, %126
  %128 = add nsw i32 %127, 40
  store i32 %128, i32* %2, align 4
  %129 = load i32, i32* %3, align 4
  %130 = add nsw i32 %129, 16
  %131 = load i32, i32* %3, align 4
  %132 = add nsw i32 %131, 16
  %133 = call i32 @set_sprite_tile(i32 %130, i32 %132)
  %134 = load i32, i32* %3, align 4
  %135 = add nsw i32 %134, 16
  %136 = load i32, i32* %1, align 4
  %137 = load i32, i32* %2, align 4
  %138 = call i32 @move_sprite(i32 %135, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %123
  %140 = load i32, i32* %3, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %3, align 4
  br label %120

142:                                              ; preds = %120
  %143 = load i32, i32* @KEY_STEP, align 4
  %144 = mul nsw i32 %143, 6
  %145 = add nsw i32 %144, 8
  store i32 %145, i32* %1, align 4
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %165, %142
  %147 = load i32, i32* %3, align 4
  %148 = icmp sle i32 %147, 2
  br i1 %148, label %149, label %168

149:                                              ; preds = %146
  %150 = load i32, i32* %3, align 4
  %151 = add nsw i32 %150, 1
  %152 = load i32, i32* @KEY_STEP, align 4
  %153 = mul nsw i32 %151, %152
  %154 = add nsw i32 %153, 40
  store i32 %154, i32* %2, align 4
  %155 = load i32, i32* %3, align 4
  %156 = add nsw i32 %155, 19
  %157 = load i32, i32* %3, align 4
  %158 = add nsw i32 %157, 19
  %159 = call i32 @set_sprite_tile(i32 %156, i32 %158)
  %160 = load i32, i32* %3, align 4
  %161 = add nsw i32 %160, 19
  %162 = load i32, i32* %1, align 4
  %163 = load i32, i32* %2, align 4
  %164 = call i32 @move_sprite(i32 %161, i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %149
  %166 = load i32, i32* %3, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %3, align 4
  br label %146

168:                                              ; preds = %146
  %169 = load i32, i32* @KEY_STEP, align 4
  %170 = mul nsw i32 %169, 5
  %171 = add nsw i32 %170, 20
  store i32 %171, i32* %1, align 4
  %172 = load i32, i32* @KEY_STEP, align 4
  %173 = mul nsw i32 %172, 4
  %174 = add nsw i32 %173, 40
  store i32 %174, i32* %2, align 4
  %175 = call i32 @set_sprite_tile(i32 22, i32 22)
  %176 = load i32, i32* %1, align 4
  %177 = load i32, i32* %2, align 4
  %178 = call i32 @move_sprite(i32 22, i32 %176, i32 %177)
  ret void
}

declare dso_local i32 @set_sprite_data(i32, i32, i32) #1

declare dso_local i32 @set_sprite_tile(i32, i32) #1

declare dso_local i32 @move_sprite(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
