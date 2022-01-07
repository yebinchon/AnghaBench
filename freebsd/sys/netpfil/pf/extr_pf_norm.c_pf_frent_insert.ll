; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_norm.c_pf_frent_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_norm.c_pf_frent_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_fragment = type { i32*, i32, %struct.pf_frent**, i32 }
%struct.pf_frent = type { i64, i64 }

@PF_FRAG_ENTRY_LIMIT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@fr_next = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"overlapping fragment\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"prev == NULL || pf_frent_index(pref) < index\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"prev != NULL\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"pf_frent_index(prev) == index\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pf_fragment*, %struct.pf_frent*, %struct.pf_frent*)* @pf_frent_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pf_frent_insert(%struct.pf_fragment* %0, %struct.pf_frent* %1, %struct.pf_frent* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pf_fragment*, align 8
  %6 = alloca %struct.pf_frent*, align 8
  %7 = alloca %struct.pf_frent*, align 8
  %8 = alloca i32, align 4
  store %struct.pf_fragment* %0, %struct.pf_fragment** %5, align 8
  store %struct.pf_frent* %1, %struct.pf_frent** %6, align 8
  store %struct.pf_frent* %2, %struct.pf_frent** %7, align 8
  %9 = load i32, i32* @PF_FRAG_ENTRY_LIMIT, align 4
  %10 = icmp sle i32 %9, 255
  %11 = zext i1 %10 to i32
  %12 = call i32 @CTASSERT(i32 %11)
  %13 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %14 = call i32 @pf_frent_index(%struct.pf_frent* %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.pf_fragment*, %struct.pf_fragment** %5, align 8
  %16 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PF_FRAG_ENTRY_LIMIT, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOBUFS, align 4
  store i32 %25, i32* %4, align 4
  br label %145

26:                                               ; preds = %3
  %27 = load %struct.pf_fragment*, %struct.pf_fragment** %5, align 8
  %28 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = load %struct.pf_frent*, %struct.pf_frent** %7, align 8
  %36 = icmp eq %struct.pf_frent* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %26
  %38 = load %struct.pf_fragment*, %struct.pf_fragment** %5, align 8
  %39 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %38, i32 0, i32 3
  %40 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %41 = load i32, i32* @fr_next, align 4
  %42 = call i32 @TAILQ_INSERT_HEAD(i32* %39, %struct.pf_frent* %40, i32 %41)
  br label %63

43:                                               ; preds = %26
  %44 = load %struct.pf_frent*, %struct.pf_frent** %7, align 8
  %45 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.pf_frent*, %struct.pf_frent** %7, align 8
  %48 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %52 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sle i64 %50, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @KASSERT(i32 %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.pf_fragment*, %struct.pf_fragment** %5, align 8
  %58 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %57, i32 0, i32 3
  %59 = load %struct.pf_frent*, %struct.pf_frent** %7, align 8
  %60 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %61 = load i32, i32* @fr_next, align 4
  %62 = call i32 @TAILQ_INSERT_AFTER(i32* %58, %struct.pf_frent* %59, %struct.pf_frent* %60, i32 %61)
  br label %63

63:                                               ; preds = %43, %37
  %64 = load %struct.pf_fragment*, %struct.pf_fragment** %5, align 8
  %65 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %64, i32 0, i32 2
  %66 = load %struct.pf_frent**, %struct.pf_frent*** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.pf_frent*, %struct.pf_frent** %66, i64 %68
  %70 = load %struct.pf_frent*, %struct.pf_frent** %69, align 8
  %71 = icmp eq %struct.pf_frent* %70, null
  br i1 %71, label %72, label %91

72:                                               ; preds = %63
  %73 = load %struct.pf_frent*, %struct.pf_frent** %7, align 8
  %74 = icmp eq %struct.pf_frent* %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %72
  %76 = load %struct.pf_frent*, %struct.pf_frent** %7, align 8
  %77 = call i32 @pf_frent_index(%struct.pf_frent* %76)
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %77, %78
  br label %80

80:                                               ; preds = %75, %72
  %81 = phi i1 [ true, %72 ], [ %79, %75 ]
  %82 = zext i1 %81 to i32
  %83 = call i32 @KASSERT(i32 %82, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %84 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %85 = load %struct.pf_fragment*, %struct.pf_fragment** %5, align 8
  %86 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %85, i32 0, i32 2
  %87 = load %struct.pf_frent**, %struct.pf_frent*** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.pf_frent*, %struct.pf_frent** %87, i64 %89
  store %struct.pf_frent* %84, %struct.pf_frent** %90, align 8
  br label %136

91:                                               ; preds = %63
  %92 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %93 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.pf_fragment*, %struct.pf_fragment** %5, align 8
  %96 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %95, i32 0, i32 2
  %97 = load %struct.pf_frent**, %struct.pf_frent*** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.pf_frent*, %struct.pf_frent** %97, i64 %99
  %101 = load %struct.pf_frent*, %struct.pf_frent** %100, align 8
  %102 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp slt i64 %94, %103
  br i1 %104, label %105, label %124

105:                                              ; preds = %91
  %106 = load %struct.pf_frent*, %struct.pf_frent** %7, align 8
  %107 = icmp eq %struct.pf_frent* %106, null
  br i1 %107, label %113, label %108

108:                                              ; preds = %105
  %109 = load %struct.pf_frent*, %struct.pf_frent** %7, align 8
  %110 = call i32 @pf_frent_index(%struct.pf_frent* %109)
  %111 = load i32, i32* %8, align 4
  %112 = icmp slt i32 %110, %111
  br label %113

113:                                              ; preds = %108, %105
  %114 = phi i1 [ true, %105 ], [ %112, %108 ]
  %115 = zext i1 %114 to i32
  %116 = call i32 @KASSERT(i32 %115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %117 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %118 = load %struct.pf_fragment*, %struct.pf_fragment** %5, align 8
  %119 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %118, i32 0, i32 2
  %120 = load %struct.pf_frent**, %struct.pf_frent*** %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.pf_frent*, %struct.pf_frent** %120, i64 %122
  store %struct.pf_frent* %117, %struct.pf_frent** %123, align 8
  br label %135

124:                                              ; preds = %91
  %125 = load %struct.pf_frent*, %struct.pf_frent** %7, align 8
  %126 = icmp ne %struct.pf_frent* %125, null
  %127 = zext i1 %126 to i32
  %128 = call i32 @KASSERT(i32 %127, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %129 = load %struct.pf_frent*, %struct.pf_frent** %7, align 8
  %130 = call i32 @pf_frent_index(%struct.pf_frent* %129)
  %131 = load i32, i32* %8, align 4
  %132 = icmp eq i32 %130, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 @KASSERT(i32 %133, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %135

135:                                              ; preds = %124, %113
  br label %136

136:                                              ; preds = %135, %80
  %137 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  %138 = call i64 @pf_frent_holes(%struct.pf_frent* %137)
  %139 = load %struct.pf_fragment*, %struct.pf_fragment** %5, align 8
  %140 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %142, %138
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %140, align 8
  store i32 0, i32* %4, align 4
  br label %145

145:                                              ; preds = %136, %24
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i32 @CTASSERT(i32) #1

declare dso_local i32 @pf_frent_index(%struct.pf_frent*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.pf_frent*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TAILQ_INSERT_AFTER(i32*, %struct.pf_frent*, %struct.pf_frent*, i32) #1

declare dso_local i64 @pf_frent_holes(%struct.pf_frent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
