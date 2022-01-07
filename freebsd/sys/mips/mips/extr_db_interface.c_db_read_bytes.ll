; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_db_interface.c_db_read_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_db_interface.c_db_read_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db_read_bytes(i64 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i8* @kdb_jmpbuf(i8* %11)
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @setjmp(i8* %13) #3
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %75

17:                                               ; preds = %3
  %18 = load i64, i64* %5, align 8
  %19 = icmp eq i64 %18, 2
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* %5, align 8
  %22 = icmp eq i64 %21, 4
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i64, i64* %5, align 8
  %25 = icmp eq i64 %24, 8
  br i1 %25, label %26, label %60

26:                                               ; preds = %23, %20, %17
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = sub i64 %28, 1
  %30 = and i64 %27, %29
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %60

32:                                               ; preds = %26
  %33 = load i8*, i8** %6, align 8
  %34 = ptrtoint i8* %33 to i64
  %35 = load i64, i64* %5, align 8
  %36 = sub i64 %35, 1
  %37 = and i64 %34, %36
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %32
  %40 = load i64, i64* %5, align 8
  switch i64 %40, label %59 [
    i64 2, label %41
    i64 4, label %47
    i64 8, label %53
  ]

41:                                               ; preds = %39
  %42 = load i64, i64* %4, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = bitcast i8* %45 to i32*
  store i32 %44, i32* %46, align 4
  br label %59

47:                                               ; preds = %39
  %48 = load i64, i64* %4, align 8
  %49 = inttoptr i64 %48 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %6, align 8
  %52 = bitcast i8* %51 to i32*
  store i32 %50, i32* %52, align 4
  br label %59

53:                                               ; preds = %39
  %54 = load i64, i64* %4, align 8
  %55 = inttoptr i64 %54 to i32*
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %6, align 8
  %58 = bitcast i8* %57 to i32*
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %39, %53, %47, %41
  br label %74

60:                                               ; preds = %32, %26, %23
  %61 = load i64, i64* %4, align 8
  %62 = inttoptr i64 %61 to i8*
  store i8* %62, i8** %10, align 8
  br label %63

63:                                               ; preds = %67, %60
  %64 = load i64, i64* %5, align 8
  %65 = add i64 %64, -1
  store i64 %65, i64* %5, align 8
  %66 = icmp ugt i64 %64, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i8*, i8** %10, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %10, align 8
  %70 = load i8, i8* %68, align 1
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %6, align 8
  store i8 %70, i8* %71, align 1
  br label %63

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73, %59
  br label %75

75:                                               ; preds = %74, %3
  %76 = load i8*, i8** %8, align 8
  %77 = call i8* @kdb_jmpbuf(i8* %76)
  %78 = load i32, i32* %9, align 4
  ret i32 %78
}

declare dso_local i8* @kdb_jmpbuf(i8*) #1

; Function Attrs: returns_twice
declare dso_local i32 @setjmp(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
