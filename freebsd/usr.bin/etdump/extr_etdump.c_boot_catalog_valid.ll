; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/etdump/extr_etdump.c_boot_catalog_valid.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/etdump/extr_etdump.c_boot_catalog_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @boot_catalog_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @boot_catalog_valid(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %4, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @isonum_721(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cd9660_721(i32 0, i32 %17)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %20 = bitcast %struct.TYPE_2__* %19 to i8*
  store i8* %20, i8** %7, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %8, align 8
  br label %21

21:                                               ; preds = %41, %1
  %22 = load i64, i64* %8, align 8
  %23 = icmp ult i64 %22, 4
  br i1 %23, label %24, label %44

24:                                               ; preds = %21
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = add i64 %33, 1
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = mul nsw i32 256, %37
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %24
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %42, 2
  store i64 %43, i64* %8, align 8
  br label %21

44:                                               ; preds = %21
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %56

50:                                               ; preds = %44
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @cd9660_721(i32 %51, i32 %54)
  store i32 1, i32* %2, align 4
  br label %56

56:                                               ; preds = %50, %49
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @isonum_721(i32) #1

declare dso_local i32 @cd9660_721(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
