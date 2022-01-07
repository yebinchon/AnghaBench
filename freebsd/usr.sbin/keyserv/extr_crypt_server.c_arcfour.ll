; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/keyserv/extr_crypt_server.c_arcfour.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/keyserv/extr_crypt_server.c_arcfour.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i8, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.TYPE_3__*)* @arcfour to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcfour(i8* %0, i32 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i16, align 2
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i8, i8* %13, align 8
  store i8 %14, i8* %7, align 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %8, align 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  store i8* %21, i8** %9, align 8
  store i16 0, i16* %11, align 2
  br label %22

22:                                               ; preds = %82, %3
  %23 = load i16, i16* %11, align 2
  %24 = sext i16 %23 to i32
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %85

27:                                               ; preds = %22
  %28 = load i8, i8* %7, align 1
  %29 = zext i8 %28 to i32
  %30 = add nsw i32 %29, 1
  %31 = srem i32 %30, 256
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %7, align 1
  %33 = load i8*, i8** %9, align 8
  %34 = load i8, i8* %7, align 1
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* %8, align 1
  %40 = zext i8 %39 to i32
  %41 = add nsw i32 %38, %40
  %42 = srem i32 %41, 256
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %8, align 1
  %44 = load i8*, i8** %9, align 8
  %45 = load i8, i8* %7, align 1
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8*, i8** %9, align 8
  %49 = load i8, i8* %8, align 1
  %50 = zext i8 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = call i32 @swap_byte(i8* %47, i8* %51)
  %53 = load i8*, i8** %9, align 8
  %54 = load i8, i8* %7, align 1
  %55 = zext i8 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = load i8*, i8** %9, align 8
  %60 = load i8, i8* %8, align 1
  %61 = zext i8 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = add nsw i32 %58, %64
  %66 = srem i32 %65, 256
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %10, align 1
  %68 = load i8*, i8** %9, align 8
  %69 = load i8, i8* %10, align 1
  %70 = zext i8 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = load i8*, i8** %4, align 8
  %75 = load i16, i16* %11, align 2
  %76 = sext i16 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = xor i32 %79, %73
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %77, align 1
  br label %82

82:                                               ; preds = %27
  %83 = load i16, i16* %11, align 2
  %84 = add i16 %83, 1
  store i16 %84, i16* %11, align 2
  br label %22

85:                                               ; preds = %22
  %86 = load i8, i8* %7, align 1
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  store i8 %86, i8* %88, align 8
  %89 = load i8, i8* %8, align 1
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  store i8 %89, i8* %91, align 1
  ret void
}

declare dso_local i32 @swap_byte(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
