; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_norm.c_pf_frent_holes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_norm.c_pf_frent_holes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_frent = type { i64, i64, i32 }

@pf_fragq = common dso_local global i32 0, align 4
@fr_next = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"frent->fe_off != 0\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"frent->fe_mff\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pf_frent*)* @pf_frent_holes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pf_frent_holes(%struct.pf_frent* %0) #0 {
  %2 = alloca %struct.pf_frent*, align 8
  %3 = alloca %struct.pf_frent*, align 8
  %4 = alloca %struct.pf_frent*, align 8
  %5 = alloca i32, align 4
  store %struct.pf_frent* %0, %struct.pf_frent** %2, align 8
  %6 = load %struct.pf_frent*, %struct.pf_frent** %2, align 8
  %7 = load i32, i32* @pf_fragq, align 4
  %8 = load i32, i32* @fr_next, align 4
  %9 = call %struct.pf_frent* @TAILQ_PREV(%struct.pf_frent* %6, i32 %7, i32 %8)
  store %struct.pf_frent* %9, %struct.pf_frent** %3, align 8
  %10 = load %struct.pf_frent*, %struct.pf_frent** %2, align 8
  %11 = load i32, i32* @fr_next, align 4
  %12 = call %struct.pf_frent* @TAILQ_NEXT(%struct.pf_frent* %10, i32 %11)
  store %struct.pf_frent* %12, %struct.pf_frent** %4, align 8
  store i32 1, i32* %5, align 4
  %13 = load %struct.pf_frent*, %struct.pf_frent** %3, align 8
  %14 = icmp eq %struct.pf_frent* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.pf_frent*, %struct.pf_frent** %2, align 8
  %17 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %20, %15
  br label %46

24:                                               ; preds = %1
  %25 = load %struct.pf_frent*, %struct.pf_frent** %2, align 8
  %26 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @KASSERT(i32 %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.pf_frent*, %struct.pf_frent** %2, align 8
  %32 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.pf_frent*, %struct.pf_frent** %3, align 8
  %35 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.pf_frent*, %struct.pf_frent** %3, align 8
  %38 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = icmp eq i64 %33, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %24
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %42, %24
  br label %46

46:                                               ; preds = %45, %23
  %47 = load %struct.pf_frent*, %struct.pf_frent** %4, align 8
  %48 = icmp eq %struct.pf_frent* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load %struct.pf_frent*, %struct.pf_frent** %2, align 8
  %51 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %54, %49
  br label %78

58:                                               ; preds = %46
  %59 = load %struct.pf_frent*, %struct.pf_frent** %2, align 8
  %60 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @KASSERT(i32 %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.pf_frent*, %struct.pf_frent** %4, align 8
  %64 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.pf_frent*, %struct.pf_frent** %2, align 8
  %67 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.pf_frent*, %struct.pf_frent** %2, align 8
  %70 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %68, %71
  %73 = icmp eq i64 %65, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %58
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %74, %58
  br label %78

78:                                               ; preds = %77, %57
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local %struct.pf_frent* @TAILQ_PREV(%struct.pf_frent*, i32, i32) #1

declare dso_local %struct.pf_frent* @TAILQ_NEXT(%struct.pf_frent*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
