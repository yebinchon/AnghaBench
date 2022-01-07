; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_free_exp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_free_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exportlist = type { %struct.grouplist*, i32, i64, i64, %struct.TYPE_2__* }
%struct.grouplist = type { %struct.grouplist* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exportlist*)* @free_exp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_exp(%struct.exportlist* %0) #0 {
  %2 = alloca %struct.exportlist*, align 8
  %3 = alloca %struct.grouplist*, align 8
  %4 = alloca %struct.grouplist*, align 8
  store %struct.exportlist* %0, %struct.exportlist** %2, align 8
  %5 = load %struct.exportlist*, %struct.exportlist** %2, align 8
  %6 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %5, i32 0, i32 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load %struct.exportlist*, %struct.exportlist** %2, align 8
  %11 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %10, i32 0, i32 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @free_host(i32 %14)
  %16 = load %struct.exportlist*, %struct.exportlist** %2, align 8
  %17 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %16, i32 0, i32 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = ptrtoint %struct.TYPE_2__* %18 to i64
  %20 = call i32 @free(i64 %19)
  br label %21

21:                                               ; preds = %9, %1
  %22 = load %struct.exportlist*, %struct.exportlist** %2, align 8
  %23 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.exportlist*, %struct.exportlist** %2, align 8
  %28 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @free(i64 %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.exportlist*, %struct.exportlist** %2, align 8
  %33 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.exportlist*, %struct.exportlist** %2, align 8
  %38 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @free(i64 %39)
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.exportlist*, %struct.exportlist** %2, align 8
  %43 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @free_dir(i32 %44)
  %46 = load %struct.exportlist*, %struct.exportlist** %2, align 8
  %47 = getelementptr inbounds %struct.exportlist, %struct.exportlist* %46, i32 0, i32 0
  %48 = load %struct.grouplist*, %struct.grouplist** %47, align 8
  store %struct.grouplist* %48, %struct.grouplist** %3, align 8
  br label %49

49:                                               ; preds = %52, %41
  %50 = load %struct.grouplist*, %struct.grouplist** %3, align 8
  %51 = icmp ne %struct.grouplist* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load %struct.grouplist*, %struct.grouplist** %3, align 8
  store %struct.grouplist* %53, %struct.grouplist** %4, align 8
  %54 = load %struct.grouplist*, %struct.grouplist** %3, align 8
  %55 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %54, i32 0, i32 0
  %56 = load %struct.grouplist*, %struct.grouplist** %55, align 8
  store %struct.grouplist* %56, %struct.grouplist** %3, align 8
  %57 = load %struct.grouplist*, %struct.grouplist** %4, align 8
  %58 = call i32 @free_grp(%struct.grouplist* %57)
  br label %49

59:                                               ; preds = %49
  %60 = load %struct.exportlist*, %struct.exportlist** %2, align 8
  %61 = ptrtoint %struct.exportlist* %60 to i64
  %62 = call i32 @free(i64 %61)
  ret void
}

declare dso_local i32 @free_host(i32) #1

declare dso_local i32 @free(i64) #1

declare dso_local i32 @free_dir(i32) #1

declare dso_local i32 @free_grp(%struct.grouplist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
