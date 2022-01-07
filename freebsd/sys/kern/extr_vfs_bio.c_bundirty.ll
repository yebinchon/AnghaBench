; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bundirty.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bundirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i64, i32*, i32 }

@KTR_BUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"bundirty(%p) vp %p flags %X\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"No b_bufobj %p\00", align 1
@B_REMFREE = common dso_local global i32 0, align 4
@QUEUE_NONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"bundirty: buffer %p still on queue %d\00", align 1
@B_DELWRI = common dso_local global i32 0, align 4
@B_DEFERRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bundirty(%struct.buf* %0) #0 {
  %2 = alloca %struct.buf*, align 8
  store %struct.buf* %0, %struct.buf** %2, align 8
  %3 = load i32, i32* @KTR_BUF, align 4
  %4 = load %struct.buf*, %struct.buf** %2, align 8
  %5 = load %struct.buf*, %struct.buf** %2, align 8
  %6 = getelementptr inbounds %struct.buf, %struct.buf* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.buf*, %struct.buf** %2, align 8
  %9 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @CTR3(i32 %3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.buf* %4, i32 %7, i32 %10)
  %12 = load %struct.buf*, %struct.buf** %2, align 8
  %13 = getelementptr inbounds %struct.buf, %struct.buf* %12, i32 0, i32 2
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
  %41 = load %struct.buf*, %struct.buf** %2, align 8
  %42 = getelementptr inbounds %struct.buf, %struct.buf* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @B_DELWRI, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %32
  %48 = load i32, i32* @B_DELWRI, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.buf*, %struct.buf** %2, align 8
  %51 = getelementptr inbounds %struct.buf, %struct.buf* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.buf*, %struct.buf** %2, align 8
  %55 = call i32 @reassignbuf(%struct.buf* %54)
  %56 = load %struct.buf*, %struct.buf** %2, align 8
  %57 = call i32 @bdirtysub(%struct.buf* %56)
  br label %58

58:                                               ; preds = %47, %32
  %59 = load i32, i32* @B_DEFERRED, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.buf*, %struct.buf** %2, align 8
  %62 = getelementptr inbounds %struct.buf, %struct.buf* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 8
  ret void
}

declare dso_local i32 @CTR3(i32, i8*, %struct.buf*, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @reassignbuf(%struct.buf*) #1

declare dso_local i32 @bdirtysub(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
