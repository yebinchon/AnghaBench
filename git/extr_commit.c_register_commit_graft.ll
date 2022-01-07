; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_register_commit_graft.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_register_commit_graft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.commit_graft**, i32 }
%struct.commit_graft = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_commit_graft(%struct.repository* %0, %struct.commit_graft* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.repository*, align 8
  %6 = alloca %struct.commit_graft*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %5, align 8
  store %struct.commit_graft* %1, %struct.commit_graft** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.repository*, %struct.repository** %5, align 8
  %10 = load %struct.commit_graft*, %struct.commit_graft** %6, align 8
  %11 = getelementptr inbounds %struct.commit_graft, %struct.commit_graft* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @commit_graft_pos(%struct.repository* %9, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp sle i32 0, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load %struct.commit_graft*, %struct.commit_graft** %6, align 8
  %22 = call i32 @free(%struct.commit_graft* %21)
  br label %43

23:                                               ; preds = %17
  %24 = load %struct.repository*, %struct.repository** %5, align 8
  %25 = getelementptr inbounds %struct.repository, %struct.repository* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.commit_graft**, %struct.commit_graft*** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.commit_graft*, %struct.commit_graft** %28, i64 %30
  %32 = load %struct.commit_graft*, %struct.commit_graft** %31, align 8
  %33 = call i32 @free(%struct.commit_graft* %32)
  %34 = load %struct.commit_graft*, %struct.commit_graft** %6, align 8
  %35 = load %struct.repository*, %struct.repository** %5, align 8
  %36 = getelementptr inbounds %struct.repository, %struct.repository* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load %struct.commit_graft**, %struct.commit_graft*** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.commit_graft*, %struct.commit_graft** %39, i64 %41
  store %struct.commit_graft* %34, %struct.commit_graft** %42, align 8
  br label %43

43:                                               ; preds = %23, %20
  store i32 1, i32* %4, align 4
  br label %118

44:                                               ; preds = %3
  %45 = load i32, i32* %8, align 4
  %46 = sub nsw i32 0, %45
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  %48 = load %struct.repository*, %struct.repository** %5, align 8
  %49 = getelementptr inbounds %struct.repository, %struct.repository* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load %struct.commit_graft**, %struct.commit_graft*** %51, align 8
  %53 = load %struct.repository*, %struct.repository** %5, align 8
  %54 = getelementptr inbounds %struct.repository, %struct.repository* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  %59 = load %struct.repository*, %struct.repository** %5, align 8
  %60 = getelementptr inbounds %struct.repository, %struct.repository* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @ALLOC_GROW(%struct.commit_graft** %52, i32 %58, i32 %63)
  %65 = load %struct.repository*, %struct.repository** %5, align 8
  %66 = getelementptr inbounds %struct.repository, %struct.repository* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.repository*, %struct.repository** %5, align 8
  %73 = getelementptr inbounds %struct.repository, %struct.repository* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %71, %76
  br i1 %77, label %78, label %108

78:                                               ; preds = %44
  %79 = load %struct.repository*, %struct.repository** %5, align 8
  %80 = getelementptr inbounds %struct.repository, %struct.repository* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load %struct.commit_graft**, %struct.commit_graft*** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.commit_graft*, %struct.commit_graft** %83, i64 %85
  %87 = getelementptr inbounds %struct.commit_graft*, %struct.commit_graft** %86, i64 1
  %88 = load %struct.repository*, %struct.repository** %5, align 8
  %89 = getelementptr inbounds %struct.repository, %struct.repository* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load %struct.commit_graft**, %struct.commit_graft*** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.commit_graft*, %struct.commit_graft** %92, i64 %94
  %96 = load %struct.repository*, %struct.repository** %5, align 8
  %97 = getelementptr inbounds %struct.repository, %struct.repository* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sub nsw i32 %100, %101
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 8
  %106 = trunc i64 %105 to i32
  %107 = call i32 @memmove(%struct.commit_graft** %87, %struct.commit_graft** %95, i32 %106)
  br label %108

108:                                              ; preds = %78, %44
  %109 = load %struct.commit_graft*, %struct.commit_graft** %6, align 8
  %110 = load %struct.repository*, %struct.repository** %5, align 8
  %111 = getelementptr inbounds %struct.repository, %struct.repository* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load %struct.commit_graft**, %struct.commit_graft*** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.commit_graft*, %struct.commit_graft** %114, i64 %116
  store %struct.commit_graft* %109, %struct.commit_graft** %117, align 8
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %108, %43
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @commit_graft_pos(%struct.repository*, i32) #1

declare dso_local i32 @free(%struct.commit_graft*) #1

declare dso_local i32 @ALLOC_GROW(%struct.commit_graft**, i32, i32) #1

declare dso_local i32 @memmove(%struct.commit_graft**, %struct.commit_graft**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
