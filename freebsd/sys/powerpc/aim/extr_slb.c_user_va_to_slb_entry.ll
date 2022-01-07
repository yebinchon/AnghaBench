; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_slb.c_user_va_to_slb_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_slb.c_user_va_to_slb_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slb = type { i32 }
%struct.TYPE_5__ = type { %struct.slbtnode* }
%struct.slbtnode = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.slbtnode**, %struct.slb* }

@ADDR_SR_SHFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"uad base %016jx level %d bad!\00", align 1
@UAD_LEAF_LEVEL = common dso_local global i64 0, align 8
@SLBE_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.slb* @user_va_to_slb_entry(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.slb*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.slbtnode*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @ADDR_SR_SHFT, align 4
  %11 = ashr i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.slbtnode*, %struct.slbtnode** %13, align 8
  store %struct.slbtnode* %14, %struct.slbtnode** %7, align 8
  br label %15

15:                                               ; preds = %82, %2
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
  %26 = load i32, i32* %6, align 4
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
  br i1 %35, label %36, label %60

36:                                               ; preds = %15
  %37 = load %struct.slbtnode*, %struct.slbtnode** %7, align 8
  %38 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load %struct.slb*, %struct.slb** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.slb, %struct.slb* %40, i64 %42
  %44 = getelementptr inbounds %struct.slb, %struct.slb* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SLBE_VALID, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %36
  %50 = load %struct.slbtnode*, %struct.slbtnode** %7, align 8
  %51 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load %struct.slb*, %struct.slb** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.slb, %struct.slb* %53, i64 %55
  br label %58

57:                                               ; preds = %36
  br label %58

58:                                               ; preds = %57, %49
  %59 = phi %struct.slb* [ %56, %49 ], [ null, %57 ]
  store %struct.slb* %59, %struct.slb** %3, align 8
  br label %83

60:                                               ; preds = %15
  %61 = load %struct.slbtnode*, %struct.slbtnode** %7, align 8
  %62 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.slbtnode**, %struct.slbtnode*** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.slbtnode*, %struct.slbtnode** %64, i64 %66
  %68 = load %struct.slbtnode*, %struct.slbtnode** %67, align 8
  store %struct.slbtnode* %68, %struct.slbtnode** %7, align 8
  %69 = load %struct.slbtnode*, %struct.slbtnode** %7, align 8
  %70 = icmp eq %struct.slbtnode* %69, null
  br i1 %70, label %81, label %71

71:                                               ; preds = %60
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.slbtnode*, %struct.slbtnode** %7, align 8
  %74 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @esid2base(i32 %72, i64 %75)
  %77 = load %struct.slbtnode*, %struct.slbtnode** %7, align 8
  %78 = getelementptr inbounds %struct.slbtnode, %struct.slbtnode* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %76, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %71, %60
  store %struct.slb* null, %struct.slb** %3, align 8
  br label %83

82:                                               ; preds = %71
  br label %15

83:                                               ; preds = %81, %58
  %84 = load %struct.slb*, %struct.slb** %3, align 8
  ret %struct.slb* %84
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @uad_baseok(%struct.slbtnode*) #1

declare dso_local i32 @esid2idx(i32, i64) #1

declare dso_local i64 @esid2base(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
