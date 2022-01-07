; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_solo.c_ess_dmapos.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_solo.c_ess_dmapos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ess_info = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"bad ch\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"DMA count reg bogus: %04x & %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ess_info*, i32)* @ess_dmapos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ess_dmapos(%struct.ess_info* %0, i32 %1) #0 {
  %3 = alloca %struct.ess_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ess_info* %0, %struct.ess_info** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 2
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi i1 [ true, %2 ], [ %12, %10 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @KASSERT(i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %73

19:                                               ; preds = %13
  %20 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @ess_dmatrigger(%struct.ess_info* %20, i32 %21, i32 0)
  %23 = call i32 @DELAY(i32 20)
  br label %24

24:                                               ; preds = %67, %19
  %25 = call i32 @DELAY(i32 10)
  %26 = load i32, i32* %7, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %24
  %33 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %34 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @port_rd(i32 %35, i32 4, i32 2)
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  %38 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %39 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @port_rd(i32 %40, i32 4, i32 2)
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %32
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %46 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %44, %52
  br i1 %53, label %63, label %54

54:                                               ; preds = %43
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %63, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = sub nsw i32 %59, %60
  %62 = icmp sgt i32 %61, 8
  br i1 %62, label %63, label %67

63:                                               ; preds = %58, %54, %43
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  %66 = icmp slt i32 %64, 1000
  br label %67

67:                                               ; preds = %63, %58
  %68 = phi i1 [ false, %58 ], [ %66, %63 ]
  br i1 %68, label %24, label %69

69:                                               ; preds = %67
  %70 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @ess_dmatrigger(%struct.ess_info* %70, i32 %71, i32 1)
  br label %82

73:                                               ; preds = %13
  %74 = load i32, i32* %4, align 4
  %75 = icmp eq i32 %74, 2
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %78 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @port_rd(i32 %79, i32 4, i32 2)
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %76, %73
  br label %82

82:                                               ; preds = %81, %69
  %83 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %84 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %5, align 4
  %92 = sub nsw i32 %90, %91
  ret i32 %92
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ess_dmatrigger(%struct.ess_info*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @port_rd(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
