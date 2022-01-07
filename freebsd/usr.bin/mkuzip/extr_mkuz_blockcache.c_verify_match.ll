; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkuzip/extr_mkuz_blockcache.c_verify_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkuzip/extr_mkuz_blockcache.c_verify_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mkuz_blk = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mkuz_blkcache_itm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.mkuz_blk*, %struct.mkuz_blkcache_itm*)* @verify_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_match(i32 %0, %struct.mkuz_blk* %1, %struct.mkuz_blkcache_itm* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mkuz_blk*, align 8
  %6 = alloca %struct.mkuz_blkcache_itm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.mkuz_blk* %1, %struct.mkuz_blk** %5, align 8
  store %struct.mkuz_blkcache_itm* %2, %struct.mkuz_blkcache_itm** %6, align 8
  store i32 -1, i32* %9, align 4
  %10 = load %struct.mkuz_blk*, %struct.mkuz_blk** %5, align 8
  %11 = getelementptr inbounds %struct.mkuz_blk, %struct.mkuz_blk* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @malloc(i32 %13)
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %71

18:                                               ; preds = %3
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.mkuz_blkcache_itm*, %struct.mkuz_blkcache_itm** %6, align 8
  %21 = getelementptr inbounds %struct.mkuz_blkcache_itm, %struct.mkuz_blkcache_itm* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SEEK_SET, align 4
  %25 = call i64 @lseek(i32 %19, i32 %23, i32 %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %68

28:                                               ; preds = %18
  %29 = load i32, i32* %4, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.mkuz_blk*, %struct.mkuz_blk** %5, align 8
  %32 = getelementptr inbounds %struct.mkuz_blk, %struct.mkuz_blk* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @read(i32 %29, i8* %30, i32 %34)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %28
  %39 = load i64, i64* %8, align 8
  %40 = trunc i64 %39 to i32
  %41 = load %struct.mkuz_blk*, %struct.mkuz_blk** %5, align 8
  %42 = getelementptr inbounds %struct.mkuz_blk, %struct.mkuz_blk* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %40, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38, %28
  br label %60

47:                                               ; preds = %38
  %48 = load %struct.mkuz_blk*, %struct.mkuz_blk** %5, align 8
  %49 = getelementptr inbounds %struct.mkuz_blk, %struct.mkuz_blk* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %7, align 8
  %52 = load %struct.mkuz_blk*, %struct.mkuz_blk** %5, align 8
  %53 = getelementptr inbounds %struct.mkuz_blk, %struct.mkuz_blk* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @memcmp(i32 %50, i8* %51, i32 %55)
  %57 = icmp eq i64 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 1, i32 0
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %47, %46
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.mkuz_blk*, %struct.mkuz_blk** %5, align 8
  %63 = getelementptr inbounds %struct.mkuz_blk, %struct.mkuz_blk* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SEEK_SET, align 4
  %67 = call i64 @lseek(i32 %61, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %60, %27
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @free(i8* %69)
  br label %71

71:                                               ; preds = %68, %17
  %72 = load i32, i32* %9, align 4
  ret i32 %72
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
