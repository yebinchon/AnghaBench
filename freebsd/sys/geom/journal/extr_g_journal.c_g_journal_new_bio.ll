; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_new_bio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_new_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i8*, i32*, i32, i32, i8*, i8* }

@BIO_WRITE = common dso_local global i32 0, align 4
@g_journal_std_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio* (i8*, i8*, i8*, i32*, i32)* @g_journal_new_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio* @g_journal_new_bio(i8* %0, i8* %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.bio*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = call %struct.bio* (...) @g_alloc_bio()
  store %struct.bio* %12, %struct.bio** %11, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.bio*, %struct.bio** %11, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 5
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load %struct.bio*, %struct.bio** %11, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 4
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = ptrtoint i8* %19 to i64
  %22 = ptrtoint i8* %20 to i64
  %23 = sub i64 %21, %22
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.bio*, %struct.bio** %11, align 8
  %26 = getelementptr inbounds %struct.bio, %struct.bio* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* @BIO_WRITE, align 4
  %28 = load %struct.bio*, %struct.bio** %11, align 8
  %29 = getelementptr inbounds %struct.bio, %struct.bio* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @g_journal_std_done, align 4
  %31 = load %struct.bio*, %struct.bio** %11, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %5
  %36 = load %struct.bio*, %struct.bio** %11, align 8
  %37 = getelementptr inbounds %struct.bio, %struct.bio* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  br label %60

38:                                               ; preds = %5
  %39 = load %struct.bio*, %struct.bio** %11, align 8
  %40 = getelementptr inbounds %struct.bio, %struct.bio* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32* @gj_malloc(i8* %41, i32 %42)
  %44 = load %struct.bio*, %struct.bio** %11, align 8
  %45 = getelementptr inbounds %struct.bio, %struct.bio* %44, i32 0, i32 1
  store i32* %43, i32** %45, align 8
  %46 = load %struct.bio*, %struct.bio** %11, align 8
  %47 = getelementptr inbounds %struct.bio, %struct.bio* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %38
  %51 = load i32*, i32** %9, align 8
  %52 = load %struct.bio*, %struct.bio** %11, align 8
  %53 = getelementptr inbounds %struct.bio, %struct.bio* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.bio*, %struct.bio** %11, align 8
  %56 = getelementptr inbounds %struct.bio, %struct.bio* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @bcopy(i32* %51, i32* %54, i8* %57)
  br label %59

59:                                               ; preds = %50, %38
  br label %60

60:                                               ; preds = %59, %35
  %61 = load %struct.bio*, %struct.bio** %11, align 8
  ret %struct.bio* %61
}

declare dso_local %struct.bio* @g_alloc_bio(...) #1

declare dso_local i32* @gj_malloc(i8*, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
