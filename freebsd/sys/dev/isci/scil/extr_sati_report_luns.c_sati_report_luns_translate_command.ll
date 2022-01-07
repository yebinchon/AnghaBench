; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_report_luns.c_sati_report_luns_translate_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_report_luns.c_sati_report_luns_translate_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@SATI_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sati_report_luns_translate_command(%struct.TYPE_4__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32* @sati_cb_get_cdb_address(i8* %8)
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = call i32 @sati_get_cdb_byte(i32* %10, i32 6)
  %12 = shl i32 %11, 24
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @sati_get_cdb_byte(i32* %13, i32 7)
  %15 = shl i32 %14, 16
  %16 = or i32 %12, %15
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @sati_get_cdb_byte(i32* %17, i32 8)
  %19 = shl i32 %18, 8
  %20 = or i32 %16, %19
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @sati_get_cdb_byte(i32* %21, i32 9)
  %23 = or i32 %20, %22
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @sati_set_data_byte(%struct.TYPE_4__* %26, i8* %27, i32 0, i32 0)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @sati_set_data_byte(%struct.TYPE_4__* %29, i8* %30, i32 1, i32 0)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @sati_set_data_byte(%struct.TYPE_4__* %32, i8* %33, i32 2, i32 0)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @sati_set_data_byte(%struct.TYPE_4__* %35, i8* %36, i32 3, i32 8)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @sati_set_data_byte(%struct.TYPE_4__* %38, i8* %39, i32 4, i32 0)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @sati_set_data_byte(%struct.TYPE_4__* %41, i8* %42, i32 5, i32 0)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @sati_set_data_byte(%struct.TYPE_4__* %44, i8* %45, i32 6, i32 0)
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @sati_set_data_byte(%struct.TYPE_4__* %47, i8* %48, i32 7, i32 0)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @sati_set_data_byte(%struct.TYPE_4__* %50, i8* %51, i32 8, i32 0)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @sati_set_data_byte(%struct.TYPE_4__* %53, i8* %54, i32 9, i32 0)
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @sati_set_data_byte(%struct.TYPE_4__* %56, i8* %57, i32 10, i32 0)
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @sati_set_data_byte(%struct.TYPE_4__* %59, i8* %60, i32 11, i32 0)
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @sati_set_data_byte(%struct.TYPE_4__* %62, i8* %63, i32 12, i32 0)
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 @sati_set_data_byte(%struct.TYPE_4__* %65, i8* %66, i32 13, i32 0)
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 @sati_set_data_byte(%struct.TYPE_4__* %68, i8* %69, i32 14, i32 0)
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @sati_set_data_byte(%struct.TYPE_4__* %71, i8* %72, i32 15, i32 0)
  %74 = load i32, i32* @SATI_COMPLETE, align 4
  ret i32 %74
}

declare dso_local i32* @sati_cb_get_cdb_address(i8*) #1

declare dso_local i32 @sati_get_cdb_byte(i32*, i32) #1

declare dso_local i32 @sati_set_data_byte(%struct.TYPE_4__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
