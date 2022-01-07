; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bdirty.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bdirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i64, i32, i32*, i32 }

@KTR_BUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"bdirty(%p) vp %p flags %X\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"No b_bufobj %p\00", align 1
@B_REMFREE = common dso_local global i32 0, align 4
@QUEUE_NONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"bdirty: buffer %p still on queue %d\00", align 1
@B_RELBUF = common dso_local global i32 0, align 4
@BIO_WRITE = common dso_local global i32 0, align 4
@B_DELWRI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bdirty(%struct.buf* %0) #0 {
  %2 = alloca %struct.buf*, align 8
  store %struct.buf* %0, %struct.buf** %2, align 8
  %3 = load i32, i32* @KTR_BUF, align 4
  %4 = load %struct.buf*, %struct.buf** %2, align 8
  %5 = load %struct.buf*, %struct.buf** %2, align 8
  %6 = getelementptr inbounds %struct.buf, %struct.buf* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.buf*, %struct.buf** %2, align 8
  %9 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @CTR3(i32 %3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.buf* %4, i32 %7, i32 %10)
  %12 = load %struct.buf*, %struct.buf** %2, align 8
  %13 = getelementptr inbounds %struct.buf, %struct.buf* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = load %struct.buf*, %struct.buf** %2, align 8
  %18 = bitcast %struct.buf* %17 to i8*
  %19 = call i32 @KASSERT(i32 %16, i8* %18)
  %20 = load %struct.buf*, %struct.buf** %2, align 8
  %21 = getelementptr inbounds %struct.buf, %struct.buf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @B_REMFREE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %1
  %27 = load %struct.buf*, %struct.buf** %2, align 8
  %28 = getelementptr inbounds %struct.buf, %struct.buf* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @QUEUE_NONE, align 8
  %31 = icmp eq i64 %29, %30
  br label %32

32:                                               ; preds = %26, %1
  %33 = phi i1 [ true, %1 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  %35 = load %struct.buf*, %struct.buf** %2, align 8
  %36 = load %struct.buf*, %struct.buf** %2, align 8
  %37 = getelementptr inbounds %struct.buf, %struct.buf* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @KASSERT(i32 %34, i8* %39)
  %41 = load i32, i32* @B_RELBUF, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.buf*, %struct.buf** %2, align 8
  %44 = getelementptr inbounds %struct.buf, %struct.buf* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load i32, i32* @BIO_WRITE, align 4
  %48 = load %struct.buf*, %struct.buf** %2, align 8
  %49 = getelementptr inbounds %struct.buf, %struct.buf* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.buf*, %struct.buf** %2, align 8
  %51 = getelementptr inbounds %struct.buf, %struct.buf* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @B_DELWRI, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %32
  %57 = load i32, i32* @B_DELWRI, align 4
  %58 = load %struct.buf*, %struct.buf** %2, align 8
  %59 = getelementptr inbounds %struct.buf, %struct.buf* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load %struct.buf*, %struct.buf** %2, align 8
  %63 = call i32 @reassignbuf(%struct.buf* %62)
  %64 = load %struct.buf*, %struct.buf** %2, align 8
  %65 = call i32 @bdirtyadd(%struct.buf* %64)
  br label %66

66:                                               ; preds = %56, %32
  ret void
}

declare dso_local i32 @CTR3(i32, i8*, %struct.buf*, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @reassignbuf(%struct.buf*) #1

declare dso_local i32 @bdirtyadd(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
