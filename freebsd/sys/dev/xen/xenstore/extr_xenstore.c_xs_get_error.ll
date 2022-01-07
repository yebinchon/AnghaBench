; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore.c_xs_get_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore.c_xs_get_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@xsd_error_count = common dso_local global i64 0, align 8
@xsd_errors = common dso_local global %struct.TYPE_2__* null, align 8
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"XENSTORE xen store gave: unknown error %s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @xs_get_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xs_get_error(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %25, %1
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @xsd_error_count, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = load i8*, i8** %3, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xsd_errors, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @strcmp(i8* %10, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %9
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xsd_errors, align 8
  %20 = load i64, i64* %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %2, align 4
  br label %33

24:                                               ; preds = %9
  br label %25

25:                                               ; preds = %24
  %26 = load i64, i64* %4, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %4, align 8
  br label %5

28:                                               ; preds = %5
  %29 = load i32, i32* @LOG_WARNING, align 4
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @log(i32 %29, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %28, %18
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @log(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
