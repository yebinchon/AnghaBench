; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_db_disasm.c_db_disasm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_db_disasm.c_db_disasm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.riscv_op = type { i64 (%struct.riscv_op*, i32)*, i32* }

@riscv_opcodes = common dso_local global %struct.riscv_op* null, align 8
@riscv_c_opcodes = common dso_local global %struct.riscv_op* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db_disasm(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.riscv_op*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @db_get_value(i32 %9, i32 4, i32 0)
  store i32 %10, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %39, %2
  %12 = load %struct.riscv_op*, %struct.riscv_op** @riscv_opcodes, align 8
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.riscv_op, %struct.riscv_op* %12, i64 %14
  %16 = getelementptr inbounds %struct.riscv_op, %struct.riscv_op* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %42

19:                                               ; preds = %11
  %20 = load %struct.riscv_op*, %struct.riscv_op** @riscv_opcodes, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.riscv_op, %struct.riscv_op* %20, i64 %22
  store %struct.riscv_op* %23, %struct.riscv_op** %6, align 8
  %24 = load %struct.riscv_op*, %struct.riscv_op** %6, align 8
  %25 = getelementptr inbounds %struct.riscv_op, %struct.riscv_op* %24, i32 0, i32 0
  %26 = load i64 (%struct.riscv_op*, i32)*, i64 (%struct.riscv_op*, i32)** %25, align 8
  %27 = load %struct.riscv_op*, %struct.riscv_op** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i64 %26(%struct.riscv_op* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %19
  %32 = load %struct.riscv_op*, %struct.riscv_op** %6, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @oprint(%struct.riscv_op* %32, i32 %33, i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 4
  store i32 %37, i32* %3, align 4
  br label %77

38:                                               ; preds = %19
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %11

42:                                               ; preds = %11
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @db_get_value(i32 %43, i32 2, i32 0)
  store i32 %44, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %71, %42
  %46 = load %struct.riscv_op*, %struct.riscv_op** @riscv_c_opcodes, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.riscv_op, %struct.riscv_op* %46, i64 %48
  %50 = getelementptr inbounds %struct.riscv_op, %struct.riscv_op* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %74

53:                                               ; preds = %45
  %54 = load %struct.riscv_op*, %struct.riscv_op** @riscv_c_opcodes, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.riscv_op, %struct.riscv_op* %54, i64 %56
  store %struct.riscv_op* %57, %struct.riscv_op** %6, align 8
  %58 = load %struct.riscv_op*, %struct.riscv_op** %6, align 8
  %59 = getelementptr inbounds %struct.riscv_op, %struct.riscv_op* %58, i32 0, i32 0
  %60 = load i64 (%struct.riscv_op*, i32)*, i64 (%struct.riscv_op*, i32)** %59, align 8
  %61 = load %struct.riscv_op*, %struct.riscv_op** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i64 %60(%struct.riscv_op* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %53
  %66 = load %struct.riscv_op*, %struct.riscv_op** %6, align 8
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @oprint(%struct.riscv_op* %66, i32 %67, i32 %68)
  br label %74

70:                                               ; preds = %53
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %45

74:                                               ; preds = %65, %45
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 2
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %74, %31
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @db_get_value(i32, i32, i32) #1

declare dso_local i32 @oprint(%struct.riscv_op*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
