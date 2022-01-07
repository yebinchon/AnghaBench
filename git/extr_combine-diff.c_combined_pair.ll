; ModuleID = '/home/carl/AnghaBench/git/extr_combine-diff.c_combined_pair.c'
source_filename = "/home/carl/AnghaBench/git/extr_combine-diff.c_combined_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_filepair = type { %struct.diff_filespec*, %struct.diff_filespec* }
%struct.diff_filespec = type { i32, i32, i32, i32, i32 }
%struct.combine_diff_path = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.diff_filepair* (%struct.combine_diff_path*, i32)* @combined_pair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.diff_filepair* @combined_pair(%struct.combine_diff_path* %0, i32 %1) #0 {
  %3 = alloca %struct.combine_diff_path*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.diff_filepair*, align 8
  %7 = alloca %struct.diff_filespec*, align 8
  store %struct.combine_diff_path* %0, %struct.combine_diff_path** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call %struct.diff_filepair* @xmalloc(i32 16)
  store %struct.diff_filepair* %8, %struct.diff_filepair** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @st_add(i32 %9, i32 1)
  %11 = call %struct.diff_filespec* @xcalloc(i32 %10, i32 20)
  store %struct.diff_filespec* %11, %struct.diff_filespec** %7, align 8
  %12 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %13 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %12, i64 1
  %14 = load %struct.diff_filepair*, %struct.diff_filepair** %6, align 8
  %15 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %14, i32 0, i32 1
  store %struct.diff_filespec* %13, %struct.diff_filespec** %15, align 8
  %16 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %17 = load %struct.diff_filepair*, %struct.diff_filepair** %6, align 8
  %18 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %17, i32 0, i32 0
  store %struct.diff_filespec* %16, %struct.diff_filespec** %18, align 8
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %89, %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %92

23:                                               ; preds = %19
  %24 = load %struct.combine_diff_path*, %struct.combine_diff_path** %3, align 8
  %25 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.diff_filepair*, %struct.diff_filepair** %6, align 8
  %28 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %27, i32 0, i32 1
  %29 = load %struct.diff_filespec*, %struct.diff_filespec** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %29, i64 %31
  %33 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %32, i32 0, i32 4
  store i32 %26, i32* %33, align 4
  %34 = load %struct.combine_diff_path*, %struct.combine_diff_path** %3, align 8
  %35 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.diff_filepair*, %struct.diff_filepair** %6, align 8
  %43 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %42, i32 0, i32 1
  %44 = load %struct.diff_filespec*, %struct.diff_filespec** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %44, i64 %46
  %48 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %47, i32 0, i32 3
  store i32 %41, i32* %48, align 4
  %49 = load %struct.diff_filepair*, %struct.diff_filepair** %6, align 8
  %50 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %49, i32 0, i32 1
  %51 = load %struct.diff_filespec*, %struct.diff_filespec** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %51, i64 %53
  %55 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %54, i32 0, i32 2
  %56 = load %struct.combine_diff_path*, %struct.combine_diff_path** %3, align 8
  %57 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %56, i32 0, i32 3
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = call i32 @oidcpy(i32* %55, i32* %62)
  %64 = load %struct.combine_diff_path*, %struct.combine_diff_path** %3, align 8
  %65 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %64, i32 0, i32 3
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = call i32 @is_null_oid(i32* %70)
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = load %struct.diff_filepair*, %struct.diff_filepair** %6, align 8
  %76 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %75, i32 0, i32 1
  %77 = load %struct.diff_filespec*, %struct.diff_filespec** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %77, i64 %79
  %81 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %80, i32 0, i32 0
  store i32 %74, i32* %81, align 4
  %82 = load %struct.diff_filepair*, %struct.diff_filepair** %6, align 8
  %83 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %82, i32 0, i32 1
  %84 = load %struct.diff_filespec*, %struct.diff_filespec** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %84, i64 %86
  %88 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %87, i32 0, i32 1
  store i32 1, i32* %88, align 4
  br label %89

89:                                               ; preds = %23
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %19

92:                                               ; preds = %19
  %93 = load %struct.diff_filepair*, %struct.diff_filepair** %6, align 8
  %94 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %93, i32 0, i32 1
  %95 = load %struct.diff_filespec*, %struct.diff_filespec** %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sub nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %95, i64 %98
  %100 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %99, i32 0, i32 1
  store i32 0, i32* %100, align 4
  %101 = load %struct.combine_diff_path*, %struct.combine_diff_path** %3, align 8
  %102 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.diff_filepair*, %struct.diff_filepair** %6, align 8
  %105 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %104, i32 0, i32 0
  %106 = load %struct.diff_filespec*, %struct.diff_filespec** %105, align 8
  %107 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %106, i32 0, i32 4
  store i32 %103, i32* %107, align 4
  %108 = load %struct.combine_diff_path*, %struct.combine_diff_path** %3, align 8
  %109 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.diff_filepair*, %struct.diff_filepair** %6, align 8
  %112 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %111, i32 0, i32 0
  %113 = load %struct.diff_filespec*, %struct.diff_filespec** %112, align 8
  %114 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %113, i32 0, i32 3
  store i32 %110, i32* %114, align 4
  %115 = load %struct.diff_filepair*, %struct.diff_filepair** %6, align 8
  %116 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %115, i32 0, i32 0
  %117 = load %struct.diff_filespec*, %struct.diff_filespec** %116, align 8
  %118 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %117, i32 0, i32 2
  %119 = load %struct.combine_diff_path*, %struct.combine_diff_path** %3, align 8
  %120 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %119, i32 0, i32 0
  %121 = call i32 @oidcpy(i32* %118, i32* %120)
  %122 = load %struct.combine_diff_path*, %struct.combine_diff_path** %3, align 8
  %123 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %122, i32 0, i32 0
  %124 = call i32 @is_null_oid(i32* %123)
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  %128 = load %struct.diff_filepair*, %struct.diff_filepair** %6, align 8
  %129 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %128, i32 0, i32 0
  %130 = load %struct.diff_filespec*, %struct.diff_filespec** %129, align 8
  %131 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %130, i32 0, i32 0
  store i32 %127, i32* %131, align 4
  %132 = load %struct.diff_filepair*, %struct.diff_filepair** %6, align 8
  ret %struct.diff_filepair* %132
}

declare dso_local %struct.diff_filepair* @xmalloc(i32) #1

declare dso_local %struct.diff_filespec* @xcalloc(i32, i32) #1

declare dso_local i32 @st_add(i32, i32) #1

declare dso_local i32 @oidcpy(i32*, i32*) #1

declare dso_local i32 @is_null_oid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
