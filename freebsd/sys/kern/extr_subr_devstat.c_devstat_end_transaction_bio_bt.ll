; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_devstat.c_devstat_end_transaction_bio_bt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_devstat.c_devstat_end_transaction_bio_bt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devstat = type { i32 }
%struct.bio = type { i64, i32, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.bintime = type { i32 }

@BIO_DELETE = common dso_local global i64 0, align 8
@DEVSTAT_FREE = common dso_local global i32 0, align 4
@BIO_READ = common dso_local global i64 0, align 8
@BIO_ZONE = common dso_local global i64 0, align 8
@DISK_ZONE_REPORT_ZONES = common dso_local global i64 0, align 8
@DEVSTAT_READ = common dso_local global i32 0, align 4
@BIO_WRITE = common dso_local global i64 0, align 8
@DEVSTAT_WRITE = common dso_local global i32 0, align 4
@DEVSTAT_NO_DATA = common dso_local global i32 0, align 4
@DEVSTAT_TAG_SIMPLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devstat_end_transaction_bio_bt(%struct.devstat* %0, %struct.bio* %1, %struct.bintime* %2) #0 {
  %4 = alloca %struct.devstat*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.bintime*, align 8
  %7 = alloca i32, align 4
  store %struct.devstat* %0, %struct.devstat** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store %struct.bintime* %2, %struct.bintime** %6, align 8
  %8 = load %struct.devstat*, %struct.devstat** %4, align 8
  %9 = icmp eq %struct.devstat* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %68

11:                                               ; preds = %3
  %12 = load %struct.bio*, %struct.bio** %5, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @BIO_DELETE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @DEVSTAT_FREE, align 4
  store i32 %18, i32* %7, align 4
  br label %52

19:                                               ; preds = %11
  %20 = load %struct.bio*, %struct.bio** %5, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @BIO_READ, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %38, label %25

25:                                               ; preds = %19
  %26 = load %struct.bio*, %struct.bio** %5, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @BIO_ZONE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.bio*, %struct.bio** %5, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DISK_ZONE_REPORT_ZONES, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %31, %19
  %39 = load i32, i32* @DEVSTAT_READ, align 4
  store i32 %39, i32* %7, align 4
  br label %51

40:                                               ; preds = %31, %25
  %41 = load %struct.bio*, %struct.bio** %5, align 8
  %42 = getelementptr inbounds %struct.bio, %struct.bio* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @BIO_WRITE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @DEVSTAT_WRITE, align 4
  store i32 %47, i32* %7, align 4
  br label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @DEVSTAT_NO_DATA, align 4
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %48, %46
  br label %51

51:                                               ; preds = %50, %38
  br label %52

52:                                               ; preds = %51, %17
  %53 = load %struct.devstat*, %struct.devstat** %4, align 8
  %54 = load %struct.bio*, %struct.bio** %5, align 8
  %55 = getelementptr inbounds %struct.bio, %struct.bio* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.bio*, %struct.bio** %5, align 8
  %58 = getelementptr inbounds %struct.bio, %struct.bio* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %56, %59
  %61 = load i32, i32* @DEVSTAT_TAG_SIMPLE, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.bintime*, %struct.bintime** %6, align 8
  %64 = load %struct.bio*, %struct.bio** %5, align 8
  %65 = getelementptr inbounds %struct.bio, %struct.bio* %64, i32 0, i32 1
  %66 = call i32 @devstat_end_transaction(%struct.devstat* %53, i64 %60, i32 %61, i32 %62, %struct.bintime* %63, i32* %65)
  %67 = call i32 (...) @DTRACE_DEVSTAT_BIO_DONE()
  br label %68

68:                                               ; preds = %52, %10
  ret void
}

declare dso_local i32 @devstat_end_transaction(%struct.devstat*, i64, i32, i32, %struct.bintime*, i32*) #1

declare dso_local i32 @DTRACE_DEVSTAT_BIO_DONE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
