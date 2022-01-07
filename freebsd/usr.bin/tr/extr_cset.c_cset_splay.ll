; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tr/extr_cset.c_cset_splay.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tr/extr_cset.c_cset_splay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csnode = type { %struct.csnode*, %struct.csnode* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.csnode* (%struct.csnode*, i32)* @cset_splay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.csnode* @cset_splay(%struct.csnode* %0, i32 %1) #0 {
  %3 = alloca %struct.csnode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.csnode, align 8
  %6 = alloca %struct.csnode*, align 8
  %7 = alloca %struct.csnode*, align 8
  %8 = alloca %struct.csnode*, align 8
  store %struct.csnode* %0, %struct.csnode** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.csnode*, %struct.csnode** %3, align 8
  %10 = icmp ne %struct.csnode* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = getelementptr inbounds %struct.csnode, %struct.csnode* %5, i32 0, i32 1
  store %struct.csnode* null, %struct.csnode** %13, align 8
  %14 = getelementptr inbounds %struct.csnode, %struct.csnode* %5, i32 0, i32 0
  store %struct.csnode* null, %struct.csnode** %14, align 8
  store %struct.csnode* %5, %struct.csnode** %7, align 8
  store %struct.csnode* %5, %struct.csnode** %6, align 8
  br label %15

15:                                               ; preds = %105, %2
  %16 = load %struct.csnode*, %struct.csnode** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @cset_rangecmp(%struct.csnode* %16, i32 %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %59

20:                                               ; preds = %15
  %21 = load %struct.csnode*, %struct.csnode** %3, align 8
  %22 = getelementptr inbounds %struct.csnode, %struct.csnode* %21, i32 0, i32 0
  %23 = load %struct.csnode*, %struct.csnode** %22, align 8
  %24 = icmp ne %struct.csnode* %23, null
  br i1 %24, label %25, label %45

25:                                               ; preds = %20
  %26 = load %struct.csnode*, %struct.csnode** %3, align 8
  %27 = getelementptr inbounds %struct.csnode, %struct.csnode* %26, i32 0, i32 0
  %28 = load %struct.csnode*, %struct.csnode** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @cset_rangecmp(%struct.csnode* %28, i32 %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %25
  %33 = load %struct.csnode*, %struct.csnode** %3, align 8
  %34 = getelementptr inbounds %struct.csnode, %struct.csnode* %33, i32 0, i32 0
  %35 = load %struct.csnode*, %struct.csnode** %34, align 8
  store %struct.csnode* %35, %struct.csnode** %8, align 8
  %36 = load %struct.csnode*, %struct.csnode** %8, align 8
  %37 = getelementptr inbounds %struct.csnode, %struct.csnode* %36, i32 0, i32 1
  %38 = load %struct.csnode*, %struct.csnode** %37, align 8
  %39 = load %struct.csnode*, %struct.csnode** %3, align 8
  %40 = getelementptr inbounds %struct.csnode, %struct.csnode* %39, i32 0, i32 0
  store %struct.csnode* %38, %struct.csnode** %40, align 8
  %41 = load %struct.csnode*, %struct.csnode** %3, align 8
  %42 = load %struct.csnode*, %struct.csnode** %8, align 8
  %43 = getelementptr inbounds %struct.csnode, %struct.csnode* %42, i32 0, i32 1
  store %struct.csnode* %41, %struct.csnode** %43, align 8
  %44 = load %struct.csnode*, %struct.csnode** %8, align 8
  store %struct.csnode* %44, %struct.csnode** %3, align 8
  br label %45

45:                                               ; preds = %32, %25, %20
  %46 = load %struct.csnode*, %struct.csnode** %3, align 8
  %47 = getelementptr inbounds %struct.csnode, %struct.csnode* %46, i32 0, i32 0
  %48 = load %struct.csnode*, %struct.csnode** %47, align 8
  %49 = icmp eq %struct.csnode* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %106

51:                                               ; preds = %45
  %52 = load %struct.csnode*, %struct.csnode** %3, align 8
  %53 = load %struct.csnode*, %struct.csnode** %7, align 8
  %54 = getelementptr inbounds %struct.csnode, %struct.csnode* %53, i32 0, i32 0
  store %struct.csnode* %52, %struct.csnode** %54, align 8
  %55 = load %struct.csnode*, %struct.csnode** %3, align 8
  store %struct.csnode* %55, %struct.csnode** %7, align 8
  %56 = load %struct.csnode*, %struct.csnode** %3, align 8
  %57 = getelementptr inbounds %struct.csnode, %struct.csnode* %56, i32 0, i32 0
  %58 = load %struct.csnode*, %struct.csnode** %57, align 8
  store %struct.csnode* %58, %struct.csnode** %3, align 8
  br label %105

59:                                               ; preds = %15
  %60 = load %struct.csnode*, %struct.csnode** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i64 @cset_rangecmp(%struct.csnode* %60, i32 %61)
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %103

64:                                               ; preds = %59
  %65 = load %struct.csnode*, %struct.csnode** %3, align 8
  %66 = getelementptr inbounds %struct.csnode, %struct.csnode* %65, i32 0, i32 1
  %67 = load %struct.csnode*, %struct.csnode** %66, align 8
  %68 = icmp ne %struct.csnode* %67, null
  br i1 %68, label %69, label %89

69:                                               ; preds = %64
  %70 = load %struct.csnode*, %struct.csnode** %3, align 8
  %71 = getelementptr inbounds %struct.csnode, %struct.csnode* %70, i32 0, i32 1
  %72 = load %struct.csnode*, %struct.csnode** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i64 @cset_rangecmp(%struct.csnode* %72, i32 %73)
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %69
  %77 = load %struct.csnode*, %struct.csnode** %3, align 8
  %78 = getelementptr inbounds %struct.csnode, %struct.csnode* %77, i32 0, i32 1
  %79 = load %struct.csnode*, %struct.csnode** %78, align 8
  store %struct.csnode* %79, %struct.csnode** %8, align 8
  %80 = load %struct.csnode*, %struct.csnode** %8, align 8
  %81 = getelementptr inbounds %struct.csnode, %struct.csnode* %80, i32 0, i32 0
  %82 = load %struct.csnode*, %struct.csnode** %81, align 8
  %83 = load %struct.csnode*, %struct.csnode** %3, align 8
  %84 = getelementptr inbounds %struct.csnode, %struct.csnode* %83, i32 0, i32 1
  store %struct.csnode* %82, %struct.csnode** %84, align 8
  %85 = load %struct.csnode*, %struct.csnode** %3, align 8
  %86 = load %struct.csnode*, %struct.csnode** %8, align 8
  %87 = getelementptr inbounds %struct.csnode, %struct.csnode* %86, i32 0, i32 0
  store %struct.csnode* %85, %struct.csnode** %87, align 8
  %88 = load %struct.csnode*, %struct.csnode** %8, align 8
  store %struct.csnode* %88, %struct.csnode** %3, align 8
  br label %89

89:                                               ; preds = %76, %69, %64
  %90 = load %struct.csnode*, %struct.csnode** %3, align 8
  %91 = getelementptr inbounds %struct.csnode, %struct.csnode* %90, i32 0, i32 1
  %92 = load %struct.csnode*, %struct.csnode** %91, align 8
  %93 = icmp eq %struct.csnode* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %106

95:                                               ; preds = %89
  %96 = load %struct.csnode*, %struct.csnode** %3, align 8
  %97 = load %struct.csnode*, %struct.csnode** %6, align 8
  %98 = getelementptr inbounds %struct.csnode, %struct.csnode* %97, i32 0, i32 1
  store %struct.csnode* %96, %struct.csnode** %98, align 8
  %99 = load %struct.csnode*, %struct.csnode** %3, align 8
  store %struct.csnode* %99, %struct.csnode** %6, align 8
  %100 = load %struct.csnode*, %struct.csnode** %3, align 8
  %101 = getelementptr inbounds %struct.csnode, %struct.csnode* %100, i32 0, i32 1
  %102 = load %struct.csnode*, %struct.csnode** %101, align 8
  store %struct.csnode* %102, %struct.csnode** %3, align 8
  br label %104

103:                                              ; preds = %59
  br label %106

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %104, %51
  br label %15

106:                                              ; preds = %103, %94, %50
  %107 = load %struct.csnode*, %struct.csnode** %3, align 8
  %108 = getelementptr inbounds %struct.csnode, %struct.csnode* %107, i32 0, i32 0
  %109 = load %struct.csnode*, %struct.csnode** %108, align 8
  %110 = load %struct.csnode*, %struct.csnode** %6, align 8
  %111 = getelementptr inbounds %struct.csnode, %struct.csnode* %110, i32 0, i32 1
  store %struct.csnode* %109, %struct.csnode** %111, align 8
  %112 = load %struct.csnode*, %struct.csnode** %3, align 8
  %113 = getelementptr inbounds %struct.csnode, %struct.csnode* %112, i32 0, i32 1
  %114 = load %struct.csnode*, %struct.csnode** %113, align 8
  %115 = load %struct.csnode*, %struct.csnode** %7, align 8
  %116 = getelementptr inbounds %struct.csnode, %struct.csnode* %115, i32 0, i32 0
  store %struct.csnode* %114, %struct.csnode** %116, align 8
  %117 = getelementptr inbounds %struct.csnode, %struct.csnode* %5, i32 0, i32 1
  %118 = load %struct.csnode*, %struct.csnode** %117, align 8
  %119 = load %struct.csnode*, %struct.csnode** %3, align 8
  %120 = getelementptr inbounds %struct.csnode, %struct.csnode* %119, i32 0, i32 0
  store %struct.csnode* %118, %struct.csnode** %120, align 8
  %121 = getelementptr inbounds %struct.csnode, %struct.csnode* %5, i32 0, i32 0
  %122 = load %struct.csnode*, %struct.csnode** %121, align 8
  %123 = load %struct.csnode*, %struct.csnode** %3, align 8
  %124 = getelementptr inbounds %struct.csnode, %struct.csnode* %123, i32 0, i32 1
  store %struct.csnode* %122, %struct.csnode** %124, align 8
  %125 = load %struct.csnode*, %struct.csnode** %3, align 8
  ret %struct.csnode* %125
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @cset_rangecmp(%struct.csnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
