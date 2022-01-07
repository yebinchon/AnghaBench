; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bdata2bio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bdata2bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32, i64, i32* }
%struct.bio = type { i32, i32, i32*, i32, i64, i32 }

@unmapped_buf_allowed = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"unmapped\00", align 1
@unmapped_buf = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@BIO_UNMAPPED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Buffer %p too short: %d %lld %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bdata2bio(%struct.buf* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.buf*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.buf* %0, %struct.buf** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %5 = load %struct.buf*, %struct.buf** %3, align 8
  %6 = call i32 @buf_mapped(%struct.buf* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %66, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @unmapped_buf_allowed, align 4
  %10 = call i32 @KASSERT(i32 %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.buf*, %struct.buf** %3, align 8
  %12 = getelementptr inbounds %struct.buf, %struct.buf* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.bio*, %struct.bio** %4, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 2
  store i32* %13, i32** %15, align 8
  %16 = load %struct.buf*, %struct.buf** %3, align 8
  %17 = getelementptr inbounds %struct.buf, %struct.buf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.bio*, %struct.bio** %4, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @unmapped_buf, align 4
  %22 = load %struct.bio*, %struct.bio** %4, align 8
  %23 = getelementptr inbounds %struct.bio, %struct.bio* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct.buf*, %struct.buf** %3, align 8
  %25 = getelementptr inbounds %struct.buf, %struct.buf* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @PAGE_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load %struct.bio*, %struct.bio** %4, align 8
  %31 = getelementptr inbounds %struct.bio, %struct.bio* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @BIO_UNMAPPED, align 4
  %33 = load %struct.bio*, %struct.bio** %4, align 8
  %34 = getelementptr inbounds %struct.bio, %struct.bio* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.bio*, %struct.bio** %4, align 8
  %38 = getelementptr inbounds %struct.bio, %struct.bio* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = load %struct.bio*, %struct.bio** %4, align 8
  %42 = getelementptr inbounds %struct.bio, %struct.bio* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = call i32 @round_page(i64 %44)
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = sdiv i32 %45, %46
  %48 = load %struct.buf*, %struct.buf** %3, align 8
  %49 = getelementptr inbounds %struct.buf, %struct.buf* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %47, %50
  %52 = zext i1 %51 to i32
  %53 = load %struct.buf*, %struct.buf** %3, align 8
  %54 = load %struct.bio*, %struct.bio** %4, align 8
  %55 = getelementptr inbounds %struct.bio, %struct.bio* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.bio*, %struct.bio** %4, align 8
  %58 = getelementptr inbounds %struct.bio, %struct.bio* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.bio*, %struct.bio** %4, align 8
  %61 = getelementptr inbounds %struct.bio, %struct.bio* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 @KASSERT(i32 %52, i8* %64)
  br label %74

66:                                               ; preds = %2
  %67 = load %struct.buf*, %struct.buf** %3, align 8
  %68 = getelementptr inbounds %struct.buf, %struct.buf* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.bio*, %struct.bio** %4, align 8
  %71 = getelementptr inbounds %struct.bio, %struct.bio* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  %72 = load %struct.bio*, %struct.bio** %4, align 8
  %73 = getelementptr inbounds %struct.bio, %struct.bio* %72, i32 0, i32 2
  store i32* null, i32** %73, align 8
  br label %74

74:                                               ; preds = %66, %8
  ret void
}

declare dso_local i32 @buf_mapped(%struct.buf*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @round_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
