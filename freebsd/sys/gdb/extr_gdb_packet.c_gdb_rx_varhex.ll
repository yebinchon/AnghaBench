; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gdb/extr_gdb_packet.c_gdb_rx_varhex.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gdb/extr_gdb_packet.c_gdb_rx_varhex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gdb_rxp = common dso_local global i64 0, align 8
@gdb_rxsz = common dso_local global i64 0, align 8
@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdb_rx_varhex(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = call i32 (...) @gdb_rx_char()
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 45
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 1, i32 0
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 (...) @gdb_rx_char()
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %14, %1
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @isxdigit(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %39, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, -1
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 0, i32 1
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* @gdb_rxp, align 8
  %29 = sub nsw i64 %28, %27
  store i64 %29, i64* @gdb_rxp, align 8
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, -1
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 0, i32 1
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* @gdb_rxsz, align 8
  %38 = add nsw i64 %37, %36
  store i64 %38, i64* @gdb_rxsz, align 8
  store i32 -1, i32* %2, align 4
  br label %74

39:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %50, %39
  %41 = load i32, i32* %4, align 4
  %42 = shl i32 %41, 4
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @C2N(i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %4, align 4
  %49 = call i32 (...) @gdb_rx_char()
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %40
  %51 = load i32, i32* %5, align 4
  %52 = call i64 @isxdigit(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %40, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @EOF, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i64, i64* @gdb_rxp, align 8
  %60 = add nsw i64 %59, -1
  store i64 %60, i64* @gdb_rxp, align 8
  %61 = load i64, i64* @gdb_rxsz, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* @gdb_rxsz, align 8
  br label %63

63:                                               ; preds = %58, %54
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* %4, align 4
  %68 = sub nsw i32 0, %67
  br label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %66
  %72 = phi i32 [ %68, %66 ], [ %70, %69 ]
  %73 = load i32*, i32** %3, align 8
  store i32 %72, i32* %73, align 4
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %71, %20
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @gdb_rx_char(...) #1

declare dso_local i64 @isxdigit(i32) #1

declare dso_local i64 @C2N(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
