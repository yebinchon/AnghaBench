; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_slb.c_make_intermediate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_slb.c_make_intermediate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slbtnode = type { i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.slbtnode** }

@.str = private unnamed_addr constant [34 x i8] c"No need for an intermediate node?\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"Found splitting level %d for %09jx and %09jx, but it's the same as %p's\00", align 1
@slbt_zone = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"unhandled NULL case\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.slbtnode* (i64, %struct.slbtnode*)* @make_intermediate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.slbtnode* @make_intermediate(i64 %0, %struct.slbtnode* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.slbtnode*, align 8
  %5 = alloca %struct.slbtnode*, align 8
  %6 = alloca %struct.slbtnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.slbtnode* %1, %struct.slbtnode** %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load %struct.slbtnode*, %struct.slbtnode** %4, align 8
  %11 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @esid2idx(i64 %9, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.slbtnode*, %struct.slbtnode** %4, align 8
  %15 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.slbtnode**, %struct.slbtnode*** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.slbtnode*, %struct.slbtnode** %17, i64 %19
  %21 = load %struct.slbtnode*, %struct.slbtnode** %20, align 8
  store %struct.slbtnode* %21, %struct.slbtnode** %5, align 8
  %22 = load i64, i64* %3, align 8
  %23 = load %struct.slbtnode*, %struct.slbtnode** %5, align 8
  %24 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @esid2base(i64 %22, i32 %25)
  %27 = load %struct.slbtnode*, %struct.slbtnode** %5, align 8
  %28 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @KASSERT(i32 %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.slbtnode*, %struct.slbtnode** %5, align 8
  %34 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %47, %2
  %38 = load i64, i64* %3, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @esid2base(i64 %38, i32 %39)
  %41 = load %struct.slbtnode*, %struct.slbtnode** %5, align 8
  %42 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i64 @esid2base(i64 %43, i32 %44)
  %46 = icmp ne i64 %40, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %37

50:                                               ; preds = %37
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.slbtnode*, %struct.slbtnode** %4, align 8
  %53 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %8, align 4
  %58 = load i64, i64* %3, align 8
  %59 = load %struct.slbtnode*, %struct.slbtnode** %5, align 8
  %60 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.slbtnode*, %struct.slbtnode** %4, align 8
  %63 = bitcast %struct.slbtnode* %62 to i8*
  %64 = call i32 @KASSERT(i32 %56, i8* %63)
  %65 = load i32, i32* @slbt_zone, align 4
  %66 = load i32, i32* @M_NOWAIT, align 4
  %67 = load i32, i32* @M_ZERO, align 4
  %68 = or i32 %66, %67
  %69 = call %struct.slbtnode* @uma_zalloc(i32 %65, i32 %68)
  store %struct.slbtnode* %69, %struct.slbtnode** %6, align 8
  %70 = load %struct.slbtnode*, %struct.slbtnode** %6, align 8
  %71 = icmp ne %struct.slbtnode* %70, null
  %72 = zext i1 %71 to i32
  %73 = call i32 @KASSERT(i32 %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.slbtnode*, %struct.slbtnode** %6, align 8
  %76 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i64, i64* %3, align 8
  %78 = load %struct.slbtnode*, %struct.slbtnode** %6, align 8
  %79 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @esid2base(i64 %77, i32 %80)
  %82 = load %struct.slbtnode*, %struct.slbtnode** %6, align 8
  %83 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = load %struct.slbtnode*, %struct.slbtnode** %5, align 8
  %85 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.slbtnode*, %struct.slbtnode** %6, align 8
  %88 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @esid2idx(i64 %86, i32 %89)
  store i32 %90, i32* %7, align 4
  %91 = load %struct.slbtnode*, %struct.slbtnode** %5, align 8
  %92 = load %struct.slbtnode*, %struct.slbtnode** %6, align 8
  %93 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load %struct.slbtnode**, %struct.slbtnode*** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.slbtnode*, %struct.slbtnode** %95, i64 %97
  store %struct.slbtnode* %91, %struct.slbtnode** %98, align 8
  %99 = load %struct.slbtnode*, %struct.slbtnode** %6, align 8
  %100 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %99, i32 0, i32 2
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @setbit(i32* %100, i32 %101)
  %103 = call i32 (...) @powerpc_lwsync()
  %104 = load %struct.slbtnode*, %struct.slbtnode** %6, align 8
  %105 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.slbtnode*, %struct.slbtnode** %4, align 8
  %108 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @esid2idx(i64 %106, i32 %109)
  store i32 %110, i32* %7, align 4
  %111 = load %struct.slbtnode*, %struct.slbtnode** %6, align 8
  %112 = load %struct.slbtnode*, %struct.slbtnode** %4, align 8
  %113 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load %struct.slbtnode**, %struct.slbtnode*** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.slbtnode*, %struct.slbtnode** %115, i64 %117
  store %struct.slbtnode* %111, %struct.slbtnode** %118, align 8
  %119 = load %struct.slbtnode*, %struct.slbtnode** %4, align 8
  %120 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %119, i32 0, i32 2
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @setbit(i32* %120, i32 %121)
  %123 = load %struct.slbtnode*, %struct.slbtnode** %6, align 8
  ret %struct.slbtnode* %123
}

declare dso_local i32 @esid2idx(i64, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @esid2base(i64, i32) #1

declare dso_local %struct.slbtnode* @uma_zalloc(i32, i32) #1

declare dso_local i32 @setbit(i32*, i32) #1

declare dso_local i32 @powerpc_lwsync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
