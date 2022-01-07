; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_change_bits.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_change_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [64 x i8] c"ch_bits dev %d ch %d val %d old 0x%02x r %d p %d bit %d off %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__***, i32*, i32, i32, i32)* @change_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_bits(%struct.TYPE_3__*** %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__***, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__*** %0, %struct.TYPE_3__**** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_3__***, %struct.TYPE_3__**** %6, align 8
  %19 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %19, i64 %21
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_3__***, %struct.TYPE_3__**** %6, align 8
  %30 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %30, i64 %32
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_3__***, %struct.TYPE_3__**** %6, align 8
  %41 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %41, i64 %43
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_3__***, %struct.TYPE_3__**** %6, align 8
  %52 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %52, i64 %54
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i32 %15, i32 %17, i32 %28, i32 %39, i32 %50, i32 %61)
  %63 = call i32 @DEB(i32 %62)
  %64 = load %struct.TYPE_3__***, %struct.TYPE_3__**** %6, align 8
  %65 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %65, i64 %67
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %79

76:                                               ; preds = %5
  %77 = load i32, i32* %10, align 4
  %78 = sub nsw i32 100, %77
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %76, %5
  %80 = load %struct.TYPE_3__***, %struct.TYPE_3__**** %6, align 8
  %81 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %81, i64 %83
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 1, %90
  %92 = sub nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %11, align 4
  %95 = mul nsw i32 %93, %94
  %96 = add nsw i32 %95, 50
  %97 = sdiv i32 %96, 100
  store i32 %97, i32* %10, align 4
  %98 = load %struct.TYPE_3__***, %struct.TYPE_3__**** %6, align 8
  %99 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %99, i64 %101
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %12, align 4
  %111 = shl i32 %109, %110
  %112 = xor i32 %111, -1
  %113 = load i32*, i32** %7, align 8
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, %112
  store i32 %115, i32* %113, align 4
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %11, align 4
  %118 = and i32 %116, %117
  %119 = load i32, i32* %12, align 4
  %120 = shl i32 %118, %119
  %121 = load i32*, i32** %7, align 8
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %120
  store i32 %123, i32* %121, align 4
  ret void
}

declare dso_local i32 @DEB(i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
