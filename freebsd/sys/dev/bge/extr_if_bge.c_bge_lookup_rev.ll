; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_lookup_rev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_lookup_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_revision = type { i64, i32* }

@bge_revisions = common dso_local global %struct.bge_revision* null, align 8
@bge_majorrevs = common dso_local global %struct.bge_revision* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bge_revision* (i64)* @bge_lookup_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bge_revision* @bge_lookup_rev(i64 %0) #0 {
  %2 = alloca %struct.bge_revision*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.bge_revision*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load %struct.bge_revision*, %struct.bge_revision** @bge_revisions, align 8
  store %struct.bge_revision* %5, %struct.bge_revision** %4, align 8
  br label %6

6:                                                ; preds = %20, %1
  %7 = load %struct.bge_revision*, %struct.bge_revision** %4, align 8
  %8 = getelementptr inbounds %struct.bge_revision, %struct.bge_revision* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %6
  %12 = load %struct.bge_revision*, %struct.bge_revision** %4, align 8
  %13 = getelementptr inbounds %struct.bge_revision, %struct.bge_revision* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load %struct.bge_revision*, %struct.bge_revision** %4, align 8
  store %struct.bge_revision* %18, %struct.bge_revision** %2, align 8
  br label %44

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.bge_revision*, %struct.bge_revision** %4, align 8
  %22 = getelementptr inbounds %struct.bge_revision, %struct.bge_revision* %21, i32 1
  store %struct.bge_revision* %22, %struct.bge_revision** %4, align 8
  br label %6

23:                                               ; preds = %6
  %24 = load %struct.bge_revision*, %struct.bge_revision** @bge_majorrevs, align 8
  store %struct.bge_revision* %24, %struct.bge_revision** %4, align 8
  br label %25

25:                                               ; preds = %40, %23
  %26 = load %struct.bge_revision*, %struct.bge_revision** %4, align 8
  %27 = getelementptr inbounds %struct.bge_revision, %struct.bge_revision* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load %struct.bge_revision*, %struct.bge_revision** %4, align 8
  %32 = getelementptr inbounds %struct.bge_revision, %struct.bge_revision* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %3, align 8
  %35 = call i64 @BGE_ASICREV(i64 %34)
  %36 = icmp eq i64 %33, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load %struct.bge_revision*, %struct.bge_revision** %4, align 8
  store %struct.bge_revision* %38, %struct.bge_revision** %2, align 8
  br label %44

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.bge_revision*, %struct.bge_revision** %4, align 8
  %42 = getelementptr inbounds %struct.bge_revision, %struct.bge_revision* %41, i32 1
  store %struct.bge_revision* %42, %struct.bge_revision** %4, align 8
  br label %25

43:                                               ; preds = %25
  store %struct.bge_revision* null, %struct.bge_revision** %2, align 8
  br label %44

44:                                               ; preds = %43, %37, %17
  %45 = load %struct.bge_revision*, %struct.bge_revision** %2, align 8
  ret %struct.bge_revision* %45
}

declare dso_local i64 @BGE_ASICREV(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
