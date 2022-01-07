; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_cast.c_cast_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_cast.c_cast_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cast_encrypt(%struct.TYPE_3__* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load i64*, i64** %5, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = shl i32 %13, 24
  %15 = load i64*, i64** %5, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 1
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = shl i32 %18, 16
  %20 = or i32 %14, %19
  %21 = load i64*, i64** %5, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 2
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = shl i32 %24, 8
  %26 = or i32 %20, %25
  %27 = load i64*, i64** %5, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 3
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = or i32 %26, %30
  store i32 %31, i32* %8, align 4
  %32 = load i64*, i64** %5, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 4
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = shl i32 %35, 24
  %37 = load i64*, i64** %5, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 5
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = shl i32 %40, 16
  %42 = or i32 %36, %41
  %43 = load i64*, i64** %5, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 6
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = shl i32 %46, 8
  %48 = or i32 %42, %47
  %49 = load i64*, i64** %5, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 7
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = or i32 %48, %52
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @F1(i32 %54, i32 %55, i32 0)
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @F2(i32 %57, i32 %58, i32 1)
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @F3(i32 %60, i32 %61, i32 2)
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @F1(i32 %63, i32 %64, i32 3)
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @F2(i32 %66, i32 %67, i32 4)
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @F3(i32 %69, i32 %70, i32 5)
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @F1(i32 %72, i32 %73, i32 6)
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @F2(i32 %75, i32 %76, i32 7)
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @F3(i32 %78, i32 %79, i32 8)
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @F1(i32 %81, i32 %82, i32 9)
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @F2(i32 %84, i32 %85, i32 10)
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @F3(i32 %87, i32 %88, i32 11)
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp sgt i32 %92, 12
  br i1 %93, label %94, label %107

94:                                               ; preds = %3
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @F1(i32 %95, i32 %96, i32 12)
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @F2(i32 %98, i32 %99, i32 13)
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @F3(i32 %101, i32 %102, i32 14)
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @F1(i32 %104, i32 %105, i32 15)
  br label %107

107:                                              ; preds = %94, %3
  %108 = load i32, i32* %9, align 4
  %109 = call i64 @U_INT8_Ta(i32 %108)
  %110 = load i64*, i64** %6, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 0
  store i64 %109, i64* %111, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i64 @U_INT8_Tb(i32 %112)
  %114 = load i64*, i64** %6, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 1
  store i64 %113, i64* %115, align 8
  %116 = load i32, i32* %9, align 4
  %117 = call i64 @U_INT8_Tc(i32 %116)
  %118 = load i64*, i64** %6, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 2
  store i64 %117, i64* %119, align 8
  %120 = load i32, i32* %9, align 4
  %121 = call i64 @U_INT8_Td(i32 %120)
  %122 = load i64*, i64** %6, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 3
  store i64 %121, i64* %123, align 8
  %124 = load i32, i32* %8, align 4
  %125 = call i64 @U_INT8_Ta(i32 %124)
  %126 = load i64*, i64** %6, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 4
  store i64 %125, i64* %127, align 8
  %128 = load i32, i32* %8, align 4
  %129 = call i64 @U_INT8_Tb(i32 %128)
  %130 = load i64*, i64** %6, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 5
  store i64 %129, i64* %131, align 8
  %132 = load i32, i32* %8, align 4
  %133 = call i64 @U_INT8_Tc(i32 %132)
  %134 = load i64*, i64** %6, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 6
  store i64 %133, i64* %135, align 8
  %136 = load i32, i32* %8, align 4
  %137 = call i64 @U_INT8_Td(i32 %136)
  %138 = load i64*, i64** %6, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 7
  store i64 %137, i64* %139, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  ret void
}

declare dso_local i32 @F1(i32, i32, i32) #1

declare dso_local i32 @F2(i32, i32, i32) #1

declare dso_local i32 @F3(i32, i32, i32) #1

declare dso_local i64 @U_INT8_Ta(i32) #1

declare dso_local i64 @U_INT8_Tb(i32) #1

declare dso_local i64 @U_INT8_Tc(i32) #1

declare dso_local i64 @U_INT8_Td(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
