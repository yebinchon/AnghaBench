; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sglist.c_sglist_append_mbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sglist.c_sglist_append_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sglist = type { i64 }
%struct.mbuf = type { i64, i32, i32, %struct.mbuf* }
%struct.sgsave = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@M_NOMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sglist_append_mbuf(%struct.sglist* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sglist*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.sgsave, align 4
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  store %struct.sglist* %0, %struct.sglist** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %9 = load %struct.sglist*, %struct.sglist** %4, align 8
  %10 = getelementptr inbounds %struct.sglist, %struct.sglist* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %65

15:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  %16 = load %struct.sglist*, %struct.sglist** %4, align 8
  %17 = getelementptr inbounds %struct.sgsave, %struct.sgsave* %6, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @SGLIST_SAVE(%struct.sglist* %16, i32 %18)
  %20 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %20, %struct.mbuf** %7, align 8
  br label %21

21:                                               ; preds = %60, %15
  %22 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %23 = icmp ne %struct.mbuf* %22, null
  br i1 %23, label %24, label %64

24:                                               ; preds = %21
  %25 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %26 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %59

29:                                               ; preds = %24
  %30 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %31 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @M_NOMAP, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load %struct.sglist*, %struct.sglist** %4, align 8
  %38 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %39 = call i32 @sglist_append_mb_ext_pgs(%struct.sglist* %37, %struct.mbuf* %38)
  store i32 %39, i32* %8, align 4
  br label %49

40:                                               ; preds = %29
  %41 = load %struct.sglist*, %struct.sglist** %4, align 8
  %42 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %43 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %46 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @sglist_append(%struct.sglist* %41, i32 %44, i64 %47)
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %40, %36
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load %struct.sglist*, %struct.sglist** %4, align 8
  %54 = getelementptr inbounds %struct.sgsave, %struct.sgsave* %6, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @SGLIST_RESTORE(%struct.sglist* %53, i32 %55)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %65

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58, %24
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %62 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %61, i32 0, i32 3
  %63 = load %struct.mbuf*, %struct.mbuf** %62, align 8
  store %struct.mbuf* %63, %struct.mbuf** %7, align 8
  br label %21

64:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %52, %13
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @SGLIST_SAVE(%struct.sglist*, i32) #1

declare dso_local i32 @sglist_append_mb_ext_pgs(%struct.sglist*, %struct.mbuf*) #1

declare dso_local i32 @sglist_append(%struct.sglist*, i32, i64) #1

declare dso_local i32 @SGLIST_RESTORE(%struct.sglist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
