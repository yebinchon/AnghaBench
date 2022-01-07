; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_g_md_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_g_md_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_provider = type { i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.md_s* }
%struct.md_s = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@MD_READONLY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_provider*, i32, i32, i32)* @g_md_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_md_access(%struct.g_provider* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.md_s*, align 8
  store %struct.g_provider* %0, %struct.g_provider** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %12 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.md_s*, %struct.md_s** %14, align 8
  store %struct.md_s* %15, %struct.md_s** %10, align 8
  %16 = load %struct.md_s*, %struct.md_s** %10, align 8
  %17 = icmp eq %struct.md_s* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %111

28:                                               ; preds = %24, %21, %18
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %5, align 4
  br label %111

30:                                               ; preds = %4
  %31 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %32 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %7, align 4
  %38 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %39 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %8, align 4
  %45 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %46 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %9, align 4
  %52 = load %struct.md_s*, %struct.md_s** %10, align 8
  %53 = getelementptr inbounds %struct.md_s, %struct.md_s* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @MD_READONLY, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %30
  %59 = load i32, i32* %8, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* @EROFS, align 4
  store i32 %62, i32* %5, align 4
  br label %111

63:                                               ; preds = %58, %30
  %64 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %65 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %68 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %72 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %70, %73
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %63
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %77, %78
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %79, %80
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load %struct.md_s*, %struct.md_s** %10, align 8
  %85 = getelementptr inbounds %struct.md_s, %struct.md_s* %84, i32 0, i32 1
  store i32 1, i32* %85, align 4
  br label %110

86:                                               ; preds = %76, %63
  %87 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %88 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %91 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %89, %92
  %94 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %95 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %93, %96
  %98 = icmp sgt i64 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %86
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %100, %101
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %102, %103
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load %struct.md_s*, %struct.md_s** %10, align 8
  %108 = getelementptr inbounds %struct.md_s, %struct.md_s* %107, i32 0, i32 1
  store i32 0, i32* %108, align 4
  br label %109

109:                                              ; preds = %106, %99, %86
  br label %110

110:                                              ; preds = %109, %83
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %110, %61, %28, %27
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
