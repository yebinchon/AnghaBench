; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/label/extr_g_label.c_g_label_mangle_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/label/extr_g_label.c_g_label_mangle_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }

@SBUF_FIXEDLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%%%02X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @g_label_mangle_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_label_mangle_name(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sbuf*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i32, i32* @SBUF_FIXEDLEN, align 4
  %9 = call %struct.sbuf* @sbuf_new(i32* null, i32* null, i64 %7, i32 %8)
  store %struct.sbuf* %9, %struct.sbuf** %5, align 8
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %6, align 8
  br label %11

11:                                               ; preds = %47, %2
  %12 = load i8*, i8** %6, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %11
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* %17, align 1
  %19 = call i32 @isprint(i8 signext %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %16
  %22 = load i8*, i8** %6, align 8
  %23 = load i8, i8* %22, align 1
  %24 = call i64 @isspace(i8 signext %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %21
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 34
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 37
  br i1 %35, label %36, label %41

36:                                               ; preds = %31, %26, %21, %16
  %37 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i8, i8* %38, align 1
  %40 = call i32 @sbuf_printf(%struct.sbuf* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8 signext %39)
  br label %46

41:                                               ; preds = %31
  %42 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i8, i8* %43, align 1
  %45 = call i32 @sbuf_putc(%struct.sbuf* %42, i8 signext %44)
  br label %46

46:                                               ; preds = %41, %36
  br label %47

47:                                               ; preds = %46
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %6, align 8
  br label %11

50:                                               ; preds = %11
  %51 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %52 = call i64 @sbuf_finish(%struct.sbuf* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i8*, i8** %3, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  store i8 0, i8* %56, align 1
  br label %63

57:                                               ; preds = %50
  %58 = load i8*, i8** %3, align 8
  %59 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %60 = call i32 @sbuf_data(%struct.sbuf* %59)
  %61 = load i64, i64* %4, align 8
  %62 = call i32 @strlcpy(i8* %58, i32 %60, i64 %61)
  br label %63

63:                                               ; preds = %57, %54
  %64 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %65 = call i32 @sbuf_delete(%struct.sbuf* %64)
  ret void
}

declare dso_local %struct.sbuf* @sbuf_new(i32*, i32*, i64, i32) #1

declare dso_local i32 @isprint(i8 signext) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i8 signext) #1

declare dso_local i32 @sbuf_putc(%struct.sbuf*, i8 signext) #1

declare dso_local i64 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i32 @strlcpy(i8*, i32, i64) #1

declare dso_local i32 @sbuf_data(%struct.sbuf*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
