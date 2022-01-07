; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_copy_to_txd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_copy_to_txd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_eq = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sge_eq*, i32, i32*, i32)* @copy_to_txd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_to_txd(%struct.sge_eq* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.sge_eq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sge_eq* %0, %struct.sge_eq** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** %7, align 8
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %14 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = ptrtoint i32* %16 to i64
  %18 = icmp uge i64 %12, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @MPASS(i32 %19)
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %25 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %28 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = ptrtoint i32* %30 to i64
  %32 = icmp ult i64 %23, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @MPASS(i32 %33)
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 %37, %39
  %41 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %42 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %45 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = ptrtoint i32* %47 to i64
  %49 = icmp ule i64 %40, %48
  %50 = zext i1 %49 to i32
  %51 = call i64 @__predict_true(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %4
  %54 = load i32, i32* %6, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @bcopy(i32 %54, i8* %58, i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, %61
  store i32 %64, i32* %62, align 4
  br label %106

65:                                               ; preds = %4
  %66 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %67 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %70 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = ptrtoint i32* %72 to i64
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = sub i64 %73, %76
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to i8*
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @bcopy(i32 %79, i8* %83, i32 %84)
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %9, align 4
  %91 = sub nsw i32 %89, %90
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %94 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = bitcast i32* %95 to i8*
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @bcopy(i32 %92, i8* %96, i32 %97)
  %99 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %100 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = ptrtoint i32* %101 to i32
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %102, %103
  %105 = load i32*, i32** %7, align 8
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %65, %53
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @bcopy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
