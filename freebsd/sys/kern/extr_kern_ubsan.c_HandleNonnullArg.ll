; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_ubsan.c_HandleNonnullArg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_ubsan.c_HandleNonnullArg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CNonNullArgData = type { %struct.TYPE_3__, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@LOCATION_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [109 x i8] c"UBSan: Undefined Behavior in %s, null pointer passed as argument %d, which is declared to never be null%s%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c", nonnull/_Nonnull specified in \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.CNonNullArgData*)* @HandleNonnullArg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HandleNonnullArg(i32 %0, %struct.CNonNullArgData* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.CNonNullArgData*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.CNonNullArgData* %1, %struct.CNonNullArgData** %4, align 8
  %9 = load i32, i32* @LOCATION_MAXLEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32, i32* @LOCATION_MAXLEN, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %16 = load %struct.CNonNullArgData*, %struct.CNonNullArgData** %4, align 8
  %17 = call i32 @ASSERT(%struct.CNonNullArgData* %16)
  %18 = load %struct.CNonNullArgData*, %struct.CNonNullArgData** %4, align 8
  %19 = getelementptr inbounds %struct.CNonNullArgData, %struct.CNonNullArgData* %18, i32 0, i32 2
  %20 = call i64 @isAlreadyReported(%struct.TYPE_3__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %53

23:                                               ; preds = %2
  %24 = load i32, i32* @LOCATION_MAXLEN, align 4
  %25 = load %struct.CNonNullArgData*, %struct.CNonNullArgData** %4, align 8
  %26 = getelementptr inbounds %struct.CNonNullArgData, %struct.CNonNullArgData* %25, i32 0, i32 2
  %27 = call i32 @DeserializeLocation(i8* %12, i32 %24, %struct.TYPE_3__* %26)
  %28 = load %struct.CNonNullArgData*, %struct.CNonNullArgData** %4, align 8
  %29 = getelementptr inbounds %struct.CNonNullArgData, %struct.CNonNullArgData* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  %34 = load i32, i32* @LOCATION_MAXLEN, align 4
  %35 = load %struct.CNonNullArgData*, %struct.CNonNullArgData** %4, align 8
  %36 = getelementptr inbounds %struct.CNonNullArgData, %struct.CNonNullArgData* %35, i32 0, i32 0
  %37 = call i32 @DeserializeLocation(i8* %15, i32 %34, %struct.TYPE_3__* %36)
  br label %40

38:                                               ; preds = %23
  %39 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 0, i8* %39, align 16
  br label %40

40:                                               ; preds = %38, %33
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.CNonNullArgData*, %struct.CNonNullArgData** %4, align 8
  %43 = getelementptr inbounds %struct.CNonNullArgData, %struct.CNonNullArgData* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.CNonNullArgData*, %struct.CNonNullArgData** %4, align 8
  %46 = getelementptr inbounds %struct.CNonNullArgData, %struct.CNonNullArgData* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %52 = call i32 @Report(i32 %41, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %44, i8* %51, i8* %15)
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %40, %22
  %54 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load i32, i32* %8, align 4
  switch i32 %55, label %57 [
    i32 0, label %56
    i32 1, label %56
  ]

56:                                               ; preds = %53, %53
  ret void

57:                                               ; preds = %53
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ASSERT(%struct.CNonNullArgData*) #2

declare dso_local i64 @isAlreadyReported(%struct.TYPE_3__*) #2

declare dso_local i32 @DeserializeLocation(i8*, i32, %struct.TYPE_3__*) #2

declare dso_local i32 @Report(i32, i8*, i8*, i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
