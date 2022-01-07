; ModuleID = '/home/carl/AnghaBench/freebsd/sys/teken/extr_teken.c_teken_get_sequence.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/teken/extr_teken.c_teken_get_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@TS_CONS25 = common dso_local global i32 0, align 4
@TS_CONS25KEYS = common dso_local global i32 0, align 4
@special_strings_cons25 = common dso_local global i8** null, align 8
@TS_CURSORKEYS = common dso_local global i32 0, align 4
@special_strings_ckeys = common dso_local global i8** null, align 8
@special_strings_normal = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @teken_get_sequence(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @TS_CONS25, align 4
  %10 = load i32, i32* @TS_CONS25KEYS, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %8, %11
  %13 = load i32, i32* @TS_CONS25, align 4
  %14 = load i32, i32* @TS_CONS25KEYS, align 4
  %15 = or i32 %13, %14
  %16 = icmp eq i32 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %63

18:                                               ; preds = %2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @TS_CONS25, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = icmp ult i64 %27, 1
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i8**, i8*** @special_strings_cons25, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %3, align 8
  br label %63

35:                                               ; preds = %25, %18
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @TS_CURSORKEYS, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %35
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = icmp ult i64 %44, 1
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i8**, i8*** @special_strings_ckeys, align 8
  %48 = load i32, i32* %5, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %3, align 8
  br label %63

52:                                               ; preds = %42, %35
  %53 = load i32, i32* %5, align 4
  %54 = zext i32 %53 to i64
  %55 = icmp ult i64 %54, 1
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i8**, i8*** @special_strings_normal, align 8
  %58 = load i32, i32* %5, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %3, align 8
  br label %63

62:                                               ; preds = %52
  store i8* null, i8** %3, align 8
  br label %63

63:                                               ; preds = %62, %56, %46, %29, %17
  %64 = load i8*, i8** %3, align 8
  ret i8* %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
