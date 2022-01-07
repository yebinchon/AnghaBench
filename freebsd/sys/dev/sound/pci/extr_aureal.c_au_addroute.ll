; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_aureal.c_au_addroute.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_aureal.c_au_addroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au_info = type { i32*, i32*, i32*, i32 }

@AU_REG_RTBASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au_info*, i32, i32, i32)* @au_addroute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au_addroute(%struct.au_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.au_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.au_info* %0, %struct.au_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = shl i32 %10, 2
  %12 = add nsw i32 67996, %11
  store i32 %12, i32* %9, align 4
  %13 = load %struct.au_info*, %struct.au_info** %5, align 8
  %14 = getelementptr inbounds %struct.au_info, %struct.au_info* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 103
  %22 = icmp ne i32 %19, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %4
  %24 = load i32, i32* @AU_REG_RTBASE, align 4
  %25 = load %struct.au_info*, %struct.au_info** %5, align 8
  %26 = getelementptr inbounds %struct.au_info, %struct.au_info* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 2
  %33 = add nsw i32 %24, %32
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %23, %4
  %35 = load %struct.au_info*, %struct.au_info** %5, align 8
  %36 = load i32, i32* @AU_REG_RTBASE, align 4
  %37 = load i32, i32* %8, align 4
  %38 = shl i32 %37, 2
  %39 = add nsw i32 %36, %38
  %40 = call i32 @au_wr(%struct.au_info* %35, i32 0, i32 %39, i32 -1, i32 4)
  %41 = load %struct.au_info*, %struct.au_info** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = shl i32 %44, 7
  %46 = or i32 %43, %45
  %47 = call i32 @au_wr(%struct.au_info* %41, i32 0, i32 %42, i32 %46, i32 4)
  %48 = load %struct.au_info*, %struct.au_info** %5, align 8
  %49 = getelementptr inbounds %struct.au_info, %struct.au_info* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.au_info*, %struct.au_info** %5, align 8
  %56 = getelementptr inbounds %struct.au_info, %struct.au_info* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %54, i32* %60, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.au_info*, %struct.au_info** %5, align 8
  %63 = getelementptr inbounds %struct.au_info, %struct.au_info* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %61, i32* %67, align 4
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, 255
  %70 = load %struct.au_info*, %struct.au_info** %5, align 8
  %71 = getelementptr inbounds %struct.au_info, %struct.au_info* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %69, i32* %75, align 4
  %76 = load %struct.au_info*, %struct.au_info** %5, align 8
  %77 = getelementptr inbounds %struct.au_info, %struct.au_info* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @au_setbit(i32 %78, i32 %79, i32 1)
  ret void
}

declare dso_local i32 @au_wr(%struct.au_info*, i32, i32, i32, i32) #1

declare dso_local i32 @au_setbit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
