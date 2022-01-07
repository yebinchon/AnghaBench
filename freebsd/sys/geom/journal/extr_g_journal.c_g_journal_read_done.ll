; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_read_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_read_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, i64, i64, i64, i64, i64, %struct.TYPE_2__*, %struct.bio* }
%struct.TYPE_2__ = type { i32 }

@GJ_BIO_READ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Invalid bio (%d != %d).\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Error while reading data from %s (error=%d).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_journal_read_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_journal_read_done(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.bio*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %4 = load %struct.bio*, %struct.bio** %2, align 8
  %5 = getelementptr inbounds %struct.bio, %struct.bio* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @GJ_BIO_READ, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load %struct.bio*, %struct.bio** %2, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @GJ_BIO_READ, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 @KASSERT(i32 %9, i8* %14)
  %16 = load %struct.bio*, %struct.bio** %2, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 7
  %18 = load %struct.bio*, %struct.bio** %17, align 8
  store %struct.bio* %18, %struct.bio** %3, align 8
  %19 = load %struct.bio*, %struct.bio** %3, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %20, align 8
  %23 = load %struct.bio*, %struct.bio** %2, align 8
  %24 = getelementptr inbounds %struct.bio, %struct.bio* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.bio*, %struct.bio** %3, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, %25
  store i64 %29, i64* %27, align 8
  %30 = load %struct.bio*, %struct.bio** %2, align 8
  %31 = getelementptr inbounds %struct.bio, %struct.bio* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %1
  %35 = load %struct.bio*, %struct.bio** %3, align 8
  %36 = getelementptr inbounds %struct.bio, %struct.bio* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.bio*, %struct.bio** %2, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.bio*, %struct.bio** %3, align 8
  %44 = getelementptr inbounds %struct.bio, %struct.bio* %43, i32 0, i32 4
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %39, %34
  %46 = load %struct.bio*, %struct.bio** %2, align 8
  %47 = getelementptr inbounds %struct.bio, %struct.bio* %46, i32 0, i32 6
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.bio*, %struct.bio** %2, align 8
  %52 = getelementptr inbounds %struct.bio, %struct.bio* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @GJ_DEBUG(i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %50, i64 %53)
  br label %55

55:                                               ; preds = %45, %1
  %56 = load %struct.bio*, %struct.bio** %2, align 8
  %57 = call i32 @g_destroy_bio(%struct.bio* %56)
  %58 = load %struct.bio*, %struct.bio** %3, align 8
  %59 = getelementptr inbounds %struct.bio, %struct.bio* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.bio*, %struct.bio** %3, align 8
  %62 = getelementptr inbounds %struct.bio, %struct.bio* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %55
  %66 = load %struct.bio*, %struct.bio** %3, align 8
  %67 = getelementptr inbounds %struct.bio, %struct.bio* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.bio*, %struct.bio** %3, align 8
  %70 = getelementptr inbounds %struct.bio, %struct.bio* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %68, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load %struct.bio*, %struct.bio** %3, align 8
  %75 = call i32 @g_io_deliver(%struct.bio* %74, i32 0)
  br label %76

76:                                               ; preds = %73, %65, %55
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @GJ_DEBUG(i32, i8*, i32, i64) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
