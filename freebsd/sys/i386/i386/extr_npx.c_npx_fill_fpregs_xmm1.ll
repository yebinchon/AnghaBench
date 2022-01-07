; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_npx.c_npx_fill_fpregs_xmm1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_npx.c_npx_fill_fpregs_xmm1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.savexmm = type { %struct.TYPE_2__*, %struct.envxmm }
%struct.TYPE_2__ = type { i32 }
%struct.envxmm = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.save87 = type { i32*, %struct.env87 }
%struct.env87 = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.savexmm*, %struct.save87*)* @npx_fill_fpregs_xmm1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @npx_fill_fpregs_xmm1(%struct.savexmm* %0, %struct.save87* %1) #0 {
  %3 = alloca %struct.savexmm*, align 8
  %4 = alloca %struct.save87*, align 8
  %5 = alloca %struct.env87*, align 8
  %6 = alloca %struct.envxmm*, align 8
  %7 = alloca i32, align 4
  store %struct.savexmm* %0, %struct.savexmm** %3, align 8
  store %struct.save87* %1, %struct.save87** %4, align 8
  %8 = load %struct.save87*, %struct.save87** %4, align 8
  %9 = getelementptr inbounds %struct.save87, %struct.save87* %8, i32 0, i32 1
  store %struct.env87* %9, %struct.env87** %5, align 8
  %10 = load %struct.savexmm*, %struct.savexmm** %3, align 8
  %11 = getelementptr inbounds %struct.savexmm, %struct.savexmm* %10, i32 0, i32 1
  store %struct.envxmm* %11, %struct.envxmm** %6, align 8
  %12 = load %struct.envxmm*, %struct.envxmm** %6, align 8
  %13 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.env87*, %struct.env87** %5, align 8
  %16 = getelementptr inbounds %struct.env87, %struct.env87* %15, i32 0, i32 7
  store i32 %14, i32* %16, align 4
  %17 = load %struct.envxmm*, %struct.envxmm** %6, align 8
  %18 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.env87*, %struct.env87** %5, align 8
  %21 = getelementptr inbounds %struct.env87, %struct.env87* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 4
  %22 = load %struct.envxmm*, %struct.envxmm** %6, align 8
  %23 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.env87*, %struct.env87** %5, align 8
  %26 = getelementptr inbounds %struct.env87, %struct.env87* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load %struct.envxmm*, %struct.envxmm** %6, align 8
  %28 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.env87*, %struct.env87** %5, align 8
  %31 = getelementptr inbounds %struct.env87, %struct.env87* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load %struct.envxmm*, %struct.envxmm** %6, align 8
  %33 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.env87*, %struct.env87** %5, align 8
  %36 = getelementptr inbounds %struct.env87, %struct.env87* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.envxmm*, %struct.envxmm** %6, align 8
  %38 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.env87*, %struct.env87** %5, align 8
  %41 = getelementptr inbounds %struct.env87, %struct.env87* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.envxmm*, %struct.envxmm** %6, align 8
  %43 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.env87*, %struct.env87** %5, align 8
  %46 = getelementptr inbounds %struct.env87, %struct.env87* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.env87*, %struct.env87** %5, align 8
  %48 = getelementptr inbounds %struct.env87, %struct.env87* %47, i32 0, i32 0
  store i32 65535, i32* %48, align 4
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %84, %2
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 8
  br i1 %51, label %52, label %87

52:                                               ; preds = %49
  %53 = load %struct.savexmm*, %struct.savexmm** %3, align 8
  %54 = getelementptr inbounds %struct.savexmm, %struct.savexmm* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.save87*, %struct.save87** %4, align 8
  %62 = getelementptr inbounds %struct.save87, %struct.save87* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %60, i32* %66, align 4
  %67 = load %struct.envxmm*, %struct.envxmm** %6, align 8
  %68 = getelementptr inbounds %struct.envxmm, %struct.envxmm* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %7, align 4
  %71 = shl i32 1, %70
  %72 = and i32 %69, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %52
  %75 = load i32, i32* %7, align 4
  %76 = mul nsw i32 %75, 2
  %77 = shl i32 3, %76
  %78 = xor i32 %77, -1
  %79 = load %struct.env87*, %struct.env87** %5, align 8
  %80 = getelementptr inbounds %struct.env87, %struct.env87* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %74, %52
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %49

87:                                               ; preds = %49
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
