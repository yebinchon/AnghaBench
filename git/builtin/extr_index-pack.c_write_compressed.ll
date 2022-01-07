; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_index-pack.c_write_compressed.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_index-pack.c_write_compressed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashfile = type { i32 }
%struct.TYPE_5__ = type { i32, i8*, i32, i32, i8* }

@zlib_compression_level = common dso_local global i32 0, align 4
@Z_FINISH = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"unable to deflate appended object (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hashfile*, i8*, i32)* @write_compressed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_compressed(%struct.hashfile* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.hashfile*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca i32, align 4
  %9 = alloca [4096 x i8], align 16
  store %struct.hashfile* %0, %struct.hashfile** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @zlib_compression_level, align 4
  %11 = call i32 @git_deflate_init(%struct.TYPE_5__* %7, i32 %10)
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 4
  store i8* %12, i8** %13, align 8
  %14 = load i32, i32* %6, align 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  br label %16

16:                                               ; preds = %30, %3
  %17 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i8* %17, i8** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  store i32 4096, i32* %19, align 8
  %20 = load i32, i32* @Z_FINISH, align 4
  %21 = call i32 @git_deflate(%struct.TYPE_5__* %7, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %23 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = sub i64 4096, %26
  %28 = trunc i64 %27 to i32
  %29 = call i32 @hashwrite(%struct.hashfile* %22, i8* %23, i32 %28)
  br label %30

30:                                               ; preds = %16
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @Z_OK, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %16, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @Z_STREAM_END, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @die(i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %34
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %6, align 4
  %45 = call i32 @git_deflate_end(%struct.TYPE_5__* %7)
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @git_deflate_init(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @git_deflate(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @hashwrite(%struct.hashfile*, i8*, i32) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @git_deflate_end(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
