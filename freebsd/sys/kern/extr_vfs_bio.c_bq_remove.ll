; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bq_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bq_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufqueue = type { i32, i32 }
%struct.buf = type { i32, i32, i32 }

@KTR_BUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"bq_remove(%p) vp %p flags %X\00", align 1
@QUEUE_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"bq_remove: buffer %p not on a queue.\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"bq_remove: Remove buffer %p from wrong queue.\00", align 1
@QUEUE_EMPTY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"queue %d underflow\00", align 1
@b_freelist = common dso_local global i32 0, align 4
@B_REMFREE = common dso_local global i32 0, align 4
@B_REUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufqueue*, %struct.buf*)* @bq_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bq_remove(%struct.bufqueue* %0, %struct.buf* %1) #0 {
  %3 = alloca %struct.bufqueue*, align 8
  %4 = alloca %struct.buf*, align 8
  store %struct.bufqueue* %0, %struct.bufqueue** %3, align 8
  store %struct.buf* %1, %struct.buf** %4, align 8
  %5 = load i32, i32* @KTR_BUF, align 4
  %6 = load %struct.buf*, %struct.buf** %4, align 8
  %7 = load %struct.buf*, %struct.buf** %4, align 8
  %8 = getelementptr inbounds %struct.buf, %struct.buf* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.buf*, %struct.buf** %4, align 8
  %11 = getelementptr inbounds %struct.buf, %struct.buf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @CTR3(i32 %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.buf* %6, i32 %9, i32 %12)
  %14 = load %struct.buf*, %struct.buf** %4, align 8
  %15 = getelementptr inbounds %struct.buf, %struct.buf* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @QUEUE_NONE, align 4
  %18 = icmp ne i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load %struct.buf*, %struct.buf** %4, align 8
  %21 = bitcast %struct.buf* %20 to i8*
  %22 = call i32 @KASSERT(i32 %19, i8* %21)
  %23 = load %struct.buf*, %struct.buf** %4, align 8
  %24 = call %struct.bufqueue* @bufqueue(%struct.buf* %23)
  %25 = load %struct.bufqueue*, %struct.bufqueue** %3, align 8
  %26 = icmp eq %struct.bufqueue* %24, %25
  %27 = zext i1 %26 to i32
  %28 = load %struct.buf*, %struct.buf** %4, align 8
  %29 = bitcast %struct.buf* %28 to i8*
  %30 = call i32 @KASSERT(i32 %27, i8* %29)
  %31 = load %struct.bufqueue*, %struct.bufqueue** %3, align 8
  %32 = call i32 @BQ_ASSERT_LOCKED(%struct.bufqueue* %31)
  %33 = load %struct.buf*, %struct.buf** %4, align 8
  %34 = getelementptr inbounds %struct.buf, %struct.buf* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @QUEUE_EMPTY, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %2
  %39 = load %struct.buf*, %struct.buf** %4, align 8
  %40 = call i32 @BUF_ASSERT_XLOCKED(%struct.buf* %39)
  br label %41

41:                                               ; preds = %38, %2
  %42 = load %struct.bufqueue*, %struct.bufqueue** %3, align 8
  %43 = getelementptr inbounds %struct.bufqueue, %struct.bufqueue* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp sge i32 %44, 1
  %46 = zext i1 %45 to i32
  %47 = load %struct.buf*, %struct.buf** %4, align 8
  %48 = getelementptr inbounds %struct.buf, %struct.buf* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = call i32 @KASSERT(i32 %46, i8* %51)
  %53 = load %struct.bufqueue*, %struct.bufqueue** %3, align 8
  %54 = getelementptr inbounds %struct.bufqueue, %struct.bufqueue* %53, i32 0, i32 1
  %55 = load %struct.buf*, %struct.buf** %4, align 8
  %56 = load i32, i32* @b_freelist, align 4
  %57 = call i32 @TAILQ_REMOVE(i32* %54, %struct.buf* %55, i32 %56)
  %58 = load %struct.bufqueue*, %struct.bufqueue** %3, align 8
  %59 = getelementptr inbounds %struct.bufqueue, %struct.bufqueue* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* @QUEUE_NONE, align 4
  %63 = load %struct.buf*, %struct.buf** %4, align 8
  %64 = getelementptr inbounds %struct.buf, %struct.buf* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @B_REMFREE, align 4
  %66 = load i32, i32* @B_REUSE, align 4
  %67 = or i32 %65, %66
  %68 = xor i32 %67, -1
  %69 = load %struct.buf*, %struct.buf** %4, align 8
  %70 = getelementptr inbounds %struct.buf, %struct.buf* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 4
  ret void
}

declare dso_local i32 @CTR3(i32, i8*, %struct.buf*, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.bufqueue* @bufqueue(%struct.buf*) #1

declare dso_local i32 @BQ_ASSERT_LOCKED(%struct.bufqueue*) #1

declare dso_local i32 @BUF_ASSERT_XLOCKED(%struct.buf*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
