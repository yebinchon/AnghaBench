; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_aureal.c_au_prepareoutput.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_aureal.c_au_prepareoutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au_chinfo = type { i32, %struct.au_info* }
%struct.au_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au_chinfo*, i32)* @au_prepareoutput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au_prepareoutput(%struct.au_chinfo* %0, i32 %1) #0 {
  %3 = alloca %struct.au_chinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.au_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.au_chinfo* %0, %struct.au_chinfo** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.au_chinfo*, %struct.au_chinfo** %3, align 8
  %10 = getelementptr inbounds %struct.au_chinfo, %struct.au_chinfo* %9, i32 0, i32 1
  %11 = load %struct.au_info*, %struct.au_info** %10, align 8
  store %struct.au_info* %11, %struct.au_info** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @AFMT_CHANNEL(i32 %12)
  %14 = icmp sgt i32 %13, 1
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 1, i32 0
  store i32 %16, i32* %7, align 4
  %17 = load %struct.au_chinfo*, %struct.au_chinfo** %3, align 8
  %18 = getelementptr inbounds %struct.au_chinfo, %struct.au_chinfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @sndbuf_getbufaddr(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.au_info*, %struct.au_info** %5, align 8
  %22 = call i32 @au_wr(%struct.au_info* %21, i32 0, i32 67100, i32 0, i32 4)
  %23 = load %struct.au_info*, %struct.au_info** %5, align 8
  %24 = call i32 @au_wr(%struct.au_info* %23, i32 0, i32 67104, i32 0, i32 4)
  %25 = load %struct.au_info*, %struct.au_info** %5, align 8
  %26 = call i32 @au_wr(%struct.au_info* %25, i32 0, i32 67108, i32 0, i32 4)
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @AFMT_ENCODING(i32 %27)
  switch i32 %28, label %33 [
    i32 1, label %29
    i32 2, label %30
    i32 8, label %31
    i32 16, label %32
  ]

29:                                               ; preds = %2
  store i32 45056, i32* %6, align 4
  br label %34

30:                                               ; preds = %2
  store i32 61440, i32* %6, align 4
  br label %34

31:                                               ; preds = %2
  store i32 28672, i32* %6, align 4
  br label %34

32:                                               ; preds = %2
  store i32 143360, i32* %6, align 4
  br label %34

33:                                               ; preds = %2
  store i32 12288, i32* %6, align 4
  br label %34

34:                                               ; preds = %33, %32, %31, %30, %29
  %35 = load %struct.au_info*, %struct.au_info** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @au_wr(%struct.au_info* %35, i32 0, i32 66048, i32 %36, i32 4)
  %38 = load %struct.au_info*, %struct.au_info** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 4096
  %41 = call i32 @au_wr(%struct.au_info* %38, i32 0, i32 66052, i32 %40, i32 4)
  %42 = load %struct.au_info*, %struct.au_info** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 8192
  %45 = call i32 @au_wr(%struct.au_info* %42, i32 0, i32 66056, i32 %44, i32 4)
  %46 = load %struct.au_info*, %struct.au_info** %5, align 8
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 12288
  %49 = call i32 @au_wr(%struct.au_info* %46, i32 0, i32 66060, i32 %48, i32 4)
  %50 = load %struct.au_info*, %struct.au_info** %5, align 8
  %51 = call i32 @au_wr(%struct.au_info* %50, i32 0, i32 66560, i32 -553648129, i32 4)
  %52 = load %struct.au_info*, %struct.au_info** %5, align 8
  %53 = call i32 @au_wr(%struct.au_info* %52, i32 0, i32 66564, i32 -50331649, i32 4)
  %54 = load %struct.au_info*, %struct.au_info** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @au_wr(%struct.au_info* %54, i32 0, i32 66944, i32 %55, i32 4)
  %57 = load %struct.au_info*, %struct.au_info** %5, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @au_wr(%struct.au_info* %57, i32 0, i32 66064, i32 %58, i32 4)
  %60 = load %struct.au_info*, %struct.au_info** %5, align 8
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 4096
  %63 = call i32 @au_wr(%struct.au_info* %60, i32 0, i32 66068, i32 %62, i32 4)
  %64 = load %struct.au_info*, %struct.au_info** %5, align 8
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 8192
  %67 = call i32 @au_wr(%struct.au_info* %64, i32 0, i32 66072, i32 %66, i32 4)
  %68 = load %struct.au_info*, %struct.au_info** %5, align 8
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 12288
  %71 = call i32 @au_wr(%struct.au_info* %68, i32 0, i32 66076, i32 %70, i32 4)
  %72 = load %struct.au_info*, %struct.au_info** %5, align 8
  %73 = call i32 @au_wr(%struct.au_info* %72, i32 0, i32 66568, i32 1459617791, i32 4)
  %74 = load %struct.au_info*, %struct.au_info** %5, align 8
  %75 = call i32 @au_wr(%struct.au_info* %74, i32 0, i32 66572, i32 1962934271, i32 4)
  %76 = load %struct.au_info*, %struct.au_info** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @au_wr(%struct.au_info* %76, i32 0, i32 66948, i32 %77, i32 4)
  %79 = load %struct.au_info*, %struct.au_info** %5, align 8
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 196658, i32 196656
  %84 = call i32 @au_wr(%struct.au_info* %79, i32 0, i32 63488, i32 %83, i32 4)
  %85 = load %struct.au_info*, %struct.au_info** %5, align 8
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 196658, i32 196656
  %90 = call i32 @au_wr(%struct.au_info* %85, i32 0, i32 63492, i32 %89, i32 4)
  %91 = load %struct.au_info*, %struct.au_info** %5, align 8
  %92 = call i32 @au_addroute(%struct.au_info* %91, i32 17, i32 0, i32 88)
  %93 = load %struct.au_info*, %struct.au_info** %5, align 8
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32 0, i32 1
  %98 = call i32 @au_addroute(%struct.au_info* %93, i32 17, i32 %97, i32 89)
  ret void
}

declare dso_local i32 @AFMT_CHANNEL(i32) #1

declare dso_local i32 @sndbuf_getbufaddr(i32) #1

declare dso_local i32 @au_wr(%struct.au_info*, i32, i32, i32, i32) #1

declare dso_local i32 @AFMT_ENCODING(i32) #1

declare dso_local i32 @au_addroute(%struct.au_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
