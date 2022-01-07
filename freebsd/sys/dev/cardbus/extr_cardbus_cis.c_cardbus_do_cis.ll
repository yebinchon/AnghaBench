; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cardbus/extr_cardbus_cis.c_cardbus_do_cis.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cardbus/extr_cardbus_cis.c_cardbus_do_cis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuple_callbacks = type { i32 }

@LONGLINK_CB = common dso_local global i32 0, align 4
@unhandled = common dso_local global i32 0, align 4
@INDIRECT = common dso_local global i32 0, align 4
@LONGLINK_MFC = common dso_local global i32 0, align 4
@BAR = common dso_local global i32 0, align 4
@bar = common dso_local global i32 0, align 4
@LONGLINK_A = common dso_local global i32 0, align 4
@LONGLINK_C = common dso_local global i32 0, align 4
@LINKTARGET = common dso_local global i32 0, align 4
@linktarget = common dso_local global i32 0, align 4
@VERS_1 = common dso_local global i32 0, align 4
@vers_1 = common dso_local global i32 0, align 4
@MANFID = common dso_local global i32 0, align 4
@manfid = common dso_local global i32 0, align 4
@FUNCID = common dso_local global i32 0, align 4
@funcid = common dso_local global i32 0, align 4
@FUNCE = common dso_local global i32 0, align 4
@funce = common dso_local global i32 0, align 4
@END = common dso_local global i32 0, align 4
@end = common dso_local global i32 0, align 4
@GENERIC = common dso_local global i32 0, align 4
@generic = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cardbus_do_cis(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [13 x %struct.tuple_callbacks], align 16
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds [13 x %struct.tuple_callbacks], [13 x %struct.tuple_callbacks]* %5, i64 0, i64 0
  %7 = load i32, i32* @LONGLINK_CB, align 4
  %8 = load i32, i32* @unhandled, align 4
  %9 = call i32 @MAKETUPLE(i32 %7, i32 %8)
  %10 = getelementptr inbounds %struct.tuple_callbacks, %struct.tuple_callbacks* %6, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.tuple_callbacks, %struct.tuple_callbacks* %6, i64 1
  %12 = load i32, i32* @INDIRECT, align 4
  %13 = load i32, i32* @unhandled, align 4
  %14 = call i32 @MAKETUPLE(i32 %12, i32 %13)
  %15 = getelementptr inbounds %struct.tuple_callbacks, %struct.tuple_callbacks* %11, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.tuple_callbacks, %struct.tuple_callbacks* %11, i64 1
  %17 = load i32, i32* @LONGLINK_MFC, align 4
  %18 = load i32, i32* @unhandled, align 4
  %19 = call i32 @MAKETUPLE(i32 %17, i32 %18)
  %20 = getelementptr inbounds %struct.tuple_callbacks, %struct.tuple_callbacks* %16, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.tuple_callbacks, %struct.tuple_callbacks* %16, i64 1
  %22 = load i32, i32* @BAR, align 4
  %23 = load i32, i32* @bar, align 4
  %24 = call i32 @MAKETUPLE(i32 %22, i32 %23)
  %25 = getelementptr inbounds %struct.tuple_callbacks, %struct.tuple_callbacks* %21, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.tuple_callbacks, %struct.tuple_callbacks* %21, i64 1
  %27 = load i32, i32* @LONGLINK_A, align 4
  %28 = load i32, i32* @unhandled, align 4
  %29 = call i32 @MAKETUPLE(i32 %27, i32 %28)
  %30 = getelementptr inbounds %struct.tuple_callbacks, %struct.tuple_callbacks* %26, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.tuple_callbacks, %struct.tuple_callbacks* %26, i64 1
  %32 = load i32, i32* @LONGLINK_C, align 4
  %33 = load i32, i32* @unhandled, align 4
  %34 = call i32 @MAKETUPLE(i32 %32, i32 %33)
  %35 = getelementptr inbounds %struct.tuple_callbacks, %struct.tuple_callbacks* %31, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds %struct.tuple_callbacks, %struct.tuple_callbacks* %31, i64 1
  %37 = load i32, i32* @LINKTARGET, align 4
  %38 = load i32, i32* @linktarget, align 4
  %39 = call i32 @MAKETUPLE(i32 %37, i32 %38)
  %40 = getelementptr inbounds %struct.tuple_callbacks, %struct.tuple_callbacks* %36, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.tuple_callbacks, %struct.tuple_callbacks* %36, i64 1
  %42 = load i32, i32* @VERS_1, align 4
  %43 = load i32, i32* @vers_1, align 4
  %44 = call i32 @MAKETUPLE(i32 %42, i32 %43)
  %45 = getelementptr inbounds %struct.tuple_callbacks, %struct.tuple_callbacks* %41, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = getelementptr inbounds %struct.tuple_callbacks, %struct.tuple_callbacks* %41, i64 1
  %47 = load i32, i32* @MANFID, align 4
  %48 = load i32, i32* @manfid, align 4
  %49 = call i32 @MAKETUPLE(i32 %47, i32 %48)
  %50 = getelementptr inbounds %struct.tuple_callbacks, %struct.tuple_callbacks* %46, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds %struct.tuple_callbacks, %struct.tuple_callbacks* %46, i64 1
  %52 = load i32, i32* @FUNCID, align 4
  %53 = load i32, i32* @funcid, align 4
  %54 = call i32 @MAKETUPLE(i32 %52, i32 %53)
  %55 = getelementptr inbounds %struct.tuple_callbacks, %struct.tuple_callbacks* %51, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = getelementptr inbounds %struct.tuple_callbacks, %struct.tuple_callbacks* %51, i64 1
  %57 = load i32, i32* @FUNCE, align 4
  %58 = load i32, i32* @funce, align 4
  %59 = call i32 @MAKETUPLE(i32 %57, i32 %58)
  %60 = getelementptr inbounds %struct.tuple_callbacks, %struct.tuple_callbacks* %56, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = getelementptr inbounds %struct.tuple_callbacks, %struct.tuple_callbacks* %56, i64 1
  %62 = load i32, i32* @END, align 4
  %63 = load i32, i32* @end, align 4
  %64 = call i32 @MAKETUPLE(i32 %62, i32 %63)
  %65 = getelementptr inbounds %struct.tuple_callbacks, %struct.tuple_callbacks* %61, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = getelementptr inbounds %struct.tuple_callbacks, %struct.tuple_callbacks* %61, i64 1
  %67 = load i32, i32* @GENERIC, align 4
  %68 = load i32, i32* @generic, align 4
  %69 = call i32 @MAKETUPLE(i32 %67, i32 %68)
  %70 = getelementptr inbounds %struct.tuple_callbacks, %struct.tuple_callbacks* %66, i32 0, i32 0
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* %4, align 4
  %73 = getelementptr inbounds [13 x %struct.tuple_callbacks], [13 x %struct.tuple_callbacks]* %5, i64 0, i64 0
  %74 = call i32 @cardbus_parse_cis(i32 %71, i32 %72, %struct.tuple_callbacks* %73, i32* null)
  ret i32 %74
}

declare dso_local i32 @MAKETUPLE(i32, i32) #1

declare dso_local i32 @cardbus_parse_cis(i32, i32, %struct.tuple_callbacks*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
