; ModuleID = '/home/carl/AnghaBench/git/extr_archive-zip.c_zlib_deflate_raw.c'
source_filename = "/home/carl/AnghaBench/git/extr_archive-zip.c_zlib_deflate_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i8*, i8* }

@Z_FINISH = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i32, i64*)* @zlib_deflate_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @zlib_deflate_raw(i8* %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_6__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @git_deflate_init_raw(%struct.TYPE_6__* %10, i32 %14)
  %16 = load i64, i64* %7, align 8
  %17 = call i64 @git_deflate_bound(%struct.TYPE_6__* %10, i64 %16)
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = call i8* @xmalloc(i64 %18)
  store i8* %19, i8** %12, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 4
  store i8* %20, i8** %21, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  store i8* %24, i8** %25, align 8
  %26 = load i64, i64* %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store i64 %26, i64* %27, align 8
  br label %28

28:                                               ; preds = %31, %4
  %29 = load i32, i32* @Z_FINISH, align 4
  %30 = call i32 @git_deflate(%struct.TYPE_6__* %10, i32 %29)
  store i32 %30, i32* %13, align 4
  br label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @Z_OK, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %28, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* @Z_STREAM_END, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i8*, i8** %12, align 8
  %41 = call i32 @free(i8* %40)
  store i8* null, i8** %5, align 8
  br label %48

42:                                               ; preds = %35
  %43 = call i32 @git_deflate_end(%struct.TYPE_6__* %10)
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %9, align 8
  store i64 %45, i64* %46, align 8
  %47 = load i8*, i8** %12, align 8
  store i8* %47, i8** %5, align 8
  br label %48

48:                                               ; preds = %42, %39
  %49 = load i8*, i8** %5, align 8
  ret i8* %49
}

declare dso_local i32 @git_deflate_init_raw(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @git_deflate_bound(%struct.TYPE_6__*, i64) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @git_deflate(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @git_deflate_end(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
