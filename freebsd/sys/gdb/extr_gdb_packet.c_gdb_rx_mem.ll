; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gdb/extr_gdb_packet.c_gdb_rx_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gdb/extr_gdb_packet.c_gdb_rx_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gdb_rxsz = common dso_local global i64 0, align 8
@gdb_rxp = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdb_rx_mem(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = mul i64 %13, 2
  %15 = load i64, i64* @gdb_rxsz, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %70

18:                                               ; preds = %2
  %19 = call i8* (...) @gdb_begin_write()
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = call i8* @kdb_jmpbuf(i8* %20)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @setjmp(i8* %22) #3
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %61

26:                                               ; preds = %18
  %27 = load i8*, i8** %4, align 8
  store i8* %27, i8** %6, align 8
  %28 = load i64, i64* %5, align 8
  store i64 %28, i64* %10, align 8
  br label %29

29:                                               ; preds = %33, %26
  %30 = load i64, i64* %10, align 8
  %31 = add i64 %30, -1
  store i64 %31, i64* %10, align 8
  %32 = icmp ugt i64 %30, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %29
  %34 = load i32*, i32** @gdb_rxp, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @C2N(i32 %36)
  %38 = shl i32 %37, 4
  %39 = and i32 %38, 240
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %12, align 1
  %41 = load i32*, i32** @gdb_rxp, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @C2N(i32 %43)
  %45 = and i32 %44, 15
  %46 = load i8, i8* %12, align 1
  %47 = zext i8 %46 to i32
  %48 = or i32 %47, %45
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %12, align 1
  %50 = load i8, i8* %12, align 1
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %6, align 8
  store i8 %50, i8* %51, align 1
  %53 = load i64, i64* @gdb_rxsz, align 8
  %54 = sub i64 %53, 2
  store i64 %54, i64* @gdb_rxsz, align 8
  %55 = load i32*, i32** @gdb_rxp, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  store i32* %56, i32** @gdb_rxp, align 8
  br label %29

57:                                               ; preds = %29
  %58 = load i8*, i8** %4, align 8
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @kdb_cpu_sync_icache(i8* %58, i64 %59)
  br label %61

61:                                               ; preds = %57, %18
  %62 = load i8*, i8** %7, align 8
  %63 = call i8* @kdb_jmpbuf(i8* %62)
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @gdb_end_write(i8* %64)
  %66 = load i32, i32* %11, align 4
  %67 = icmp eq i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 1, i32 0
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %61, %17
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i8* @gdb_begin_write(...) #1

declare dso_local i8* @kdb_jmpbuf(i8*) #1

; Function Attrs: returns_twice
declare dso_local i32 @setjmp(i8*) #2

declare dso_local i32 @C2N(i32) #1

declare dso_local i32 @kdb_cpu_sync_icache(i8*, i64) #1

declare dso_local i32 @gdb_end_write(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
