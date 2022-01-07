; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_sprom_subr.c_bhnd_sprom_opcode_rewrite_opcode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_sprom_subr.c_bhnd_sprom_opcode_rewrite_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@SPROM_OPCODE_DO_BIND = common dso_local global i32 0, align 4
@SPROM_OP_BIND_SKIP_IN_SIGN = common dso_local global i32 0, align 4
@SPROM_OP_BIND_SKIP_IN_SHIFT = common dso_local global i32 0, align 4
@SPROM_OP_BIND_SKIP_OUT_SHIFT = common dso_local global i32 0, align 4
@SPROM_OPCODE_VAR_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*)* @bhnd_sprom_opcode_rewrite_opcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_sprom_opcode_rewrite_opcode(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @SPROM_OPCODE_OP(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %69 [
    i32 129, label %18
    i32 128, label %19
    i32 130, label %66
  ]

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %70

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @SPROM_OP_IS_VAR_END(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %19
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %23
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @bhnd_sprom_opcode_set_bind(%struct.TYPE_8__* %30, i32 %31, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %70

40:                                               ; preds = %29
  %41 = load i32, i32* @SPROM_OPCODE_DO_BIND, align 4
  %42 = load i32, i32* @SPROM_OP_BIND_SKIP_IN_SIGN, align 4
  %43 = shl i32 0, %42
  %44 = or i32 %41, %43
  %45 = load i32, i32* @SPROM_OP_BIND_SKIP_IN_SHIFT, align 4
  %46 = shl i32 1, %45
  %47 = or i32 %44, %46
  %48 = load i32, i32* @SPROM_OP_BIND_SKIP_OUT_SHIFT, align 4
  %49 = shl i32 1, %48
  %50 = or i32 %47, %49
  %51 = load i32*, i32** %5, align 8
  store i32 %50, i32* %51, align 4
  store i32 0, i32* %3, align 4
  br label %70

52:                                               ; preds = %23, %19
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @SPROM_OP_IS_IMPLICIT_VAR_END(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = call i32 @bhnd_sprom_opcode_end_var(%struct.TYPE_8__* %57)
  store i32 %58, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %70

62:                                               ; preds = %56
  %63 = load i32, i32* @SPROM_OPCODE_VAR_END, align 4
  %64 = load i32*, i32** %5, align 8
  store i32 %63, i32* %64, align 4
  store i32 0, i32* %3, align 4
  br label %70

65:                                               ; preds = %52
  br label %69

66:                                               ; preds = %2
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = call i32 @bhnd_sprom_opcode_clear_var(%struct.TYPE_8__* %67)
  store i32 %68, i32* %3, align 4
  br label %70

69:                                               ; preds = %2, %65
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %66, %62, %60, %40, %38, %18
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @SPROM_OPCODE_OP(i32) #1

declare dso_local i32 @SPROM_OP_IS_VAR_END(i32) #1

declare dso_local i32 @bhnd_sprom_opcode_set_bind(%struct.TYPE_8__*, i32, i32, i32, i32) #1

declare dso_local i32 @SPROM_OP_IS_IMPLICIT_VAR_END(i32) #1

declare dso_local i32 @bhnd_sprom_opcode_end_var(%struct.TYPE_8__*) #1

declare dso_local i32 @bhnd_sprom_opcode_clear_var(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
