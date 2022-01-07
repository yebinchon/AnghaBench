; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_file_header_read_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_file_header_read_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_header = type { i32*, i32* }
%struct.bwstring = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file_header*)* @file_header_read_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @file_header_read_next(%struct.file_header* %0) #0 {
  %2 = alloca %struct.file_header*, align 8
  %3 = alloca %struct.bwstring*, align 8
  store %struct.file_header* %0, %struct.file_header** %2, align 8
  %4 = load %struct.file_header*, %struct.file_header** %2, align 8
  %5 = icmp ne %struct.file_header* %4, null
  br i1 %5, label %6, label %57

6:                                                ; preds = %1
  %7 = load %struct.file_header*, %struct.file_header** %2, align 8
  %8 = getelementptr inbounds %struct.file_header, %struct.file_header* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %57

11:                                               ; preds = %6
  %12 = load %struct.file_header*, %struct.file_header** %2, align 8
  %13 = getelementptr inbounds %struct.file_header, %struct.file_header* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = call %struct.bwstring* @file_reader_readline(i32* %14)
  store %struct.bwstring* %15, %struct.bwstring** %3, align 8
  %16 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %17 = icmp eq %struct.bwstring* %16, null
  br i1 %17, label %18, label %41

18:                                               ; preds = %11
  %19 = load %struct.file_header*, %struct.file_header** %2, align 8
  %20 = getelementptr inbounds %struct.file_header, %struct.file_header* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @file_reader_free(i32* %21)
  %23 = load %struct.file_header*, %struct.file_header** %2, align 8
  %24 = getelementptr inbounds %struct.file_header, %struct.file_header* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load %struct.file_header*, %struct.file_header** %2, align 8
  %26 = getelementptr inbounds %struct.file_header, %struct.file_header* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %18
  %30 = load %struct.file_header*, %struct.file_header** %2, align 8
  %31 = getelementptr inbounds %struct.file_header, %struct.file_header* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @sort_list_item_clean(i32* %32)
  %34 = load %struct.file_header*, %struct.file_header** %2, align 8
  %35 = getelementptr inbounds %struct.file_header, %struct.file_header* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @sort_free(i32* %36)
  %38 = load %struct.file_header*, %struct.file_header** %2, align 8
  %39 = getelementptr inbounds %struct.file_header, %struct.file_header* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %29, %18
  br label %56

41:                                               ; preds = %11
  %42 = load %struct.file_header*, %struct.file_header** %2, align 8
  %43 = getelementptr inbounds %struct.file_header, %struct.file_header* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = call i32* (...) @sort_list_item_alloc()
  %48 = load %struct.file_header*, %struct.file_header** %2, align 8
  %49 = getelementptr inbounds %struct.file_header, %struct.file_header* %48, i32 0, i32 0
  store i32* %47, i32** %49, align 8
  br label %50

50:                                               ; preds = %46, %41
  %51 = load %struct.file_header*, %struct.file_header** %2, align 8
  %52 = getelementptr inbounds %struct.file_header, %struct.file_header* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %55 = call i32 @sort_list_item_set(i32* %53, %struct.bwstring* %54)
  br label %56

56:                                               ; preds = %50, %40
  br label %57

57:                                               ; preds = %56, %6, %1
  ret void
}

declare dso_local %struct.bwstring* @file_reader_readline(i32*) #1

declare dso_local i32 @file_reader_free(i32*) #1

declare dso_local i32 @sort_list_item_clean(i32*) #1

declare dso_local i32 @sort_free(i32*) #1

declare dso_local i32* @sort_list_item_alloc(...) #1

declare dso_local i32 @sort_list_item_set(i32*, %struct.bwstring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
