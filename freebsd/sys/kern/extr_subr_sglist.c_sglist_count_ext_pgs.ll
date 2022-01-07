; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sglist.c_sglist_count_ext_pgs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sglist.c_sglist_count_ext_pgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf_ext_pgs = type { i64, i32, i32, i64*, i64, i32*, i32* }

@.str = private unnamed_addr constant [9 x i8] c"len != 0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sglist_count_ext_pgs(%struct.mbuf_ext_pgs* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbuf_ext_pgs*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mbuf_ext_pgs* %0, %struct.mbuf_ext_pgs** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %158

19:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  %20 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %5, align 8
  %21 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %61

24:                                               ; preds = %19
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %5, align 8
  %27 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp uge i64 %25, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %5, align 8
  %32 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = sub i64 %34, %33
  store i64 %35, i64* %6, align 8
  br label %60

36:                                               ; preds = %24
  %37 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %5, align 8
  %38 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = sub i64 %39, %40
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %6, align 8
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i64 @MIN(i64 %43, i64 %44)
  store i64 %45, i64* %10, align 8
  store i64 0, i64* %6, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %7, align 8
  %48 = sub i64 %47, %46
  store i64 %48, i64* %7, align 8
  %49 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %5, align 8
  %50 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %49, i32 0, i32 6
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %11, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i64, i64* %10, align 8
  %55 = call i64 @sglist_count(i32* %53, i64 %54)
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %13, align 4
  br label %60

60:                                               ; preds = %36, %30
  br label %61

61:                                               ; preds = %60, %19
  store i64 0, i64* %8, align 8
  %62 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %5, align 8
  %63 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %124, %61
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %5, align 8
  %68 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i64, i64* %7, align 8
  %73 = icmp ugt i64 %72, 0
  br label %74

74:                                               ; preds = %71, %65
  %75 = phi i1 [ false, %65 ], [ %73, %71 ]
  br i1 %75, label %76, label %127

76:                                               ; preds = %74
  %77 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %5, align 8
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %15, align 4
  %80 = call i32 @mbuf_ext_pg_len(%struct.mbuf_ext_pgs* %77, i32 %78, i32 %79)
  store i32 %80, i32* %14, align 4
  %81 = load i64, i64* %6, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = icmp uge i64 %81, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %76
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %6, align 8
  %89 = sub i64 %88, %87
  store i64 %89, i64* %6, align 8
  store i32 0, i32* %15, align 4
  br label %124

90:                                               ; preds = %76
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* %6, align 8
  %94 = sub i64 %92, %93
  store i64 %94, i64* %10, align 8
  %95 = load i32, i32* %15, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* %6, align 8
  %98 = add i64 %96, %97
  store i64 %98, i64* %11, align 8
  store i64 0, i64* %6, align 8
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* %7, align 8
  %101 = call i64 @MIN(i64 %99, i64 %100)
  store i64 %101, i64* %10, align 8
  %102 = load i64, i64* %10, align 8
  %103 = load i64, i64* %7, align 8
  %104 = sub i64 %103, %102
  store i64 %104, i64* %7, align 8
  %105 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %5, align 8
  %106 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %105, i32 0, i32 3
  %107 = load i64*, i64** %106, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %11, align 8
  %113 = add i64 %111, %112
  store i64 %113, i64* %9, align 8
  %114 = load i64, i64* %9, align 8
  %115 = load i64, i64* %8, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %90
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %13, align 4
  br label %120

120:                                              ; preds = %117, %90
  %121 = load i64, i64* %9, align 8
  %122 = load i64, i64* %10, align 8
  %123 = add i64 %121, %122
  store i64 %123, i64* %8, align 8
  store i32 0, i32* %15, align 4
  br label %124

124:                                              ; preds = %120, %85
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %12, align 4
  br label %65

127:                                              ; preds = %74
  %128 = load i64, i64* %7, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %152

130:                                              ; preds = %127
  %131 = load i64, i64* %7, align 8
  %132 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %5, align 8
  %133 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %6, align 8
  %136 = sub i64 %134, %135
  %137 = call i64 @MIN(i64 %131, i64 %136)
  store i64 %137, i64* %10, align 8
  %138 = load i64, i64* %10, align 8
  %139 = load i64, i64* %7, align 8
  %140 = sub i64 %139, %138
  store i64 %140, i64* %7, align 8
  %141 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %5, align 8
  %142 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %141, i32 0, i32 5
  %143 = load i32*, i32** %142, align 8
  %144 = load i64, i64* %6, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load i64, i64* %10, align 8
  %147 = call i64 @sglist_count(i32* %145, i64 %146)
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %149, %147
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %13, align 4
  br label %152

152:                                              ; preds = %130, %127
  %153 = load i64, i64* %7, align 8
  %154 = icmp eq i64 %153, 0
  %155 = zext i1 %154 to i32
  %156 = call i32 @KASSERT(i32 %155, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %157 = load i32, i32* %13, align 4
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %152, %18
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i64 @sglist_count(i32*, i64) #1

declare dso_local i32 @mbuf_ext_pg_len(%struct.mbuf_ext_pgs*, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
