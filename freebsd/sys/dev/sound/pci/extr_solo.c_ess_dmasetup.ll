; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_solo.c_ess_dmasetup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_solo.c_ess_dmasetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ess_info = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"bad ch\00", align 1
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ess_info*, i32, i32, i32, i32)* @ess_dmasetup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ess_dmasetup(%struct.ess_info* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ess_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ess_info* %0, %struct.ess_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %16, label %13

13:                                               ; preds = %5
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 2
  br label %16

16:                                               ; preds = %13, %5
  %17 = phi i1 [ true, %5 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.ess_info*, %struct.ess_info** %6, align 8
  %22 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  store i32 %20, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %63

30:                                               ; preds = %16
  %31 = load %struct.ess_info*, %struct.ess_info** %6, align 8
  %32 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @port_wr(i32 %33, i32 8, i32 196, i32 1)
  %35 = load %struct.ess_info*, %struct.ess_info** %6, align 8
  %36 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @port_wr(i32 %37, i32 13, i32 255, i32 1)
  %39 = load %struct.ess_info*, %struct.ess_info** %6, align 8
  %40 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @port_wr(i32 %41, i32 15, i32 1, i32 1)
  %43 = load %struct.ess_info*, %struct.ess_info** %6, align 8
  %44 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @PCMDIR_PLAY, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 88, i32 84
  %51 = call i32 @port_wr(i32 %45, i32 11, i32 %50, i32 1)
  %52 = load %struct.ess_info*, %struct.ess_info** %6, align 8
  %53 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @port_wr(i32 %54, i32 0, i32 %55, i32 4)
  %57 = load %struct.ess_info*, %struct.ess_info** %6, align 8
  %58 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %9, align 4
  %61 = sub nsw i32 %60, 1
  %62 = call i32 @port_wr(i32 %59, i32 4, i32 %61, i32 2)
  br label %82

63:                                               ; preds = %16
  %64 = load i32, i32* %7, align 4
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %81

66:                                               ; preds = %63
  %67 = load %struct.ess_info*, %struct.ess_info** %6, align 8
  %68 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @port_wr(i32 %69, i32 6, i32 8, i32 1)
  %71 = load %struct.ess_info*, %struct.ess_info** %6, align 8
  %72 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @port_wr(i32 %73, i32 0, i32 %74, i32 4)
  %76 = load %struct.ess_info*, %struct.ess_info** %6, align 8
  %77 = getelementptr inbounds %struct.ess_info, %struct.ess_info* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @port_wr(i32 %78, i32 4, i32 %79, i32 2)
  br label %81

81:                                               ; preds = %66, %63
  br label %82

82:                                               ; preds = %81, %30
  ret i32 0
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @port_wr(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
