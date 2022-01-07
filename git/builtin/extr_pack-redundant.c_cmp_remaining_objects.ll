; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-redundant.c_cmp_remaining_objects.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-redundant.c_cmp_remaining_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pack_list = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmp_remaining_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_remaining_objects(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pack_list*, align 8
  %7 = alloca %struct.pack_list*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.pack_list**
  %10 = load %struct.pack_list*, %struct.pack_list** %9, align 8
  store %struct.pack_list* %10, %struct.pack_list** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.pack_list**
  %13 = load %struct.pack_list*, %struct.pack_list** %12, align 8
  store %struct.pack_list* %13, %struct.pack_list** %7, align 8
  %14 = load %struct.pack_list*, %struct.pack_list** %6, align 8
  %15 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.pack_list*, %struct.pack_list** %7, align 8
  %20 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %18, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %2
  %26 = load %struct.pack_list*, %struct.pack_list** %6, align 8
  %27 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.pack_list*, %struct.pack_list** %7, align 8
  %30 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %58

34:                                               ; preds = %25
  %35 = load %struct.pack_list*, %struct.pack_list** %6, align 8
  %36 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.pack_list*, %struct.pack_list** %7, align 8
  %39 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %58

43:                                               ; preds = %34
  store i32 -1, i32* %3, align 4
  br label %58

44:                                               ; preds = %2
  %45 = load %struct.pack_list*, %struct.pack_list** %6, align 8
  %46 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.pack_list*, %struct.pack_list** %7, align 8
  %51 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %49, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %58

57:                                               ; preds = %44
  store i32 -1, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %56, %43, %42, %33
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
