; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_xform_esp.c_esp_hdrsiz.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_xform_esp.c_esp_hdrsiz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secasvar = type { i32, i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"SA with null xform\00", align 1
@SADB_X_EXT_OLD = common dso_local global i32 0, align 4
@EALG_MAX_BLOCK_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_hdrsiz(%struct.secasvar* %0) #0 {
  %2 = alloca %struct.secasvar*, align 8
  %3 = alloca i64, align 8
  store %struct.secasvar* %0, %struct.secasvar** %2, align 8
  %4 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %5 = icmp ne %struct.secasvar* %4, null
  br i1 %5, label %6, label %45

6:                                                ; preds = %1
  %7 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %8 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @IPSEC_ASSERT(i32 %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %14 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SADB_X_EXT_OLD, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  store i64 4, i64* %3, align 8
  br label %21

20:                                               ; preds = %6
  store i64 4, i64* %3, align 8
  br label %21

21:                                               ; preds = %20, %19
  %22 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %23 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 9
  %28 = load i64, i64* %3, align 8
  %29 = add i64 %28, %27
  store i64 %29, i64* %3, align 8
  %30 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %31 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %21
  %35 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %36 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %41 = call i64 @ah_hdrsiz(%struct.secasvar* %40)
  %42 = load i64, i64* %3, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %3, align 8
  br label %44

44:                                               ; preds = %39, %34, %21
  br label %51

45:                                               ; preds = %1
  %46 = load i32, i32* @EALG_MAX_BLOCK_LEN, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 4, %47
  %49 = add i64 %48, 9
  %50 = add i64 %49, 16
  store i64 %50, i64* %3, align 8
  br label %51

51:                                               ; preds = %45, %44
  %52 = load i64, i64* %3, align 8
  ret i64 %52
}

declare dso_local i32 @IPSEC_ASSERT(i32, i8*) #1

declare dso_local i64 @ah_hdrsiz(%struct.secasvar*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
