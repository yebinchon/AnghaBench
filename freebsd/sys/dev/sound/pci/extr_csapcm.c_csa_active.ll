; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csapcm.c_csa_active.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csapcm.c_csa_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csa_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csa_info*, i32)* @csa_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csa_active(%struct.csa_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.csa_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.csa_info* %0, %struct.csa_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %8 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %12 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %16 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %21 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %22, -1
  br i1 %23, label %24, label %27

24:                                               ; preds = %19, %2
  %25 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %26 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  br label %27

27:                                               ; preds = %24, %19
  %28 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %29 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (i32)*, i32 (i32)** %31, align 8
  %33 = icmp ne i32 (i32)* %32, null
  br i1 %33, label %34, label %52

34:                                               ; preds = %27
  %35 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %36 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (i32)*, i32 (i32)** %38, align 8
  %40 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %41 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %44, %34
  %48 = phi i1 [ false, %34 ], [ %46, %44 ]
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 %39(i32 %50)
  store i32 %51, i32* %3, align 4
  br label %53

52:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %47
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
