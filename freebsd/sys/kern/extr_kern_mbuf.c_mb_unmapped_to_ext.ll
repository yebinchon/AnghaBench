; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mbuf.c_mb_unmapped_to_ext.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mbuf.c_mb_unmapped_to_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, %struct.mbuf* }

@M_NOMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @mb_unmapped_to_ext(%struct.mbuf* %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.mbuf*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  store %struct.mbuf* null, %struct.mbuf** %6, align 8
  store %struct.mbuf* null, %struct.mbuf** %6, align 8
  %7 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  store %struct.mbuf* %7, %struct.mbuf** %4, align 8
  br label %8

8:                                                ; preds = %59, %1
  %9 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %10 = icmp ne %struct.mbuf* %9, null
  br i1 %10, label %11, label %61

11:                                               ; preds = %8
  %12 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %13 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %12, i32 0, i32 1
  %14 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  store %struct.mbuf* %14, %struct.mbuf** %5, align 8
  %15 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %16 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @M_NOMAP, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %11
  %22 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %23 = icmp ne %struct.mbuf* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %26 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %25, i32 0, i32 1
  store %struct.mbuf* null, %struct.mbuf** %26, align 8
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %29 = call %struct.mbuf* @_mb_unmapped_to_ext(%struct.mbuf* %28)
  store %struct.mbuf* %29, %struct.mbuf** %4, align 8
  %30 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %31 = icmp eq %struct.mbuf* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %34 = call i32 @m_freem(%struct.mbuf* %33)
  %35 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %36 = call i32 @m_freem(%struct.mbuf* %35)
  store %struct.mbuf* null, %struct.mbuf** %2, align 8
  br label %63

37:                                               ; preds = %27
  %38 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %39 = icmp eq %struct.mbuf* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  store %struct.mbuf* %41, %struct.mbuf** %3, align 8
  br label %46

42:                                               ; preds = %37
  %43 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %44 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %45 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %44, i32 0, i32 1
  store %struct.mbuf* %43, %struct.mbuf** %45, align 8
  br label %46

46:                                               ; preds = %42, %40
  %47 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %48 = call %struct.mbuf* @m_last(%struct.mbuf* %47)
  store %struct.mbuf* %48, %struct.mbuf** %6, align 8
  br label %58

49:                                               ; preds = %11
  %50 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %51 = icmp ne %struct.mbuf* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %54 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %55 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %54, i32 0, i32 1
  store %struct.mbuf* %53, %struct.mbuf** %55, align 8
  br label %56

56:                                               ; preds = %52, %49
  %57 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  store %struct.mbuf* %57, %struct.mbuf** %6, align 8
  br label %58

58:                                               ; preds = %56, %46
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %60, %struct.mbuf** %4, align 8
  br label %8

61:                                               ; preds = %8
  %62 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  store %struct.mbuf* %62, %struct.mbuf** %2, align 8
  br label %63

63:                                               ; preds = %61, %32
  %64 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  ret %struct.mbuf* %64
}

declare dso_local %struct.mbuf* @_mb_unmapped_to_ext(%struct.mbuf*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local %struct.mbuf* @m_last(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
