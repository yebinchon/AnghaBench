; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_sprom_subr.c_bhnd_sprom_opcode_eval_var.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_sprom_subr.c_bhnd_sprom_opcode_eval_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@SPROM_OPCODE_VAR_END = common dso_local global i64 0, align 8
@SPROM_OPCODE_VAR_STATE_DONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"incomplete variable definition\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_sprom_opcode_eval_var(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @bhnd_sprom_opcode_seek(%struct.TYPE_5__* %8, i32* %9)
  store i32 %10, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %35

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %24, %14
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = call i32 @bhnd_sprom_opcode_step(%struct.TYPE_5__* %16, i32* %6)
  store i32 %17, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @SPROM_OPCODE_OP(i32 %20)
  %22 = load i64, i64* @SPROM_OPCODE_VAR_END, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %15

25:                                               ; preds = %19
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SPROM_OPCODE_VAR_STATE_DONE, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @BHND_NV_ASSERT(i32 %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %35

33:                                               ; preds = %15
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %25, %12
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @bhnd_sprom_opcode_seek(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @bhnd_sprom_opcode_step(%struct.TYPE_5__*, i32*) #1

declare dso_local i64 @SPROM_OPCODE_OP(i32) #1

declare dso_local i32 @BHND_NV_ASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
