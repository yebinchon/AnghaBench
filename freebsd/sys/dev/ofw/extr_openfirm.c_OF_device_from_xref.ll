; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_openfirm.c_OF_device_from_xref.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_openfirm.c_OF_device_from_xref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xrefinfo = type { i32* }

@xref_init_done = common dso_local global i64 0, align 8
@FIND_BY_XREF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Attempt to find device before xreflist_init\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @OF_device_from_xref(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.xrefinfo*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i64, i64* @xref_init_done, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @FIND_BY_XREF, align 4
  %10 = call %struct.xrefinfo* @xrefinfo_find(i32 %8, i32 %9)
  store %struct.xrefinfo* %10, %struct.xrefinfo** %4, align 8
  %11 = icmp eq %struct.xrefinfo* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i32* null, i32** %2, align 8
  br label %19

13:                                               ; preds = %7
  %14 = load %struct.xrefinfo*, %struct.xrefinfo** %4, align 8
  %15 = getelementptr inbounds %struct.xrefinfo, %struct.xrefinfo* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %2, align 8
  br label %19

17:                                               ; preds = %1
  %18 = call i32 @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %13, %12
  %20 = load i32*, i32** %2, align 8
  ret i32* %20
}

declare dso_local %struct.xrefinfo* @xrefinfo_find(i32, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
