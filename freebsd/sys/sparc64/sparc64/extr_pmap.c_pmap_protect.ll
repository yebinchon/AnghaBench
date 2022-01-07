; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_protect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_protect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32* }
%struct.tte = type { i32 }

@KTR_PMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"pmap_protect: ctx=%#lx sva=%#lx eva=%#lx prot=%#lx\00", align 1
@curcpu = common dso_local global i64 0, align 8
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_NONE = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@PMAP_TSB_THRESH = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_protect(%struct.TYPE_12__* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.tte*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @KTR_PMAP, align 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @curcpu, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @CTR4(i32 %11, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %17, i64 %18, i64 %19, i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @VM_PROT_READ, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @VM_PROT_NONE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @pmap_remove(%struct.TYPE_12__* %28, i64 %29, i64 %30)
  br label %83

32:                                               ; preds = %4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @VM_PROT_WRITE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %83

38:                                               ; preds = %32
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %40 = call i32 @PMAP_LOCK(%struct.TYPE_12__* %39)
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %6, align 8
  %43 = sub nsw i64 %41, %42
  %44 = load i64, i64* @PMAP_TSB_THRESH, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @tsb_foreach(%struct.TYPE_12__* %47, i32* null, i64 %48, i64 %49, i32 (%struct.TYPE_12__*, i32*, %struct.tte*, i64)* @pmap_protect_tte)
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %52 = call i32 @tlb_context_demap(%struct.TYPE_12__* %51)
  br label %80

53:                                               ; preds = %38
  %54 = load i64, i64* %6, align 8
  store i64 %54, i64* %9, align 8
  br label %55

55:                                               ; preds = %70, %53
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* %7, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %61 = load i64, i64* %9, align 8
  %62 = call %struct.tte* @tsb_tte_lookup(%struct.TYPE_12__* %60, i64 %61)
  store %struct.tte* %62, %struct.tte** %10, align 8
  %63 = icmp ne %struct.tte* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = load %struct.tte*, %struct.tte** %10, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @pmap_protect_tte(%struct.TYPE_12__* %65, i32* null, %struct.tte* %66, i64 %67)
  br label %69

69:                                               ; preds = %64, %59
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* @PAGE_SIZE, align 8
  %72 = load i64, i64* %9, align 8
  %73 = add nsw i64 %72, %71
  store i64 %73, i64* %9, align 8
  br label %55

74:                                               ; preds = %55
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* %7, align 8
  %78 = sub nsw i64 %77, 1
  %79 = call i32 @tlb_range_demap(%struct.TYPE_12__* %75, i64 %76, i64 %78)
  br label %80

80:                                               ; preds = %74, %46
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %82 = call i32 @PMAP_UNLOCK(%struct.TYPE_12__* %81)
  br label %83

83:                                               ; preds = %80, %37, %27
  ret void
}

declare dso_local i32 @CTR4(i32, i8*, i32, i64, i64, i32) #1

declare dso_local i32 @pmap_remove(%struct.TYPE_12__*, i64, i64) #1

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_12__*) #1

declare dso_local i32 @tsb_foreach(%struct.TYPE_12__*, i32*, i64, i64, i32 (%struct.TYPE_12__*, i32*, %struct.tte*, i64)*) #1

declare dso_local i32 @pmap_protect_tte(%struct.TYPE_12__*, i32*, %struct.tte*, i64) #1

declare dso_local i32 @tlb_context_demap(%struct.TYPE_12__*) #1

declare dso_local %struct.tte* @tsb_tte_lookup(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @tlb_range_demap(%struct.TYPE_12__*, i64, i64) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
