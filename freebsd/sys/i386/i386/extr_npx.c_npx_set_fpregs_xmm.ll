; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_npx.c_npx_set_fpregs_xmm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_npx.c_npx_set_fpregs_xmm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.save87 = type { i32*, %struct.env87 }
%struct.env87 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.savexmm = type { %struct.TYPE_2__*, %struct.envxmm }
%struct.TYPE_2__ = type { i32 }
%struct.envxmm = type { i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @npx_set_fpregs_xmm(%struct.save87* %0, %struct.savexmm* %1) #0 {
  %3 = alloca %struct.save87*, align 8
  %4 = alloca %struct.savexmm*, align 8
  %5 = alloca %struct.env87*, align 8
  %6 = alloca %struct.envxmm*, align 8
  %7 = alloca i32, align 4
  store %struct.save87* %0, %struct.save87** %3, align 8
  store %struct.savexmm* %1, %struct.savexmm** %4, align 8
  %8 = load %struct.save87*, %struct.save87** %3, align 8
  %9 = getelementptr inbounds %struct.save87, %struct.save87* %8, i32 0, i32 1
  store %struct.env87* %9, %struct.env87** %5, align 8
  %10 = load %struct.savexmm*, %struct.savexmm** %4, align 8
  %11 = getelementptr inbounds %struct.savexmm, %struct.savexmm* %10, i32 0, i32 1
  store %struct.envxmm* %11, %struct.envxmm** %6, align 8
  %12 = load %struct.env87*, %struct.env87** %5, align 8
  %13 = getelementptr inbounds %struct.env87, %struct.env87* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.envxmm*, %struct.envxmm** %6, align 8
  %16 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %15, i32 0, i32 7
  store i32 %14, i32* %16, align 4
  %17 = load %struct.env87*, %struct.env87** %5, align 8
  %18 = getelementptr inbounds %struct.env87, %struct.env87* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.envxmm*, %struct.envxmm** %6, align 8
  %21 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 4
  %22 = load %struct.env87*, %struct.env87** %5, align 8
  %23 = getelementptr inbounds %struct.env87, %struct.env87* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.envxmm*, %struct.envxmm** %6, align 8
  %26 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load %struct.env87*, %struct.env87** %5, align 8
  %28 = getelementptr inbounds %struct.env87, %struct.env87* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.envxmm*, %struct.envxmm** %6, align 8
  %31 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load %struct.env87*, %struct.env87** %5, align 8
  %33 = getelementptr inbounds %struct.env87, %struct.env87* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.envxmm*, %struct.envxmm** %6, align 8
  %36 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.env87*, %struct.env87** %5, align 8
  %38 = getelementptr inbounds %struct.env87, %struct.env87* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.envxmm*, %struct.envxmm** %6, align 8
  %41 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.env87*, %struct.env87** %5, align 8
  %43 = getelementptr inbounds %struct.env87, %struct.env87* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.envxmm*, %struct.envxmm** %6, align 8
  %46 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.envxmm*, %struct.envxmm** %6, align 8
  %48 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %86, %2
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 8
  br i1 %51, label %52, label %89

52:                                               ; preds = %49
  %53 = load %struct.save87*, %struct.save87** %3, align 8
  %54 = getelementptr inbounds %struct.save87, %struct.save87* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.savexmm*, %struct.savexmm** %4, align 8
  %61 = getelementptr inbounds %struct.savexmm, %struct.savexmm* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 %59, i32* %66, align 4
  %67 = load %struct.env87*, %struct.env87** %5, align 8
  %68 = getelementptr inbounds %struct.env87, %struct.env87* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %7, align 4
  %71 = mul nsw i32 %70, 2
  %72 = shl i32 3, %71
  %73 = and i32 %69, %72
  %74 = load i32, i32* %7, align 4
  %75 = mul nsw i32 %74, 2
  %76 = shl i32 3, %75
  %77 = icmp ne i32 %73, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %52
  %79 = load i32, i32* %7, align 4
  %80 = shl i32 1, %79
  %81 = load %struct.envxmm*, %struct.envxmm** %6, align 8
  %82 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %78, %52
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %49

89:                                               ; preds = %49
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
