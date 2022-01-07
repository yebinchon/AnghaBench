; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea.c_moea_bat_mapped.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea.c_moea_bat_mapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@battable = common dso_local global %struct.TYPE_2__* null, align 8
@BAT_Vs = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BAT_I = common dso_local global i32 0, align 4
@BAT_G = common dso_local global i32 0, align 4
@BAT_PP_RW = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@BAT_PBS = common dso_local global i32 0, align 4
@BAT_EBS = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @moea_bat_mapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moea_bat_mapped(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @battable, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @BAT_Vs, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %81

23:                                               ; preds = %3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @battable, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @BAT_I, align 4
  %31 = load i32, i32* @BAT_G, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @BAT_PP_RW, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %29, %34
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @BAT_I, align 4
  %38 = load i32, i32* @BAT_G, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @BAT_PP_RW, align 4
  %41 = or i32 %39, %40
  %42 = icmp ne i32 %36, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %23
  %44 = load i32, i32* @EPERM, align 4
  store i32 %44, i32* %4, align 4
  br label %81

45:                                               ; preds = %23
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @battable, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @BAT_PBS, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %9, align 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @battable, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @BAT_EBS, align 4
  %61 = xor i32 %60, -1
  %62 = and i32 %59, %61
  %63 = or i32 %62, 3
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %11, align 4
  %66 = shl i32 %65, 15
  %67 = or i32 %64, %66
  %68 = or i32 %67, 32767
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %45
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %73, %74
  %76 = load i32, i32* %10, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %72, %45
  %79 = load i32, i32* @ERANGE, align 4
  store i32 %79, i32* %4, align 4
  br label %81

80:                                               ; preds = %72
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %78, %43, %21
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
