; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sglist.c_sglist_append_ext_pgs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sglist.c_sglist_append_ext_pgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sglist = type { i32 }
%struct.mbuf_ext_pgs = type { i64, i32, i32, i64, i32*, i64*, i32* }

@.str = private unnamed_addr constant [9 x i8] c"len != 0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sglist_append_ext_pgs(%struct.sglist* %0, %struct.mbuf_ext_pgs* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.sglist*, align 8
  %6 = alloca %struct.mbuf_ext_pgs*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sglist* %0, %struct.sglist** %5, align 8
  store %struct.mbuf_ext_pgs* %1, %struct.mbuf_ext_pgs** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %6, align 8
  %17 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %54

20:                                               ; preds = %4
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %6, align 8
  %23 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp uge i64 %21, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %6, align 8
  %28 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = sub i64 %30, %29
  store i64 %31, i64* %7, align 8
  br label %53

32:                                               ; preds = %20
  %33 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %6, align 8
  %34 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = sub i64 %35, %36
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %7, align 8
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i64 @MIN(i64 %39, i64 %40)
  store i64 %41, i64* %9, align 8
  store i64 0, i64* %7, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %8, align 8
  %44 = sub i64 %43, %42
  store i64 %44, i64* %8, align 8
  %45 = load %struct.sglist*, %struct.sglist** %5, align 8
  %46 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %6, align 8
  %47 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %46, i32 0, i32 6
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @sglist_append(%struct.sglist* %45, i32* %50, i64 %51)
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %32, %26
  br label %54

54:                                               ; preds = %53, %4
  %55 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %6, align 8
  %56 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %58

58:                                               ; preds = %114, %54
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %6, align 8
  %61 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load i32, i32* %12, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i64, i64* %8, align 8
  %69 = icmp ugt i64 %68, 0
  br label %70

70:                                               ; preds = %67, %64, %58
  %71 = phi i1 [ false, %64 ], [ false, %58 ], [ %69, %67 ]
  br i1 %71, label %72, label %117

72:                                               ; preds = %70
  %73 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %6, align 8
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %15, align 4
  %76 = call i32 @mbuf_ext_pg_len(%struct.mbuf_ext_pgs* %73, i32 %74, i32 %75)
  store i32 %76, i32* %14, align 4
  %77 = load i64, i64* %7, align 8
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp uge i64 %77, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %72
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* %7, align 8
  %85 = sub i64 %84, %83
  store i64 %85, i64* %7, align 8
  store i32 0, i32* %15, align 4
  br label %114

86:                                               ; preds = %72
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* %7, align 8
  %90 = sub i64 %88, %89
  store i64 %90, i64* %9, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* %7, align 8
  %94 = add i64 %92, %93
  store i64 %94, i64* %10, align 8
  store i64 0, i64* %7, align 8
  %95 = load i64, i64* %9, align 8
  %96 = load i64, i64* %8, align 8
  %97 = call i64 @MIN(i64 %95, i64 %96)
  store i64 %97, i64* %9, align 8
  %98 = load i64, i64* %9, align 8
  %99 = load i64, i64* %8, align 8
  %100 = sub i64 %99, %98
  store i64 %100, i64* %8, align 8
  %101 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %6, align 8
  %102 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %101, i32 0, i32 5
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %10, align 8
  %109 = add i64 %107, %108
  store i64 %109, i64* %11, align 8
  %110 = load %struct.sglist*, %struct.sglist** %5, align 8
  %111 = load i64, i64* %11, align 8
  %112 = load i64, i64* %9, align 8
  %113 = call i32 @sglist_append_phys(%struct.sglist* %110, i64 %111, i64 %112)
  store i32 %113, i32* %12, align 4
  store i32 0, i32* %15, align 4
  br label %114

114:                                              ; preds = %86, %81
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %13, align 4
  br label %58

117:                                              ; preds = %70
  %118 = load i32, i32* %12, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %142

120:                                              ; preds = %117
  %121 = load i64, i64* %8, align 8
  %122 = icmp ugt i64 %121, 0
  br i1 %122, label %123, label %142

123:                                              ; preds = %120
  %124 = load i64, i64* %8, align 8
  %125 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %6, align 8
  %126 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %7, align 8
  %129 = sub i64 %127, %128
  %130 = call i64 @MIN(i64 %124, i64 %129)
  store i64 %130, i64* %9, align 8
  %131 = load i64, i64* %9, align 8
  %132 = load i64, i64* %8, align 8
  %133 = sub i64 %132, %131
  store i64 %133, i64* %8, align 8
  %134 = load %struct.sglist*, %struct.sglist** %5, align 8
  %135 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %6, align 8
  %136 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %135, i32 0, i32 4
  %137 = load i32*, i32** %136, align 8
  %138 = load i64, i64* %7, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = load i64, i64* %9, align 8
  %141 = call i32 @sglist_append(%struct.sglist* %134, i32* %139, i64 %140)
  store i32 %141, i32* %12, align 4
  br label %142

142:                                              ; preds = %123, %120, %117
  %143 = load i32, i32* %12, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = load i64, i64* %8, align 8
  %147 = icmp eq i64 %146, 0
  %148 = zext i1 %147 to i32
  %149 = call i32 @KASSERT(i32 %148, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %150

150:                                              ; preds = %145, %142
  %151 = load i32, i32* %12, align 4
  ret i32 %151
}

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @sglist_append(%struct.sglist*, i32*, i64) #1

declare dso_local i32 @mbuf_ext_pg_len(%struct.mbuf_ext_pgs*, i32, i32) #1

declare dso_local i32 @sglist_append_phys(%struct.sglist*, i64, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
