; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_conv.c_mbnambuf_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_conv.c_mbnambuf_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbnambuf = type { i32, i32* }
%struct.dirent = type { i8*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mbnambuf_flush(%struct.mbnambuf* %0, %struct.dirent* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mbnambuf*, align 8
  %5 = alloca %struct.dirent*, align 8
  store %struct.mbnambuf* %0, %struct.mbnambuf** %4, align 8
  store %struct.dirent* %1, %struct.dirent** %5, align 8
  %6 = load %struct.mbnambuf*, %struct.mbnambuf** %4, align 8
  %7 = getelementptr inbounds %struct.mbnambuf, %struct.mbnambuf* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = icmp ugt i64 %9, 7
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.mbnambuf*, %struct.mbnambuf** %4, align 8
  %13 = call i32 @mbnambuf_init(%struct.mbnambuf* %12)
  store i8* null, i8** %3, align 8
  br label %45

14:                                               ; preds = %2
  %15 = load %struct.dirent*, %struct.dirent** %5, align 8
  %16 = getelementptr inbounds %struct.dirent, %struct.dirent* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.mbnambuf*, %struct.mbnambuf** %4, align 8
  %19 = getelementptr inbounds %struct.mbnambuf, %struct.mbnambuf* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load %struct.mbnambuf*, %struct.mbnambuf** %4, align 8
  %23 = getelementptr inbounds %struct.mbnambuf, %struct.mbnambuf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @memcpy(i8* %17, i32* %21, i32 %24)
  %26 = load %struct.dirent*, %struct.dirent** %5, align 8
  %27 = getelementptr inbounds %struct.dirent, %struct.dirent* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.mbnambuf*, %struct.mbnambuf** %4, align 8
  %30 = getelementptr inbounds %struct.mbnambuf, %struct.mbnambuf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %28, i64 %32
  store i8 0, i8* %33, align 1
  %34 = load %struct.mbnambuf*, %struct.mbnambuf** %4, align 8
  %35 = getelementptr inbounds %struct.mbnambuf, %struct.mbnambuf* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = load %struct.dirent*, %struct.dirent** %5, align 8
  %39 = getelementptr inbounds %struct.dirent, %struct.dirent* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load %struct.mbnambuf*, %struct.mbnambuf** %4, align 8
  %41 = call i32 @mbnambuf_init(%struct.mbnambuf* %40)
  %42 = load %struct.dirent*, %struct.dirent** %5, align 8
  %43 = getelementptr inbounds %struct.dirent, %struct.dirent* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %3, align 8
  br label %45

45:                                               ; preds = %14, %11
  %46 = load i8*, i8** %3, align 8
  ret i8* %46
}

declare dso_local i32 @mbnambuf_init(%struct.mbnambuf*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
