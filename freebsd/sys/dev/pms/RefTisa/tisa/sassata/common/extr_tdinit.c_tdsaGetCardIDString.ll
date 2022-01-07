; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pms/RefTisa/tisa/sassata/common/extr_tdinit.c_tdsaGetCardIDString.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pms/RefTisa/tisa/sassata/common/extr_tdinit.c_tdsaGetCardIDString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@tiError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"tdsaGetCardIDString: start\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"tdsaGetCardIDString: thisCardID 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"tdGetCardIDString: No more CardIDs available\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"CardNum%d\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"tdsaGetCardIDString: CardNum is %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"tdsaGetCardIDString: tdsaAllShared->CardIDString is %s\0A\00", align 1
@tiSuccess = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tdsaGetCardIDString(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [10 x i8], align 1
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %3, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = bitcast i32* %13 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %4, align 8
  %15 = load i32, i32* @tiError, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = call i32 @tdsaGetCardID(%struct.TYPE_6__* %16)
  store i32 %17, i32* %6, align 4
  %18 = call i32 @TI_DBG3(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @TI_DBG3(i8* %21)
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = call i32 @TI_DBG1(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32, i32* @tiError, align 4
  store i32 %27, i32* %5, align 4
  br label %49

28:                                               ; preds = %1
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @osti_sprintf(i8* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  %35 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %36 = call i32 @TI_DBG3(i8* %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %41 = call i32 @osti_strcpy(i32 %39, i8* %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 @TI_DBG3(i8* %46)
  %48 = load i32, i32* @tiSuccess, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %28, %25
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @tdsaGetCardID(%struct.TYPE_6__*) #1

declare dso_local i32 @TI_DBG3(i8*) #1

declare dso_local i32 @TI_DBG1(i8*) #1

declare dso_local i32 @osti_sprintf(i8*, i8*, i32) #1

declare dso_local i32 @osti_strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
