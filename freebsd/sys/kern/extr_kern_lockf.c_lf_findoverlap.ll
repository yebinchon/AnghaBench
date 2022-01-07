; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_lockf.c_lf_findoverlap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_lockf.c_lf_findoverlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lockf_entry = type { i64, i64, i64 }

@NOLOCKF = common dso_local global %struct.lockf_entry* null, align 8
@SELF = common dso_local global i32 0, align 4
@OTHERS = common dso_local global i32 0, align 4
@lf_link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"lf_findoverlap: default\00", align 1
@lockf_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lockf_entry**, %struct.lockf_entry*, i32)* @lf_findoverlap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lf_findoverlap(%struct.lockf_entry** %0, %struct.lockf_entry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lockf_entry**, align 8
  %6 = alloca %struct.lockf_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lockf_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.lockf_entry** %0, %struct.lockf_entry*** %5, align 8
  store %struct.lockf_entry* %1, %struct.lockf_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.lockf_entry**, %struct.lockf_entry*** %5, align 8
  %13 = load %struct.lockf_entry*, %struct.lockf_entry** %12, align 8
  %14 = load %struct.lockf_entry*, %struct.lockf_entry** @NOLOCKF, align 8
  %15 = icmp eq %struct.lockf_entry* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %148

17:                                               ; preds = %3
  %18 = load %struct.lockf_entry*, %struct.lockf_entry** %6, align 8
  %19 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  %21 = load %struct.lockf_entry*, %struct.lockf_entry** %6, align 8
  %22 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %144, %74, %63, %17
  %25 = load %struct.lockf_entry**, %struct.lockf_entry*** %5, align 8
  %26 = load %struct.lockf_entry*, %struct.lockf_entry** %25, align 8
  %27 = icmp ne %struct.lockf_entry* %26, null
  br i1 %27, label %28, label %146

28:                                               ; preds = %24
  %29 = load %struct.lockf_entry**, %struct.lockf_entry*** %5, align 8
  %30 = load %struct.lockf_entry*, %struct.lockf_entry** %29, align 8
  store %struct.lockf_entry* %30, %struct.lockf_entry** %8, align 8
  %31 = load %struct.lockf_entry*, %struct.lockf_entry** %8, align 8
  %32 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %10, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %146

37:                                               ; preds = %28
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @SELF, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load %struct.lockf_entry*, %struct.lockf_entry** %8, align 8
  %44 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.lockf_entry*, %struct.lockf_entry** %6, align 8
  %47 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %63, label %50

50:                                               ; preds = %42, %37
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @OTHERS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %50
  %56 = load %struct.lockf_entry*, %struct.lockf_entry** %8, align 8
  %57 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.lockf_entry*, %struct.lockf_entry** %6, align 8
  %60 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %55, %42
  %64 = load %struct.lockf_entry*, %struct.lockf_entry** %8, align 8
  %65 = load i32, i32* @lf_link, align 4
  %66 = call %struct.lockf_entry* @LIST_NEXT(%struct.lockf_entry* %64, i32 %65)
  %67 = load %struct.lockf_entry**, %struct.lockf_entry*** %5, align 8
  store %struct.lockf_entry* %66, %struct.lockf_entry** %67, align 8
  br label %24

68:                                               ; preds = %55, %50
  %69 = load i64, i64* %9, align 8
  %70 = load %struct.lockf_entry*, %struct.lockf_entry** %8, align 8
  %71 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %69, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load %struct.lockf_entry*, %struct.lockf_entry** %8, align 8
  %76 = load i32, i32* @lf_link, align 4
  %77 = call %struct.lockf_entry* @LIST_NEXT(%struct.lockf_entry* %75, i32 %76)
  %78 = load %struct.lockf_entry**, %struct.lockf_entry*** %5, align 8
  store %struct.lockf_entry* %77, %struct.lockf_entry** %78, align 8
  br label %24

79:                                               ; preds = %68
  %80 = load %struct.lockf_entry*, %struct.lockf_entry** %8, align 8
  %81 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %9, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load %struct.lockf_entry*, %struct.lockf_entry** %8, align 8
  %87 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %10, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store i32 1, i32* %11, align 4
  br label %146

92:                                               ; preds = %85, %79
  %93 = load %struct.lockf_entry*, %struct.lockf_entry** %8, align 8
  %94 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %9, align 8
  %97 = icmp sle i64 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %92
  %99 = load %struct.lockf_entry*, %struct.lockf_entry** %8, align 8
  %100 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %10, align 8
  %103 = icmp sge i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  store i32 2, i32* %11, align 4
  br label %146

105:                                              ; preds = %98, %92
  %106 = load i64, i64* %9, align 8
  %107 = load %struct.lockf_entry*, %struct.lockf_entry** %8, align 8
  %108 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp sle i64 %106, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %105
  %112 = load i64, i64* %10, align 8
  %113 = load %struct.lockf_entry*, %struct.lockf_entry** %8, align 8
  %114 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp sge i64 %112, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  store i32 3, i32* %11, align 4
  br label %146

118:                                              ; preds = %111, %105
  %119 = load %struct.lockf_entry*, %struct.lockf_entry** %8, align 8
  %120 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %9, align 8
  %123 = icmp slt i64 %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %118
  %125 = load %struct.lockf_entry*, %struct.lockf_entry** %8, align 8
  %126 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %9, align 8
  %129 = icmp sge i64 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  store i32 4, i32* %11, align 4
  br label %146

131:                                              ; preds = %124, %118
  %132 = load %struct.lockf_entry*, %struct.lockf_entry** %8, align 8
  %133 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %9, align 8
  %136 = icmp sgt i64 %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %131
  %138 = load %struct.lockf_entry*, %struct.lockf_entry** %8, align 8
  %139 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %10, align 8
  %142 = icmp sgt i64 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  store i32 5, i32* %11, align 4
  br label %146

144:                                              ; preds = %137, %131
  %145 = call i32 @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %24

146:                                              ; preds = %143, %130, %117, %104, %91, %36, %24
  %147 = load i32, i32* %11, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %146, %16
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local %struct.lockf_entry* @LIST_NEXT(%struct.lockf_entry*, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
