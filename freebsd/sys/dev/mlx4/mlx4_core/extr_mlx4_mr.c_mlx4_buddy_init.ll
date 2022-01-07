; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_mr.c_mlx4_buddy_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_mr.c_mlx4_buddy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_buddy = type { i32, i32*, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_buddy*, i32)* @mlx4_buddy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_buddy_init(%struct.mlx4_buddy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_buddy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx4_buddy* %0, %struct.mlx4_buddy** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %10 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %12 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %11, i32 0, i32 3
  %13 = call i32 @spin_lock_init(i32* %12)
  %14 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %15 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kcalloc(i32 %17, i32 8, i32 %18)
  %20 = bitcast i8* %19 to i32*
  %21 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %22 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  %23 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %24 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @kcalloc(i32 %26, i32 4, i32 %27)
  %29 = bitcast i8* %28 to i32*
  %30 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %31 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %30, i32 0, i32 2
  store i32* %29, i32** %31, align 8
  %32 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %33 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %2
  %37 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %38 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36, %2
  br label %142

42:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %100, %42
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %46 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sle i32 %44, %47
  br i1 %48, label %49, label %103

49:                                               ; preds = %43
  %50 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %51 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 %52, %53
  %55 = shl i32 1, %54
  %56 = call i32 @BITS_TO_LONGS(i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = load i32, i32* @__GFP_NOWARN, align 4
  %60 = or i32 %58, %59
  %61 = call i8* @kcalloc(i32 %57, i32 8, i32 %60)
  %62 = ptrtoint i8* %61 to i32
  %63 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %64 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %62, i32* %68, align 4
  %69 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %70 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %99, label %77

77:                                               ; preds = %49
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 8
  %81 = trunc i64 %80 to i32
  %82 = call i32 @vzalloc(i32 %81)
  %83 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %84 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %82, i32* %88, align 4
  %89 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %90 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %77
  br label %122

98:                                               ; preds = %77
  br label %99

99:                                               ; preds = %98, %49
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %43

103:                                              ; preds = %43
  %104 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %105 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %108 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %106, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @set_bit(i32 0, i32 %112)
  %114 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %115 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %118 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %116, i64 %120
  store i32 1, i32* %121, align 4
  store i32 0, i32* %3, align 4
  br label %153

122:                                              ; preds = %97
  store i32 0, i32* %6, align 4
  br label %123

123:                                              ; preds = %138, %122
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %126 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp sle i32 %124, %127
  br i1 %128, label %129, label %141

129:                                              ; preds = %123
  %130 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %131 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @kvfree(i32 %136)
  br label %138

138:                                              ; preds = %129
  %139 = load i32, i32* %6, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %6, align 4
  br label %123

141:                                              ; preds = %123
  br label %142

142:                                              ; preds = %141, %41
  %143 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %144 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @kfree(i32* %145)
  %147 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %148 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = call i32 @kfree(i32* %149)
  %151 = load i32, i32* @ENOMEM, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %142, %103
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @vzalloc(i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @kvfree(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
