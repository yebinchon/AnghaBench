; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_crfree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_crfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32, i64, i64, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [23 x i8] c"bad ucred refcount: %d\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"dangling reference to ucred\00", align 1
@M_CRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crfree(%struct.ucred* %0) #0 {
  %2 = alloca %struct.ucred*, align 8
  store %struct.ucred* %0, %struct.ucred** %2, align 8
  %3 = load %struct.ucred*, %struct.ucred** %2, align 8
  %4 = getelementptr inbounds %struct.ucred, %struct.ucred* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp sgt i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = load %struct.ucred*, %struct.ucred** %2, align 8
  %9 = getelementptr inbounds %struct.ucred, %struct.ucred* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to i8*
  %13 = call i32 @KASSERT(i32 %7, i8* %12)
  %14 = load %struct.ucred*, %struct.ucred** %2, align 8
  %15 = getelementptr inbounds %struct.ucred, %struct.ucred* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, -559038242
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.ucred*, %struct.ucred** %2, align 8
  %21 = getelementptr inbounds %struct.ucred, %struct.ucred* %20, i32 0, i32 0
  %22 = call i64 @refcount_release(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %83

24:                                               ; preds = %1
  %25 = load %struct.ucred*, %struct.ucred** %2, align 8
  %26 = getelementptr inbounds %struct.ucred, %struct.ucred* %25, i32 0, i32 6
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.ucred*, %struct.ucred** %2, align 8
  %31 = getelementptr inbounds %struct.ucred, %struct.ucred* %30, i32 0, i32 6
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @uifree(i32* %32)
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.ucred*, %struct.ucred** %2, align 8
  %36 = getelementptr inbounds %struct.ucred, %struct.ucred* %35, i32 0, i32 5
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.ucred*, %struct.ucred** %2, align 8
  %41 = getelementptr inbounds %struct.ucred, %struct.ucred* %40, i32 0, i32 5
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @uifree(i32* %42)
  br label %44

44:                                               ; preds = %39, %34
  %45 = load %struct.ucred*, %struct.ucred** %2, align 8
  %46 = getelementptr inbounds %struct.ucred, %struct.ucred* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.ucred*, %struct.ucred** %2, align 8
  %51 = getelementptr inbounds %struct.ucred, %struct.ucred* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @prison_free(i32* %52)
  br label %54

54:                                               ; preds = %49, %44
  %55 = load %struct.ucred*, %struct.ucred** %2, align 8
  %56 = getelementptr inbounds %struct.ucred, %struct.ucred* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.ucred*, %struct.ucred** %2, align 8
  %61 = getelementptr inbounds %struct.ucred, %struct.ucred* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @loginclass_free(i32* %62)
  br label %64

64:                                               ; preds = %59, %54
  %65 = load %struct.ucred*, %struct.ucred** %2, align 8
  %66 = getelementptr inbounds %struct.ucred, %struct.ucred* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.ucred*, %struct.ucred** %2, align 8
  %69 = getelementptr inbounds %struct.ucred, %struct.ucred* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %67, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %64
  %73 = load %struct.ucred*, %struct.ucred** %2, align 8
  %74 = getelementptr inbounds %struct.ucred, %struct.ucred* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to %struct.ucred*
  %77 = load i32, i32* @M_CRED, align 4
  %78 = call i32 @free(%struct.ucred* %76, i32 %77)
  br label %79

79:                                               ; preds = %72, %64
  %80 = load %struct.ucred*, %struct.ucred** %2, align 8
  %81 = load i32, i32* @M_CRED, align 4
  %82 = call i32 @free(%struct.ucred* %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %1
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @refcount_release(i32*) #1

declare dso_local i32 @uifree(i32*) #1

declare dso_local i32 @prison_free(i32*) #1

declare dso_local i32 @loginclass_free(i32*) #1

declare dso_local i32 @free(%struct.ucred*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
