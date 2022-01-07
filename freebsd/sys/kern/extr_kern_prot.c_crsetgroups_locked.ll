; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_crsetgroups_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_crsetgroups_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32, i64*, i32 }

@.str = private unnamed_addr constant [24 x i8] c"cr_ngroups is too small\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucred*, i32, i64*)* @crsetgroups_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crsetgroups_locked(%struct.ucred* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.ucred*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ucred* %0, %struct.ucred** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %10 = load %struct.ucred*, %struct.ucred** %4, align 8
  %11 = getelementptr inbounds %struct.ucred, %struct.ucred* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp sge i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @KASSERT(i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %17 = load i64*, i64** %6, align 8
  %18 = load %struct.ucred*, %struct.ucred** %4, align 8
  %19 = getelementptr inbounds %struct.ucred, %struct.ucred* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 @bcopy(i64* %17, i64* %20, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.ucred*, %struct.ucred** %4, align 8
  %28 = getelementptr inbounds %struct.ucred, %struct.ucred* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  store i32 2, i32* %7, align 4
  br label %29

29:                                               ; preds = %85, %3
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %88

33:                                               ; preds = %29
  %34 = load %struct.ucred*, %struct.ucred** %4, align 8
  %35 = getelementptr inbounds %struct.ucred, %struct.ucred* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %9, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %73, %33
  %44 = load i32, i32* %8, align 4
  %45 = icmp sge i32 %44, 1
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load i64, i64* %9, align 8
  %48 = load %struct.ucred*, %struct.ucred** %4, align 8
  %49 = getelementptr inbounds %struct.ucred, %struct.ucred* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %47, %54
  br label %56

56:                                               ; preds = %46, %43
  %57 = phi i1 [ false, %43 ], [ %55, %46 ]
  br i1 %57, label %58, label %76

58:                                               ; preds = %56
  %59 = load %struct.ucred*, %struct.ucred** %4, align 8
  %60 = getelementptr inbounds %struct.ucred, %struct.ucred* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.ucred*, %struct.ucred** %4, align 8
  %67 = getelementptr inbounds %struct.ucred, %struct.ucred* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %68, i64 %71
  store i64 %65, i64* %72, align 8
  br label %73

73:                                               ; preds = %58
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %8, align 4
  br label %43

76:                                               ; preds = %56
  %77 = load i64, i64* %9, align 8
  %78 = load %struct.ucred*, %struct.ucred** %4, align 8
  %79 = getelementptr inbounds %struct.ucred, %struct.ucred* %78, i32 0, i32 1
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %80, i64 %83
  store i64 %77, i64* %84, align 8
  br label %85

85:                                               ; preds = %76
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %29

88:                                               ; preds = %29
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bcopy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
