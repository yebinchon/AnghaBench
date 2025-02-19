; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/fortune/fortune/extr_fortune.c_fortlen.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/fortune/fortune/extr_fortune.c_fortlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@BUFSIZ = common dso_local global i32 0, align 4
@Fortfile = common dso_local global %struct.TYPE_4__* null, align 8
@STR_RANDOM = common dso_local global i32 0, align 4
@STR_ORDERED = common dso_local global i32 0, align 4
@Seekpts = common dso_local global i64* null, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@Fort_len = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @fortlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fortlen() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @BUFSIZ, align 4
  %5 = zext i32 %4 to i64
  %6 = call i8* @llvm.stacksave()
  store i8* %6, i8** %2, align 8
  %7 = alloca i8, i64 %5, align 16
  store i64 %5, i64* %3, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Fortfile, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @STR_RANDOM, align 4
  %13 = load i32, i32* @STR_ORDERED, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %0
  %18 = load i64*, i64** @Seekpts, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64*, i64** @Seekpts, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %1, align 4
  br label %61

26:                                               ; preds = %0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Fortfile, align 8
  %28 = call i32 @open_fp(%struct.TYPE_4__* %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Fortfile, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i64*, i64** @Seekpts, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @SEEK_SET, align 4
  %36 = call i32 @fseeko(i32 %31, i64 %34, i32 %35)
  store i32 0, i32* %1, align 4
  br label %37

37:                                               ; preds = %54, %26
  %38 = trunc i64 %5 to i32
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Fortfile, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32* @fgets(i8* %7, i32 %38, i32 %41)
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Fortfile, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @STR_ENDSTRING(i8* %7, i32 %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %44, %37
  %53 = phi i1 [ false, %37 ], [ %51, %44 ]
  br i1 %53, label %54, label %60

54:                                               ; preds = %52
  %55 = call i64 @strlen(i8* %7)
  %56 = load i32, i32* %1, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %1, align 4
  br label %37

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %17
  %62 = load i32, i32* %1, align 4
  store i32 %62, i32* @Fort_len, align 4
  %63 = load i32, i32* %1, align 4
  %64 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %64)
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @open_fp(%struct.TYPE_4__*) #2

declare dso_local i32 @fseeko(i32, i64, i32) #2

declare dso_local i32* @fgets(i8*, i32, i32) #2

declare dso_local i32 @STR_ENDSTRING(i8*, i32) #2

declare dso_local i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
