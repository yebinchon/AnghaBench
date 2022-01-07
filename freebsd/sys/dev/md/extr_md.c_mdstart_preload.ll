; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_mdstart_preload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_mdstart_preload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_s = type { i32* }
%struct.bio = type { i32, i32, i32, i64, i32, i32*, i32 }

@BIO_VLIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.md_s*, %struct.bio*)* @mdstart_preload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdstart_preload(%struct.md_s* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.md_s*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32*, align 8
  store %struct.md_s* %0, %struct.md_s** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %6 = load %struct.md_s*, %struct.md_s** %3, align 8
  %7 = getelementptr inbounds %struct.md_s, %struct.md_s* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load %struct.bio*, %struct.bio** %4, align 8
  %10 = getelementptr inbounds %struct.bio, %struct.bio* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %8, i64 %12
  store i32* %13, i32** %5, align 8
  %14 = load %struct.bio*, %struct.bio** %4, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %82 [
    i32 129, label %17
    i32 128, label %53
  ]

17:                                               ; preds = %2
  %18 = load %struct.bio*, %struct.bio** %4, align 8
  %19 = getelementptr inbounds %struct.bio, %struct.bio* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @BIO_VLIST, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %17
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.bio*, %struct.bio** %4, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 5
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.bio*, %struct.bio** %4, align 8
  %30 = getelementptr inbounds %struct.bio, %struct.bio* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.bio*, %struct.bio** %4, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @mdcopyto_vlist(i32* %25, i32* %28, i32 %31, i32 %34)
  br label %45

36:                                               ; preds = %17
  %37 = load i32*, i32** %5, align 8
  %38 = load %struct.bio*, %struct.bio** %4, align 8
  %39 = getelementptr inbounds %struct.bio, %struct.bio* %38, i32 0, i32 5
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.bio*, %struct.bio** %4, align 8
  %42 = getelementptr inbounds %struct.bio, %struct.bio* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @bcopy(i32* %37, i32* %40, i32 %43)
  br label %45

45:                                               ; preds = %36, %24
  %46 = load %struct.bio*, %struct.bio** %4, align 8
  %47 = getelementptr inbounds %struct.bio, %struct.bio* %46, i32 0, i32 5
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.bio*, %struct.bio** %4, align 8
  %50 = getelementptr inbounds %struct.bio, %struct.bio* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @cpu_flush_dcache(i32* %48, i32 %51)
  br label %82

53:                                               ; preds = %2
  %54 = load %struct.bio*, %struct.bio** %4, align 8
  %55 = getelementptr inbounds %struct.bio, %struct.bio* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @BIO_VLIST, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %53
  %61 = load %struct.bio*, %struct.bio** %4, align 8
  %62 = getelementptr inbounds %struct.bio, %struct.bio* %61, i32 0, i32 5
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.bio*, %struct.bio** %4, align 8
  %65 = getelementptr inbounds %struct.bio, %struct.bio* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = load %struct.bio*, %struct.bio** %4, align 8
  %69 = getelementptr inbounds %struct.bio, %struct.bio* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @mdcopyfrom_vlist(i32* %63, i32 %66, i32* %67, i32 %70)
  br label %81

72:                                               ; preds = %53
  %73 = load %struct.bio*, %struct.bio** %4, align 8
  %74 = getelementptr inbounds %struct.bio, %struct.bio* %73, i32 0, i32 5
  %75 = load i32*, i32** %74, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = load %struct.bio*, %struct.bio** %4, align 8
  %78 = getelementptr inbounds %struct.bio, %struct.bio* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @bcopy(i32* %75, i32* %76, i32 %79)
  br label %81

81:                                               ; preds = %72, %60
  br label %82

82:                                               ; preds = %2, %81, %45
  %83 = load %struct.bio*, %struct.bio** %4, align 8
  %84 = getelementptr inbounds %struct.bio, %struct.bio* %83, i32 0, i32 3
  store i64 0, i64* %84, align 8
  ret i32 0
}

declare dso_local i32 @mdcopyto_vlist(i32*, i32*, i32, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @cpu_flush_dcache(i32*, i32) #1

declare dso_local i32 @mdcopyfrom_vlist(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
