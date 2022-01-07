; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_init_fp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_init_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32*, %struct.qlnx_fastpath* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.qlnx_fastpath = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, %struct.TYPE_6__**, %struct.TYPE_5__*, i32*, %struct.TYPE_7__* }

@.str = private unnamed_addr constant [9 x i8] c"%s-fp-%d\00", align 1
@qlnx_name_str = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @qlnx_init_fp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnx_init_fp(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlnx_fastpath*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %134, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %137

13:                                               ; preds = %7
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 5
  %16 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %16, i64 %18
  store %struct.qlnx_fastpath* %19, %struct.qlnx_fastpath** %6, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %22 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %25 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %24, i32 0, i32 31
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %25, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %33 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %32, i32 0, i32 30
  store i32* %31, i32** %33, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %38
  %40 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %41 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %40, i32 0, i32 29
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %41, align 8
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %44 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %43, i32 0, i32 29
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 4
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %82, %13
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %85

53:                                               ; preds = %47
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = mul nsw i32 %54, %57
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %58, %59
  store i32 %60, i32* %4, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %65
  %67 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %68 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %67, i32 0, i32 28
  %69 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %69, i64 %71
  store %struct.TYPE_6__* %66, %struct.TYPE_6__** %72, align 8
  %73 = load i32, i32* %4, align 4
  %74 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %75 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %74, i32 0, i32 28
  %76 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %76, i64 %78
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  store i32 %73, i32* %81, align 4
  br label %82

82:                                               ; preds = %53
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %47

85:                                               ; preds = %47
  %86 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %87 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %86, i32 0, i32 27
  %88 = load i32, i32* %87, align 8
  %89 = load i8*, i8** @qlnx_name_str, align 8
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @snprintf(i32 %88, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %89, i32 %90)
  %92 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %93 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %92, i32 0, i32 26
  store i64 0, i64* %93, align 8
  %94 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %95 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %94, i32 0, i32 25
  store i64 0, i64* %95, align 8
  %96 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %97 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %96, i32 0, i32 24
  store i64 0, i64* %97, align 8
  %98 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %99 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %98, i32 0, i32 23
  store i64 0, i64* %99, align 8
  %100 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %101 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %100, i32 0, i32 22
  store i64 0, i64* %101, align 8
  %102 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %103 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %102, i32 0, i32 16
  store i64 0, i64* %103, align 8
  %104 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %105 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %104, i32 0, i32 15
  store i64 0, i64* %105, align 8
  %106 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %107 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %106, i32 0, i32 14
  store i64 0, i64* %107, align 8
  %108 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %109 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %108, i32 0, i32 13
  store i64 0, i64* %109, align 8
  %110 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %111 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %110, i32 0, i32 12
  store i64 0, i64* %111, align 8
  %112 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %113 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %112, i32 0, i32 11
  store i64 0, i64* %113, align 8
  %114 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %115 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %114, i32 0, i32 10
  store i64 0, i64* %115, align 8
  %116 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %117 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %116, i32 0, i32 9
  store i64 0, i64* %117, align 8
  %118 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %119 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %118, i32 0, i32 8
  store i64 0, i64* %119, align 8
  %120 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %121 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %120, i32 0, i32 7
  store i64 0, i64* %121, align 8
  %122 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %123 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %122, i32 0, i32 6
  store i64 0, i64* %123, align 8
  %124 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %125 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %124, i32 0, i32 5
  store i64 0, i64* %125, align 8
  %126 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %127 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %126, i32 0, i32 4
  store i64 0, i64* %127, align 8
  %128 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %129 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %128, i32 0, i32 3
  store i64 0, i64* %129, align 8
  %130 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %131 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %130, i32 0, i32 2
  store i64 0, i64* %131, align 8
  %132 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %133 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %132, i32 0, i32 1
  store i64 0, i64* %133, align 8
  br label %134

134:                                              ; preds = %85
  %135 = load i32, i32* %3, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %3, align 4
  br label %7

137:                                              ; preds = %7
  ret void
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
