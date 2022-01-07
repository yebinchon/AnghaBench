; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_db_interface.c_db_write_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_db_interface.c_db_write_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db_write_bytes(i64 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i8* @kdb_jmpbuf(i8* %12)
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @setjmp(i8* %14) #3
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %66

18:                                               ; preds = %3
  %19 = load i64, i64* %4, align 8
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %9, align 8
  %21 = load i64, i64* %5, align 8
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp eq i64 %22, 8
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i8*, i8** %6, align 8
  %26 = bitcast i8* %25 to i32*
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %24, %18
  %31 = load i64, i64* %5, align 8
  %32 = icmp eq i64 %31, 4
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i8*, i8** %6, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = bitcast i8* %37 to i32*
  store i32 %36, i32* %38, align 4
  br label %61

39:                                               ; preds = %30
  %40 = load i64, i64* %5, align 8
  %41 = icmp eq i64 %40, 2
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i8*, i8** %6, align 8
  %44 = bitcast i8* %43 to i16*
  %45 = load i16, i16* %44, align 2
  %46 = load i8*, i8** %9, align 8
  %47 = bitcast i8* %46 to i16*
  store i16 %45, i16* %47, align 2
  br label %60

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %53, %48
  %50 = load i64, i64* %10, align 8
  %51 = add i64 %50, -1
  store i64 %51, i64* %10, align 8
  %52 = icmp ugt i64 %50, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %6, align 8
  %56 = load i8, i8* %54, align 1
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %9, align 8
  store i8 %56, i8* %57, align 1
  br label %49

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %42
  br label %61

61:                                               ; preds = %60, %33
  %62 = load i64, i64* %4, align 8
  %63 = inttoptr i64 %62 to i8*
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @kdb_cpu_sync_icache(i8* %63, i64 %64)
  br label %66

66:                                               ; preds = %61, %3
  %67 = load i8*, i8** %8, align 8
  %68 = call i8* @kdb_jmpbuf(i8* %67)
  %69 = load i32, i32* %11, align 4
  ret i32 %69
}

declare dso_local i8* @kdb_jmpbuf(i8*) #1

; Function Attrs: returns_twice
declare dso_local i32 @setjmp(i8*) #2

declare dso_local i32 @kdb_cpu_sync_icache(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
