; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_subr.c_uart_parse_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_subr.c_uart_parse_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_class = type { i32 }

@uart_classes = common dso_local global %struct.uart_class** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uart_class* (%struct.uart_class*, i8**)* @uart_parse_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uart_class* @uart_parse_class(%struct.uart_class* %0, i8** %1) #0 {
  %3 = alloca %struct.uart_class*, align 8
  %4 = alloca %struct.uart_class*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.uart_class*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.uart_class* %0, %struct.uart_class** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %46, %2
  %11 = load i64, i64* %9, align 8
  %12 = load %struct.uart_class**, %struct.uart_class*** @uart_classes, align 8
  %13 = call i64 @nitems(%struct.uart_class** %12)
  %14 = icmp ult i64 %11, %13
  br i1 %14, label %15, label %49

15:                                               ; preds = %10
  %16 = load %struct.uart_class**, %struct.uart_class*** @uart_classes, align 8
  %17 = load i64, i64* %9, align 8
  %18 = getelementptr inbounds %struct.uart_class*, %struct.uart_class** %16, i64 %17
  %19 = load %struct.uart_class*, %struct.uart_class** %18, align 8
  store %struct.uart_class* %19, %struct.uart_class** %6, align 8
  %20 = load %struct.uart_class*, %struct.uart_class** %6, align 8
  %21 = call i8* @uart_getname(%struct.uart_class* %20)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %15
  %25 = load i8*, i8** %7, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %15
  br label %46

30:                                               ; preds = %24
  %31 = load i8*, i8** %7, align 8
  %32 = call i64 @strlen(i8* %31)
  store i64 %32, i64* %8, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i8**, i8*** %5, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i64 @strncmp(i8* %33, i8* %35, i64 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %30
  %40 = load i64, i64* %8, align 8
  %41 = load i8**, i8*** %5, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 %40
  store i8* %43, i8** %41, align 8
  %44 = load %struct.uart_class*, %struct.uart_class** %6, align 8
  store %struct.uart_class* %44, %struct.uart_class** %3, align 8
  br label %51

45:                                               ; preds = %30
  br label %46

46:                                               ; preds = %45, %29
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %9, align 8
  br label %10

49:                                               ; preds = %10
  %50 = load %struct.uart_class*, %struct.uart_class** %4, align 8
  store %struct.uart_class* %50, %struct.uart_class** %3, align 8
  br label %51

51:                                               ; preds = %49, %39
  %52 = load %struct.uart_class*, %struct.uart_class** %3, align 8
  ret %struct.uart_class* %52
}

declare dso_local i64 @nitems(%struct.uart_class**) #1

declare dso_local i8* @uart_getname(%struct.uart_class*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
