; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bremfree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bremfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i64, i32 }

@KTR_BUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"bremfree(%p) vp %p flags %X\00", align 1
@B_REMFREE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"bremfree: buffer %p already marked for delayed removal.\00", align 1
@QUEUE_NONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"bremfree: buffer %p not on a queue.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bremfree(%struct.buf* %0) #0 {
  %2 = alloca %struct.buf*, align 8
  store %struct.buf* %0, %struct.buf** %2, align 8
  %3 = load i32, i32* @KTR_BUF, align 4
  %4 = load %struct.buf*, %struct.buf** %2, align 8
  %5 = load %struct.buf*, %struct.buf** %2, align 8
  %6 = getelementptr inbounds %struct.buf, %struct.buf* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.buf*, %struct.buf** %2, align 8
  %9 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @CTR3(i32 %3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.buf* %4, i32 %7, i32 %10)
  %12 = load %struct.buf*, %struct.buf** %2, align 8
  %13 = getelementptr inbounds %struct.buf, %struct.buf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @B_REMFREE, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = load %struct.buf*, %struct.buf** %2, align 8
  %20 = bitcast %struct.buf* %19 to i8*
  %21 = call i32 @KASSERT(i32 %18, i8* %20)
  %22 = load %struct.buf*, %struct.buf** %2, align 8
  %23 = getelementptr inbounds %struct.buf, %struct.buf* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @QUEUE_NONE, align 8
  %26 = icmp ne i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load %struct.buf*, %struct.buf** %2, align 8
  %29 = bitcast %struct.buf* %28 to i8*
  %30 = call i32 @KASSERT(i32 %27, i8* %29)
  %31 = load %struct.buf*, %struct.buf** %2, align 8
  %32 = call i32 @BUF_ASSERT_XLOCKED(%struct.buf* %31)
  %33 = load i32, i32* @B_REMFREE, align 4
  %34 = load %struct.buf*, %struct.buf** %2, align 8
  %35 = getelementptr inbounds %struct.buf, %struct.buf* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  ret void
}

declare dso_local i32 @CTR3(i32, i8*, %struct.buf*, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @BUF_ASSERT_XLOCKED(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
