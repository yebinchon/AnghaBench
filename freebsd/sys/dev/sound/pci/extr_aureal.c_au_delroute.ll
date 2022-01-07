; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_aureal.c_au_delroute.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_aureal.c_au_delroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au_info = type { i32*, i32*, i32*, i32 }

@AU_REG_RTBASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au_info*, i32)* @au_delroute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au_delroute(%struct.au_info* %0, i32 %1) #0 {
  %3 = alloca %struct.au_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.au_info* %0, %struct.au_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.au_info*, %struct.au_info** %3, align 8
  %8 = getelementptr inbounds %struct.au_info, %struct.au_info* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.au_info*, %struct.au_info** %3, align 8
  %15 = getelementptr inbounds %struct.au_info, %struct.au_info* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @au_setbit(i32 %16, i32 %17, i32 0)
  %19 = load %struct.au_info*, %struct.au_info** %3, align 8
  %20 = getelementptr inbounds %struct.au_info, %struct.au_info* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32 31, i32* %24, align 4
  %25 = load %struct.au_info*, %struct.au_info** %3, align 8
  %26 = load i64, i64* @AU_REG_RTBASE, align 8
  %27 = load i32, i32* %4, align 4
  %28 = shl i32 %27, 2
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %26, %29
  %31 = call i32 @au_rd(%struct.au_info* %25, i32 0, i64 %30, i32 4)
  store i32 %31, i32* %5, align 4
  %32 = load %struct.au_info*, %struct.au_info** %3, align 8
  %33 = load i64, i64* @AU_REG_RTBASE, align 8
  %34 = load %struct.au_info*, %struct.au_info** %3, align 8
  %35 = getelementptr inbounds %struct.au_info, %struct.au_info* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 2
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %33, %42
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @au_wr(%struct.au_info* %32, i32 0, i64 %43, i32 %44, i32 4)
  %46 = load %struct.au_info*, %struct.au_info** %3, align 8
  %47 = getelementptr inbounds %struct.au_info, %struct.au_info* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.au_info*, %struct.au_info** %3, align 8
  %54 = getelementptr inbounds %struct.au_info, %struct.au_info* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, 127
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  store i32 %52, i32* %59, align 4
  %60 = load %struct.au_info*, %struct.au_info** %3, align 8
  %61 = load i64, i64* @AU_REG_RTBASE, align 8
  %62 = load i32, i32* %4, align 4
  %63 = shl i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %61, %64
  %66 = call i32 @au_wr(%struct.au_info* %60, i32 0, i64 %65, i32 -2, i32 4)
  %67 = load %struct.au_info*, %struct.au_info** %3, align 8
  %68 = getelementptr inbounds %struct.au_info, %struct.au_info* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %2
  %77 = load %struct.au_info*, %struct.au_info** %3, align 8
  %78 = getelementptr inbounds %struct.au_info, %struct.au_info* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.au_info*, %struct.au_info** %3, align 8
  %85 = getelementptr inbounds %struct.au_info, %struct.au_info* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %83, i32* %89, align 4
  br label %90

90:                                               ; preds = %76, %2
  %91 = load %struct.au_info*, %struct.au_info** %3, align 8
  %92 = getelementptr inbounds %struct.au_info, %struct.au_info* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 127, i32* %96, align 4
  ret void
}

declare dso_local i32 @au_setbit(i32, i32, i32) #1

declare dso_local i32 @au_rd(%struct.au_info*, i32, i64, i32) #1

declare dso_local i32 @au_wr(%struct.au_info*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
