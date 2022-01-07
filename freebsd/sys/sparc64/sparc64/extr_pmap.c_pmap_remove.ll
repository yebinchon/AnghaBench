; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32* }
%struct.tte = type { i32 }

@KTR_PMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"pmap_remove: ctx=%#lx start=%#lx end=%#lx\00", align 1
@curcpu = common dso_local global i64 0, align 8
@tte_list_global_lock = common dso_local global i32 0, align 4
@PMAP_TSB_THRESH = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_remove(%struct.TYPE_12__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tte*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* @KTR_PMAP, align 4
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @curcpu, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @CTR3(i32 %9, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %15, i64 %16, i64 %17)
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %20 = call i64 @PMAP_REMOVE_DONE(%struct.TYPE_12__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %72

23:                                               ; preds = %3
  %24 = call i32 @rw_wlock(i32* @tte_list_global_lock)
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %26 = call i32 @PMAP_LOCK(%struct.TYPE_12__* %25)
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %5, align 8
  %29 = sub nsw i64 %27, %28
  %30 = load i64, i64* @PMAP_TSB_THRESH, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %23
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @tsb_foreach(%struct.TYPE_12__* %33, i32* null, i64 %34, i64 %35, i32 (%struct.TYPE_12__*, i32*, %struct.tte*, i64)* @pmap_remove_tte)
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %38 = call i32 @tlb_context_demap(%struct.TYPE_12__* %37)
  br label %68

39:                                               ; preds = %23
  %40 = load i64, i64* %5, align 8
  store i64 %40, i64* %8, align 8
  br label %41

41:                                               ; preds = %58, %39
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %41
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call %struct.tte* @tsb_tte_lookup(%struct.TYPE_12__* %46, i64 %47)
  store %struct.tte* %48, %struct.tte** %7, align 8
  %49 = icmp ne %struct.tte* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %52 = load %struct.tte*, %struct.tte** %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @pmap_remove_tte(%struct.TYPE_12__* %51, i32* null, %struct.tte* %52, i64 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  br label %62

57:                                               ; preds = %50, %45
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* @PAGE_SIZE, align 8
  %60 = load i64, i64* %8, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* %8, align 8
  br label %41

62:                                               ; preds = %56, %41
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* %6, align 8
  %66 = sub nsw i64 %65, 1
  %67 = call i32 @tlb_range_demap(%struct.TYPE_12__* %63, i64 %64, i64 %66)
  br label %68

68:                                               ; preds = %62, %32
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = call i32 @PMAP_UNLOCK(%struct.TYPE_12__* %69)
  %71 = call i32 @rw_wunlock(i32* @tte_list_global_lock)
  br label %72

72:                                               ; preds = %68, %22
  ret void
}

declare dso_local i32 @CTR3(i32, i8*, i32, i64, i64) #1

declare dso_local i64 @PMAP_REMOVE_DONE(%struct.TYPE_12__*) #1

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_12__*) #1

declare dso_local i32 @tsb_foreach(%struct.TYPE_12__*, i32*, i64, i64, i32 (%struct.TYPE_12__*, i32*, %struct.tte*, i64)*) #1

declare dso_local i32 @pmap_remove_tte(%struct.TYPE_12__*, i32*, %struct.tte*, i64) #1

declare dso_local i32 @tlb_context_demap(%struct.TYPE_12__*) #1

declare dso_local %struct.tte* @tsb_tte_lookup(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @tlb_range_demap(%struct.TYPE_12__*, i64, i64) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_12__*) #1

declare dso_local i32 @rw_wunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
