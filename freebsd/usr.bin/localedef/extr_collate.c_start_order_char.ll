; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_collate.c_start_order_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_collate.c_start_order_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@T_CHAR = common dso_local global i32 0, align 4
@lastorder = common dso_local global i64 0, align 8
@T_ELLIPSIS = common dso_local global i64 0, align 8
@ellipsis_start = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"malformed range!\00", align 1
@INTERR = common dso_local global i32 0, align 4
@NUM_WT = common dso_local global i32 0, align 4
@ellipsis_weights = common dso_local global i32* null, align 8
@nextpri = common dso_local global i32 0, align 4
@RESOLVED = common dso_local global i32 0, align 4
@REFER = common dso_local global i32 0, align 4
@currchar = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_order_char(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i32, i32* @T_CHAR, align 4
  %8 = call i32 @start_order(i32 %7)
  %9 = load i64, i64* @lastorder, align 8
  %10 = load i64, i64* @T_ELLIPSIS, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %88

12:                                               ; preds = %1
  %13 = load i64, i64* %2, align 8
  %14 = load i64, i64* @ellipsis_start, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %91

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %82, %19
  %21 = load i64, i64* @ellipsis_start, align 8
  %22 = load i64, i64* %2, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %87

24:                                               ; preds = %20
  %25 = load i64, i64* @ellipsis_start, align 8
  %26 = call i8* @get_collchar(i64 %25, i32 1)
  %27 = bitcast i8* %26 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %3, align 8
  %28 = icmp eq %struct.TYPE_5__* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @INTERR, align 4
  br label %91

31:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %79, %31
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @NUM_WT, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %82

36:                                               ; preds = %32
  %37 = load i32*, i32** @ellipsis_weights, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %4, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %52, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %4, align 4
  %45 = call %struct.TYPE_4__* @get_pri(i32 %44)
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %6, align 8
  %46 = icmp eq %struct.TYPE_4__* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %63

52:                                               ; preds = %47, %43, %36
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @nextpri, align 4
  %61 = load i32, i32* @RESOLVED, align 4
  %62 = call i32 @set_pri(i32 %59, i32 %60, i32 %61)
  br label %74

63:                                               ; preds = %47
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @REFER, align 4
  %73 = call i32 @set_pri(i32 %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %63, %52
  %75 = load i32*, i32** @ellipsis_weights, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 0, i32* %78, align 4
  br label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %32

82:                                               ; preds = %32
  %83 = load i64, i64* @ellipsis_start, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* @ellipsis_start, align 8
  %85 = load i32, i32* @nextpri, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* @nextpri, align 4
  br label %20

87:                                               ; preds = %20
  br label %88

88:                                               ; preds = %87, %1
  %89 = load i64, i64* %2, align 8
  %90 = call i8* @get_collchar(i64 %89, i32 1)
  store i8* %90, i8** @currchar, align 8
  br label %91

91:                                               ; preds = %88, %29, %16
  ret void
}

declare dso_local i32 @start_order(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i8* @get_collchar(i64, i32) #1

declare dso_local %struct.TYPE_4__* @get_pri(i32) #1

declare dso_local i32 @set_pri(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
