; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/keyserv/extr_crypt_server.c_prepare_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/keyserv/extr_crypt_server.c_prepare_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.TYPE_3__*)* @prepare_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_key(i8* %0, i32 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i16, align 2
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  store i8* %14, i8** %9, align 8
  store i16 0, i16* %10, align 2
  br label %15

15:                                               ; preds = %26, %3
  %16 = load i16, i16* %10, align 2
  %17 = sext i16 %16 to i32
  %18 = icmp slt i32 %17, 256
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = load i16, i16* %10, align 2
  %21 = trunc i16 %20 to i8
  %22 = load i8*, i8** %9, align 8
  %23 = load i16, i16* %10, align 2
  %24 = sext i16 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  store i8 %21, i8* %25, align 1
  br label %26

26:                                               ; preds = %19
  %27 = load i16, i16* %10, align 2
  %28 = add i16 %27, 1
  store i16 %28, i16* %10, align 2
  br label %15

29:                                               ; preds = %15
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  store i8 0, i8* %7, align 1
  store i8 0, i8* %8, align 1
  store i16 0, i16* %10, align 2
  br label %34

34:                                               ; preds = %72, %29
  %35 = load i16, i16* %10, align 2
  %36 = sext i16 %35 to i32
  %37 = icmp slt i32 %36, 256
  br i1 %37, label %38, label %75

38:                                               ; preds = %34
  %39 = load i8*, i8** %4, align 8
  %40 = load i8, i8* %7, align 1
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = load i8*, i8** %9, align 8
  %46 = load i16, i16* %10, align 2
  %47 = sext i16 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = add nsw i32 %44, %50
  %52 = load i8, i8* %8, align 1
  %53 = zext i8 %52 to i32
  %54 = add nsw i32 %51, %53
  %55 = srem i32 %54, 256
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %8, align 1
  %57 = load i8*, i8** %9, align 8
  %58 = load i16, i16* %10, align 2
  %59 = sext i16 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8*, i8** %9, align 8
  %62 = load i8, i8* %8, align 1
  %63 = zext i8 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = call i32 @swap_byte(i8* %60, i8* %64)
  %66 = load i8, i8* %7, align 1
  %67 = zext i8 %66 to i32
  %68 = add nsw i32 %67, 1
  %69 = load i32, i32* %5, align 4
  %70 = srem i32 %68, %69
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %7, align 1
  br label %72

72:                                               ; preds = %38
  %73 = load i16, i16* %10, align 2
  %74 = add i16 %73, 1
  store i16 %74, i16* %10, align 2
  br label %34

75:                                               ; preds = %34
  ret void
}

declare dso_local i32 @swap_byte(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
