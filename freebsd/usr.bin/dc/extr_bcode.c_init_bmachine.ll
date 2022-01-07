; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_init_bmachine.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_init_bmachine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32*, i32*, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@bmachine = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@REG_ARRAY_SIZE_BIG = common dso_local global i32 0, align 4
@REG_ARRAY_SIZE_SMALL = common dso_local global i32 0, align 4
@UCHAR_MAX = common dso_local global i32 0, align 4
@unknown = common dso_local global i32 0, align 4
@jump_table = common dso_local global i32* null, align 8
@JUMP_TABLE_DATA_SIZE = common dso_local global i32 0, align 4
@jump_table_data = common dso_local global %struct.TYPE_3__* null, align 8
@READSTACK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_bmachine(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bmachine, i32 0, i32 0), align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bmachine, i32 0, i32 0), align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @REG_ARRAY_SIZE_BIG, align 4
  br label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @REG_ARRAY_SIZE_SMALL, align 4
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bmachine, i32 0, i32 1), align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bmachine, i32 0, i32 1), align 4
  %14 = call i8* @calloc(i32 %13, i32 4)
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bmachine, i32 0, i32 6), align 8
  %16 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bmachine, i32 0, i32 6), align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = call i32 @err(i32 1, i32* null)
  br label %20

20:                                               ; preds = %18, %11
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %31, %20
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @UCHAR_MAX, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load i32, i32* @unknown, align 4
  %27 = load i32*, i32** @jump_table, align 8
  %28 = load i32, i32* %3, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %26, i32* %30, align 4
  br label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %3, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %21

34:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %54, %34
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @JUMP_TABLE_DATA_SIZE, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %35
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @jump_table_data, align 8
  %41 = load i32, i32* %3, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** @jump_table, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @jump_table_data, align 8
  %48 = load i32, i32* %3, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %46, i64 %52
  store i32 %45, i32* %53, align 4
  br label %54

54:                                               ; preds = %39
  %55 = load i32, i32* %3, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %35

57:                                               ; preds = %35
  %58 = call i32 @stack_init(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bmachine, i32 0, i32 7))
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %69, %57
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bmachine, i32 0, i32 1), align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bmachine, i32 0, i32 6), align 8
  %65 = load i32, i32* %3, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = call i32 @stack_init(i32* %67)
  br label %69

69:                                               ; preds = %63
  %70 = load i32, i32* %3, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %59

72:                                               ; preds = %59
  %73 = load i32, i32* @READSTACK_SIZE, align 4
  store i32 %73, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bmachine, i32 0, i32 2), align 8
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bmachine, i32 0, i32 2), align 8
  %75 = call i8* @calloc(i32 4, i32 %74)
  %76 = bitcast i8* %75 to i32*
  store i32* %76, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bmachine, i32 0, i32 5), align 8
  %77 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bmachine, i32 0, i32 5), align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = call i32 @err(i32 1, i32* null)
  br label %81

81:                                               ; preds = %79, %72
  store i32 10, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bmachine, i32 0, i32 4), align 8
  store i32 10, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bmachine, i32 0, i32 3), align 4
  ret void
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i32*) #1

declare dso_local i32 @stack_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
