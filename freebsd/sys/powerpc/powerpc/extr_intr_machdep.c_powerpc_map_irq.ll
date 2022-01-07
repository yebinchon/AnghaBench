; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_intr_machdep.c_powerpc_map_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_intr_machdep.c_powerpc_map_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pic = type { i64, i64, i64, i32* }
%struct.powerpc_intr = type { i64, i64, i32* }

@npics = common dso_local global i32 0, align 4
@piclist = common dso_local global %struct.pic* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@root_pic = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.powerpc_intr*)* @powerpc_map_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @powerpc_map_irq(%struct.powerpc_intr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.powerpc_intr*, align 8
  %4 = alloca %struct.pic*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.powerpc_intr* %0, %struct.powerpc_intr** %3, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %42, %1
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @npics, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %45

11:                                               ; preds = %7
  %12 = load %struct.pic*, %struct.pic** @piclist, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.pic, %struct.pic* %12, i64 %14
  store %struct.pic* %15, %struct.pic** %4, align 8
  %16 = load %struct.pic*, %struct.pic** %4, align 8
  %17 = getelementptr inbounds %struct.pic, %struct.pic* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.pic*, %struct.pic** %4, align 8
  %20 = getelementptr inbounds %struct.pic, %struct.pic* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  store i64 %22, i64* %5, align 8
  %23 = load %struct.powerpc_intr*, %struct.powerpc_intr** %3, align 8
  %24 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.pic*, %struct.pic** %4, align 8
  %27 = getelementptr inbounds %struct.pic, %struct.pic* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %25, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %11
  %31 = load %struct.powerpc_intr*, %struct.powerpc_intr** %3, align 8
  %32 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.pic*, %struct.pic** %4, align 8
  %35 = getelementptr inbounds %struct.pic, %struct.pic* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = add nsw i64 %36, %37
  %39 = icmp slt i64 %33, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %45

41:                                               ; preds = %30, %11
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %7

45:                                               ; preds = %40, %7
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @npics, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %2, align 4
  br label %75

51:                                               ; preds = %45
  %52 = load %struct.powerpc_intr*, %struct.powerpc_intr** %3, align 8
  %53 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.pic*, %struct.pic** %4, align 8
  %56 = getelementptr inbounds %struct.pic, %struct.pic* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %54, %57
  %59 = load %struct.powerpc_intr*, %struct.powerpc_intr** %3, align 8
  %60 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.pic*, %struct.pic** %4, align 8
  %62 = getelementptr inbounds %struct.pic, %struct.pic* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.powerpc_intr*, %struct.powerpc_intr** %3, align 8
  %65 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %64, i32 0, i32 2
  store i32* %63, i32** %65, align 8
  %66 = load %struct.powerpc_intr*, %struct.powerpc_intr** %3, align 8
  %67 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %51
  %71 = load i32*, i32** @root_pic, align 8
  %72 = load %struct.powerpc_intr*, %struct.powerpc_intr** %3, align 8
  %73 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %72, i32 0, i32 2
  store i32* %71, i32** %73, align 8
  br label %74

74:                                               ; preds = %70, %51
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %49
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
