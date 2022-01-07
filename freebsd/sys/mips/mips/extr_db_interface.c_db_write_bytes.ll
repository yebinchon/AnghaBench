; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_db_interface.c_db_write_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_db_interface.c_db_write_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db_write_bytes(i64 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call i8* @kdb_jmpbuf(i8* %12)
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @setjmp(i8* %14) #3
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %85

18:                                               ; preds = %3
  %19 = load i64, i64* %5, align 8
  %20 = icmp eq i64 %19, 2
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load i64, i64* %5, align 8
  %23 = icmp eq i64 %22, 4
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %5, align 8
  %26 = icmp eq i64 %25, 8
  br i1 %26, label %27, label %61

27:                                               ; preds = %24, %21, %18
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = sub i64 %29, 1
  %31 = and i64 %28, %30
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %61

33:                                               ; preds = %27
  %34 = load i8*, i8** %6, align 8
  %35 = ptrtoint i8* %34 to i64
  %36 = load i64, i64* %5, align 8
  %37 = sub i64 %36, 1
  %38 = and i64 %35, %37
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %33
  %41 = load i64, i64* %5, align 8
  switch i64 %41, label %60 [
    i64 2, label %42
    i64 4, label %48
    i64 8, label %54
  ]

42:                                               ; preds = %40
  %43 = load i8*, i8** %6, align 8
  %44 = bitcast i8* %43 to i32*
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %4, align 8
  %47 = inttoptr i64 %46 to i32*
  store i32 %45, i32* %47, align 4
  br label %60

48:                                               ; preds = %40
  %49 = load i8*, i8** %6, align 8
  %50 = bitcast i8* %49 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %4, align 8
  %53 = inttoptr i64 %52 to i32*
  store i32 %51, i32* %53, align 4
  br label %60

54:                                               ; preds = %40
  %55 = load i8*, i8** %6, align 8
  %56 = bitcast i8* %55 to i32*
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* %4, align 8
  %59 = inttoptr i64 %58 to i32*
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %40, %54, %48, %42
  br label %76

61:                                               ; preds = %33, %27, %24
  %62 = load i64, i64* %5, align 8
  store i64 %62, i64* %11, align 8
  %63 = load i64, i64* %4, align 8
  %64 = inttoptr i64 %63 to i8*
  store i8* %64, i8** %10, align 8
  br label %65

65:                                               ; preds = %69, %61
  %66 = load i64, i64* %11, align 8
  %67 = add i64 %66, -1
  store i64 %67, i64* %11, align 8
  %68 = icmp ugt i64 %66, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %6, align 8
  %72 = load i8, i8* %70, align 1
  %73 = load i8*, i8** %10, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %10, align 8
  store i8 %72, i8* %73, align 1
  br label %65

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75, %60
  %77 = load i64, i64* %4, align 8
  %78 = trunc i64 %77 to i32
  %79 = load i64, i64* %5, align 8
  %80 = call i32 @mips_icache_sync_range(i32 %78, i64 %79)
  %81 = load i64, i64* %4, align 8
  %82 = trunc i64 %81 to i32
  %83 = load i64, i64* %5, align 8
  %84 = call i32 @mips_dcache_wbinv_range(i32 %82, i64 %83)
  br label %85

85:                                               ; preds = %76, %3
  %86 = load i8*, i8** %9, align 8
  %87 = call i8* @kdb_jmpbuf(i8* %86)
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local i8* @kdb_jmpbuf(i8*) #1

; Function Attrs: returns_twice
declare dso_local i32 @setjmp(i8*) #2

declare dso_local i32 @mips_icache_sync_range(i32, i64) #1

declare dso_local i32 @mips_dcache_wbinv_range(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
