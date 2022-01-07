; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_cmd.c_mlx4_cmd_use_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_cmd.c_mlx4_cmd_use_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_cmd_use_events(%struct.mlx4_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  %6 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %7 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %6)
  store %struct.mlx4_priv* %7, %struct.mlx4_priv** %4, align 8
  %8 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %9 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %148

14:                                               ; preds = %1
  %15 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %16 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.TYPE_4__* @kmalloc(i32 %21, i32 %22)
  %24 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %25 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 7
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %26, align 8
  %27 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %28 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 7
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %14
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %148

35:                                               ; preds = %14
  %36 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %37 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  %39 = call i32 @down_write(i32* %38)
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %76, %35
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %43 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %41, %45
  br i1 %46, label %47, label %79

47:                                               ; preds = %40
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %50 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 7
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 %48, i32* %56, align 4
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  %59 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %60 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 7
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i32 %58, i32* %66, align 4
  %67 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %68 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 7
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = call i32 @init_completion(i32* %74)
  br label %76

76:                                               ; preds = %47
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %40

79:                                               ; preds = %40
  %80 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %81 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 7
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %85 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  store i32 -1, i32* %91, align 4
  %92 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %93 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 6
  store i64 0, i64* %94, align 8
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %107, %79
  %96 = load i32, i32* %5, align 4
  %97 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %98 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %96, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %95
  %103 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %104 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 5
  %106 = call i32 @up(i32* %105)
  br label %107

107:                                              ; preds = %102
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %5, align 4
  br label %95

110:                                              ; preds = %95
  %111 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %112 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  store i32 1, i32* %113, align 8
  br label %114

114:                                              ; preds = %125, %110
  %115 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %116 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %120 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %118, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %114
  br label %125

125:                                              ; preds = %124
  %126 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %127 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = shl i32 %129, 1
  store i32 %130, i32* %128, align 8
  br label %114

131:                                              ; preds = %114
  %132 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %133 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %134, align 8
  %137 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %138 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 4
  %140 = call i32 @down(i32* %139)
  %141 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %142 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  store i32 1, i32* %143, align 8
  %144 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %145 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 3
  %147 = call i32 @up_write(i32* %146)
  store i32 0, i32* %2, align 4
  br label %148

148:                                              ; preds = %131, %32, %13
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local %struct.TYPE_4__* @kmalloc(i32, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
