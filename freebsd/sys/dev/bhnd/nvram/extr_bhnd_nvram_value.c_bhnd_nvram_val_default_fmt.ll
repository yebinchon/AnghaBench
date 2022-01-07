; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value.c_bhnd_nvram_val_default_fmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value.c_bhnd_nvram_val_default_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bhnd_nvram_val_uint8_fmt = common dso_local global i32 0, align 4
@bhnd_nvram_val_uint16_fmt = common dso_local global i32 0, align 4
@bhnd_nvram_val_uint32_fmt = common dso_local global i32 0, align 4
@bhnd_nvram_val_uint64_fmt = common dso_local global i32 0, align 4
@bhnd_nvram_val_int8_fmt = common dso_local global i32 0, align 4
@bhnd_nvram_val_int16_fmt = common dso_local global i32 0, align 4
@bhnd_nvram_val_int32_fmt = common dso_local global i32 0, align 4
@bhnd_nvram_val_int64_fmt = common dso_local global i32 0, align 4
@bhnd_nvram_val_char_fmt = common dso_local global i32 0, align 4
@bhnd_nvram_val_string_fmt = common dso_local global i32 0, align 4
@bhnd_nvram_val_bool_fmt = common dso_local global i32 0, align 4
@bhnd_nvram_val_null_fmt = common dso_local global i32 0, align 4
@bhnd_nvram_val_data_fmt = common dso_local global i32 0, align 4
@bhnd_nvram_val_uint8_array_fmt = common dso_local global i32 0, align 4
@bhnd_nvram_val_uint16_array_fmt = common dso_local global i32 0, align 4
@bhnd_nvram_val_uint32_array_fmt = common dso_local global i32 0, align 4
@bhnd_nvram_val_uint64_array_fmt = common dso_local global i32 0, align 4
@bhnd_nvram_val_int8_array_fmt = common dso_local global i32 0, align 4
@bhnd_nvram_val_int16_array_fmt = common dso_local global i32 0, align 4
@bhnd_nvram_val_int32_array_fmt = common dso_local global i32 0, align 4
@bhnd_nvram_val_int64_array_fmt = common dso_local global i32 0, align 4
@bhnd_nvram_val_char_array_fmt = common dso_local global i32 0, align 4
@bhnd_nvram_val_string_array_fmt = common dso_local global i32 0, align 4
@bhnd_nvram_val_bool_array_fmt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"bhnd nvram type %u unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @bhnd_nvram_val_default_fmt(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %29 [
    i32 129, label %5
    i32 135, label %6
    i32 133, label %7
    i32 131, label %8
    i32 140, label %9
    i32 146, label %10
    i32 144, label %11
    i32 142, label %12
    i32 149, label %13
    i32 137, label %14
    i32 151, label %15
    i32 138, label %16
    i32 147, label %17
    i32 128, label %18
    i32 134, label %19
    i32 132, label %20
    i32 130, label %21
    i32 139, label %22
    i32 145, label %23
    i32 143, label %24
    i32 141, label %25
    i32 148, label %26
    i32 136, label %27
    i32 150, label %28
  ]

5:                                                ; preds = %1
  store i32* @bhnd_nvram_val_uint8_fmt, i32** %2, align 8
  br label %32

6:                                                ; preds = %1
  store i32* @bhnd_nvram_val_uint16_fmt, i32** %2, align 8
  br label %32

7:                                                ; preds = %1
  store i32* @bhnd_nvram_val_uint32_fmt, i32** %2, align 8
  br label %32

8:                                                ; preds = %1
  store i32* @bhnd_nvram_val_uint64_fmt, i32** %2, align 8
  br label %32

9:                                                ; preds = %1
  store i32* @bhnd_nvram_val_int8_fmt, i32** %2, align 8
  br label %32

10:                                               ; preds = %1
  store i32* @bhnd_nvram_val_int16_fmt, i32** %2, align 8
  br label %32

11:                                               ; preds = %1
  store i32* @bhnd_nvram_val_int32_fmt, i32** %2, align 8
  br label %32

12:                                               ; preds = %1
  store i32* @bhnd_nvram_val_int64_fmt, i32** %2, align 8
  br label %32

13:                                               ; preds = %1
  store i32* @bhnd_nvram_val_char_fmt, i32** %2, align 8
  br label %32

14:                                               ; preds = %1
  store i32* @bhnd_nvram_val_string_fmt, i32** %2, align 8
  br label %32

15:                                               ; preds = %1
  store i32* @bhnd_nvram_val_bool_fmt, i32** %2, align 8
  br label %32

16:                                               ; preds = %1
  store i32* @bhnd_nvram_val_null_fmt, i32** %2, align 8
  br label %32

17:                                               ; preds = %1
  store i32* @bhnd_nvram_val_data_fmt, i32** %2, align 8
  br label %32

18:                                               ; preds = %1
  store i32* @bhnd_nvram_val_uint8_array_fmt, i32** %2, align 8
  br label %32

19:                                               ; preds = %1
  store i32* @bhnd_nvram_val_uint16_array_fmt, i32** %2, align 8
  br label %32

20:                                               ; preds = %1
  store i32* @bhnd_nvram_val_uint32_array_fmt, i32** %2, align 8
  br label %32

21:                                               ; preds = %1
  store i32* @bhnd_nvram_val_uint64_array_fmt, i32** %2, align 8
  br label %32

22:                                               ; preds = %1
  store i32* @bhnd_nvram_val_int8_array_fmt, i32** %2, align 8
  br label %32

23:                                               ; preds = %1
  store i32* @bhnd_nvram_val_int16_array_fmt, i32** %2, align 8
  br label %32

24:                                               ; preds = %1
  store i32* @bhnd_nvram_val_int32_array_fmt, i32** %2, align 8
  br label %32

25:                                               ; preds = %1
  store i32* @bhnd_nvram_val_int64_array_fmt, i32** %2, align 8
  br label %32

26:                                               ; preds = %1
  store i32* @bhnd_nvram_val_char_array_fmt, i32** %2, align 8
  br label %32

27:                                               ; preds = %1
  store i32* @bhnd_nvram_val_string_array_fmt, i32** %2, align 8
  br label %32

28:                                               ; preds = %1
  store i32* @bhnd_nvram_val_bool_array_fmt, i32** %2, align 8
  br label %32

29:                                               ; preds = %1
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @BHND_NV_PANIC(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %33 = load i32*, i32** %2, align 8
  ret i32* %33
}

declare dso_local i32 @BHND_NV_PANIC(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
