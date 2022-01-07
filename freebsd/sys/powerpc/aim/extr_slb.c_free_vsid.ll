; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_slb.c_free_vsid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_slb.c_free_vsid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.slbtnode* }
%struct.slbtnode = type { i64, i64, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.slbtnode**, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"uad base %09jx level %d bad!\00", align 1
@UAD_LEAF_LEVEL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"Asked to remove an entry that was never inserted!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_vsid(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.slbtnode*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @PMAP_LOCK_ASSERT(%struct.TYPE_8__* %9, i32 %10)
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.slbtnode*, %struct.slbtnode** %13, align 8
  store %struct.slbtnode* %14, %struct.slbtnode** %7, align 8
  br label %15

15:                                               ; preds = %81, %3
  %16 = load %struct.slbtnode*, %struct.slbtnode** %7, align 8
  %17 = call i32 @uad_baseok(%struct.slbtnode* %16)
  %18 = load %struct.slbtnode*, %struct.slbtnode** %7, align 8
  %19 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.slbtnode*, %struct.slbtnode** %7, align 8
  %22 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @KASSERT(i32 %17, i8* %24)
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.slbtnode*, %struct.slbtnode** %7, align 8
  %28 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @esid2idx(i32 %26, i64 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.slbtnode*, %struct.slbtnode** %7, align 8
  %32 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @UAD_LEAF_LEVEL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %15
  %37 = load %struct.slbtnode*, %struct.slbtnode** %7, align 8
  %38 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = call i32 (...) @eieio()
  %46 = load %struct.slbtnode*, %struct.slbtnode** %7, align 8
  %47 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load %struct.slbtnode*, %struct.slbtnode** %7, align 8
  %55 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %54, i32 0, i32 3
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @clrbit(i32* %55, i32 %56)
  br label %82

58:                                               ; preds = %15
  %59 = load %struct.slbtnode*, %struct.slbtnode** %7, align 8
  %60 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load %struct.slbtnode**, %struct.slbtnode*** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.slbtnode*, %struct.slbtnode** %62, i64 %64
  %66 = load %struct.slbtnode*, %struct.slbtnode** %65, align 8
  store %struct.slbtnode* %66, %struct.slbtnode** %7, align 8
  %67 = load %struct.slbtnode*, %struct.slbtnode** %7, align 8
  %68 = icmp eq %struct.slbtnode* %67, null
  br i1 %68, label %79, label %69

69:                                               ; preds = %58
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.slbtnode*, %struct.slbtnode** %7, align 8
  %72 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @esid2base(i32 %70, i64 %73)
  %75 = load %struct.slbtnode*, %struct.slbtnode** %7, align 8
  %76 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %74, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %69, %58
  %80 = call i32 @KASSERT(i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %82

81:                                               ; preds = %69
  br label %15

82:                                               ; preds = %79, %36
  ret void
}

declare dso_local i32 @PMAP_LOCK_ASSERT(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @uad_baseok(%struct.slbtnode*) #1

declare dso_local i32 @esid2idx(i32, i64) #1

declare dso_local i32 @eieio(...) #1

declare dso_local i32 @clrbit(i32*, i32) #1

declare dso_local i64 @esid2base(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
