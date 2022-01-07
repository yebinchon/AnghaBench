; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati.c_sati_translate_task_management.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati.c_sati_translate_task_management.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@SATI_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sati_translate_task_management(%struct.TYPE_5__* %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i32, i32* @SATI_FAILURE, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @sati_cb_get_task_function(i8* %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32* %14, i32** %16, align 8
  %17 = load i32, i32* %10, align 4
  switch i32 %17, label %28 [
    i32 130, label %18
    i32 128, label %18
    i32 129, label %23
  ]

18:                                               ; preds = %4, %4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @sati_lun_reset_translate_command(%struct.TYPE_5__* %19, i8* %20, i8* %21)
  store i32 %22, i32* %9, align 4
  br label %30

23:                                               ; preds = %4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @sati_abort_task_set_translate_command(%struct.TYPE_5__* %24, i8* %25, i8* %26)
  store i32 %27, i32* %9, align 4
  br label %30

28:                                               ; preds = %4
  %29 = load i32, i32* @SATI_FAILURE, align 4
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %28, %23, %18
  %31 = load i32, i32* %9, align 4
  ret i32 %31
}

declare dso_local i32 @sati_cb_get_task_function(i8*) #1

declare dso_local i32 @sati_lun_reset_translate_command(%struct.TYPE_5__*, i8*, i8*) #1

declare dso_local i32 @sati_abort_task_set_translate_command(%struct.TYPE_5__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
