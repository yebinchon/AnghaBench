; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_file_header_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_file_header_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_header = type { i64, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_header*, %struct.file_header*)* @file_header_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_header_cmp(%struct.file_header* %0, %struct.file_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file_header*, align 8
  %5 = alloca %struct.file_header*, align 8
  %6 = alloca i32, align 4
  store %struct.file_header* %0, %struct.file_header** %4, align 8
  store %struct.file_header* %1, %struct.file_header** %5, align 8
  %7 = load %struct.file_header*, %struct.file_header** %4, align 8
  %8 = load %struct.file_header*, %struct.file_header** %5, align 8
  %9 = icmp eq %struct.file_header* %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

11:                                               ; preds = %2
  %12 = load %struct.file_header*, %struct.file_header** %4, align 8
  %13 = getelementptr inbounds %struct.file_header, %struct.file_header* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load %struct.file_header*, %struct.file_header** %5, align 8
  %18 = getelementptr inbounds %struct.file_header, %struct.file_header* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 0, i32 1
  store i32 %22, i32* %3, align 4
  br label %49

23:                                               ; preds = %11
  %24 = load %struct.file_header*, %struct.file_header** %5, align 8
  %25 = getelementptr inbounds %struct.file_header, %struct.file_header* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %49

29:                                               ; preds = %23
  %30 = load %struct.file_header*, %struct.file_header** %4, align 8
  %31 = getelementptr inbounds %struct.file_header, %struct.file_header* %30, i32 0, i32 1
  %32 = load %struct.file_header*, %struct.file_header** %5, align 8
  %33 = getelementptr inbounds %struct.file_header, %struct.file_header* %32, i32 0, i32 1
  %34 = call i32 @list_coll(i32* %31, i32* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %29
  %38 = load %struct.file_header*, %struct.file_header** %4, align 8
  %39 = getelementptr inbounds %struct.file_header, %struct.file_header* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.file_header*, %struct.file_header** %5, align 8
  %42 = getelementptr inbounds %struct.file_header, %struct.file_header* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %40, %43
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 -1, i32 1
  store i32 %46, i32* %3, align 4
  br label %49

47:                                               ; preds = %29
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %37, %28, %16, %10
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @list_coll(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
