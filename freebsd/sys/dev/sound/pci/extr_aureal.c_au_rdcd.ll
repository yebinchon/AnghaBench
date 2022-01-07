; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_aureal.c_au_rdcd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_aureal.c_au_rdcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au_info = type { i32 }

@AU_REG_CODECIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"pcm%d: codec timeout reading register %x (%x)\0A\00", align 1
@AU_CDC_REGMASK = common dso_local global i32 0, align 4
@AU_CDC_DATAMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @au_rdcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au_rdcd(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.au_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.au_info*
  store %struct.au_info* %11, %struct.au_info** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = shl i32 %12, 16
  store i32 %13, i32* %6, align 4
  %14 = load %struct.au_info*, %struct.au_info** %7, align 8
  %15 = load i32, i32* @AU_REG_CODECIO, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @au_wr(%struct.au_info* %14, i32 0, i32 %15, i32 %16, i32 4)
  br label %18

18:                                               ; preds = %31, %3
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 50
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  %22 = load %struct.au_info*, %struct.au_info** %7, align 8
  %23 = load i32, i32* @AU_REG_CODECIO, align 4
  %24 = call i32 @au_rd(%struct.au_info* %22, i32 0, i32 %23, i32 4)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %25, 16711680
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, 8388608
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %38

31:                                               ; preds = %21
  %32 = load i32, i32* %9, align 4
  %33 = mul nsw i32 %32, 200
  %34 = add nsw i32 %33, 2000
  %35 = call i32 @DELAY(i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %18

38:                                               ; preds = %30, %18
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %39, 50
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load %struct.au_info*, %struct.au_info** %7, align 8
  %43 = getelementptr inbounds %struct.au_info, %struct.au_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @AU_CDC_REGMASK, align 4
  %47 = and i32 %45, %46
  %48 = ashr i32 %47, 16
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %41, %38
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @AU_CDC_DATAMASK, align 4
  %54 = and i32 %52, %53
  ret i32 %54
}

declare dso_local i32 @au_wr(%struct.au_info*, i32, i32, i32, i32) #1

declare dso_local i32 @au_rd(%struct.au_info*, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
